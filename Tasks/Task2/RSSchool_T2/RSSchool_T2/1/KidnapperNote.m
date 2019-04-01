#import "KidnapperNote.h"

@implementation KidnapperNote

-(BOOL)checkMagazine:(NSString *)magaine note:(NSString *)note{

    NSMutableArray *thesame = [NSMutableArray arrayWithObjects:magaine,nil];

    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF contains[c] %@",note]; 
    NSArray *results = [thesame filteredArrayUsingPredicate:predicate];
    if([results count] == 0){
        NSLog(@"%@", @"В журнале нету некоторых букв");
        return NO;
    }
    else
    {
        NSLog(@"В журнале есть все буквы");
        return YES;
    }
    
}
@end
