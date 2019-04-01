#import "RomanTranslator.h"

@implementation RomanTranslator
// your code here
- (NSString *)arabicFromRoman:(NSString *)romanString {

    NSString*roman = romanString;
     NSArray*romanNumeralNumbers = @[@(1000u), @(900u), @(500u), @(400u), @(100u), @(90u), @(50u), @(40u), @(10u), @(9u), @(5u), @(4u), @(1u)];
     NSArray*romanNumeralValues = @[@"M", @"CM", @"D", @"CD", @"C", @"XC", @"L", @"XL", @"X", @"IX", @"V", @"IV", @"I"];
    
    if ([roman length] < 1) {
        [NSException raise:@"Invalid roman number" format:@"roman number %@ needs at least one charater", roman];
    }

    NSPredicate *romanPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES 'M{0,4}(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})'"];
    if (![romanPredicate evaluateWithObject:roman]) {
        [NSException raise:@"Invalid roman number" format:@"roman number %@ has an invalid format", roman];
    }

    NSUInteger previous = [[romanNumeralNumbers objectAtIndex:0u] unsignedIntegerValue];

    NSUInteger decimalNumberSum = 0u;
    for (NSUInteger index = 0u; index < [roman length]; index++) {
        NSString *romanNumeralValue = [roman substringWithRange:NSMakeRange(index, 1u)];

        NSUInteger romanNumeralIndex = [romanNumeralValues indexOfObject:romanNumeralValue];
        if (romanNumeralIndex == NSNotFound) {
            break;
        }

        NSUInteger romanNumeralNumber = [[romanNumeralNumbers objectAtIndex:romanNumeralIndex] unsignedIntegerValue];
        decimalNumberSum += romanNumeralNumber;
        if (previous < romanNumeralNumber) {
            decimalNumberSum -= 2 * previous;
        }
        previous = romanNumeralNumber;
    }

     return [NSString stringWithFormat:@"%lu", (unsigned long)decimalNumberSum];
    
}


- (NSString *)romanFromArabic:(NSString *)arabicString {
    
   NSArray*romanNumeralNumbers = @[@(1000u), @(900u), @(500u), @(400u), @(100u), @(90u), @(50u), @(40u), @(10u), @(9u), @(5u), @(4u), @(1u)];
    NSArray*romanNumeralValues = @[@"M", @"CM", @"D", @"CD", @"C", @"XC", @"L", @"XL", @"X", @"IX", @"V", @"IV", @"I"];
    
   int arabic = [arabicString intValue];
    if (arabic <= 0u) {
        [NSException raise:@"Invalid decimal value" format:@"arabic value %d should be greater than 0", arabic];
    }
    
    if (arabic > 4000u) {
        [NSException raise:@"Invalid decimal value" format:@"arabic value %d should be smaller or equals to 4000", arabic];
    }
    
    NSMutableArray *result = [NSMutableArray array];
    for (NSUInteger index = 0u; index < [romanNumeralNumbers count]; index++) {
        NSUInteger romanNumeralInteger = [[romanNumeralNumbers objectAtIndex:index] integerValue];
        
        while (arabic >= romanNumeralInteger) {
            NSString *romanNumeralValue = [romanNumeralValues objectAtIndex:index];
            [result addObject:romanNumeralValue];
            arabic -= romanNumeralInteger;
        }
    }
    
    return [result componentsJoinedByString:@""];
}


@end












