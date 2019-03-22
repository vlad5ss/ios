#import "Pangrams.h"

@implementation Pangrams

// Complete the pangrams function below.
- (BOOL)pangrams:(NSString *)string {
    NSString *stringAlbhabets = @"abcdefghijklmnopqrstuvwxyz";
    
    NSMutableSet *firstSet = [[NSMutableSet alloc] init];
    NSMutableSet *secondSet = [[NSMutableSet alloc] init];
    
    for (int i = 0; i < string.length; i++)
    {
        [secondSet addObject:@([[string lowercaseString] characterAtIndex:i])];
    }
    for (int i = 0; i < stringAlbhabets.length; i++)
    {
        [firstSet addObject:@([[stringAlbhabets lowercaseString] characterAtIndex:i])];
    }
    
    if ([firstSet isSubsetOfSet:secondSet])
    {
        NSLog(@"yes it's a panagram");
        return YES;
    }
    else
    {
        NSLog(@"no it's a not panagram");
        return NO;
    }
}

@end
