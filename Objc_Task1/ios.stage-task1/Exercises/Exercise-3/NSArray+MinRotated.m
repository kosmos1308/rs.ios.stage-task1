#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
    if (self.count == 0) {
            return nil;
        }
        NSNumber *min = self[0];
        
        for(NSNumber *val in self) {
            if(val.intValue < min.intValue) {
                min = val;
            }
        }
      
        return min;
}

@end
