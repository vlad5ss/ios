#import "Encryption.h"

@implementation Encryption

// Complete the encryption function below.
//Not completed
- (NSString *)encryption:(NSString *)string {
    NSString*name =@"kldfhlkashfjkasfh";
    int len=(int)name.length;
    NSLog(@"%.d",len);
    int lb = (int)sqrt(1*len);
    int ub = (int)ceil(sqrt(1*len));
    int ans = INT_MAX;
    NSLog(@"max: %li", ans);
    int r = 0, c = 0;
    for ( int row = lb; row <= ub; row++) {
        for ( int col = row; col <= ub; col++ ) {
            if (row * col >= len && row * col < ans)
            {
                ans = row * col;
                r = row;
                c = col;
            }
            
            
        }
        
    }
    
    
    return @"";
}

@end
