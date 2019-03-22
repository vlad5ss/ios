#import "Diagonal.h"

@implementation Diagonal

// Complete the diagonalDifference function below.
- (NSNumber *) diagonalDifference:(NSArray *)array {
    NSArray *a = array[0];
    NSUInteger cols = a.count;
    NSUInteger d1=0;
    NSUInteger d2=0;
    for(int i=0; i<cols; i++)
    {
        for(int j=0; j<cols; j++)
        {
            //finding sum of primary diagonal
            if (i==j) {
                d1 +=  [[[array objectAtIndex:0] objectAtIndex:0] intValue];
            }
            // finding sum of secondary diagonal
            if (i == cols - j - 1) {
                d2 += [[[array objectAtIndex:0] objectAtIndex:0] intValue];
            }
        }
        
    }
    
    return @(ABS(d1-d2));
}

@end
