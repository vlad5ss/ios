#import "SummArray.h"

@implementation SummArray

// Complete the summArray function below.
- (NSNumber *)summArray:(NSArray *)array {

    
    float sum = 0.0f;
    
    for (int i = 0; i < [array count]; i++) {
        NSNumber *number = array[i];
        sum = sum + [number intValue];
    }
  
    //     return @(NSLog(@"sum = %.2f", sum));
    return @(sum);
}

@end
