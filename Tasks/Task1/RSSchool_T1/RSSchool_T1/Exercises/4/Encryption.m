#import "Encryption.h"

@implementation Encryption

// Complete the encryption function below.
- (NSString *)encryption:(NSString *)string {
    NSString*name =@"kldfhlkashfjkasfh";
    int len=(int)name.length;
    NSLog(@"%.d",len);
    int lb = (int)sqrt(1*len);
    int ub = (int)ceil(sqrt(1*len));
    NSInteger foo = INT_MAX;
    NSLog(@"foo: %li", foo);
    int r = 0, c = 0;
    for ( int row = lb; row <= ub; row++) {
        for ( int col = row; col <= ub; col++ ) {

            
            
        }
        
    }
    
    
    return @"";
}

@end
