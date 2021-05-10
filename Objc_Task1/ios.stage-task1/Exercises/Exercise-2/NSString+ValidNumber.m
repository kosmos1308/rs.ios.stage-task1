#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
    
    NSUInteger lengthOfThisString = [self length];
    const char *massive = [self UTF8String];
    if ((!(massive[0] >= '0' && massive[0] <= '9') || massive[0] <= ' ') && lengthOfThisString == 0) {
        return NO;
    } else if ((massive[0] == '+' || massive[0] == '-') && lengthOfThisString != 1) {
        for (int i = 1; i < lengthOfThisString; i++) {
           if (!(massive[i] >= '0' && massive[i] <= '9'))
               return NO;
        }
        return YES;
        
    } else {
        for (int i = 0; i < lengthOfThisString; i++) {
            if (!(massive[i] >= '0' && massive[i] <= '9'))
                return NO;
        }
        return YES;
    }
}

@end
