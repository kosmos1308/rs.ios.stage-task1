#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    NSMutableArray *array = [[NSMutableArray alloc]init];
    
    if (number == nil) {
        return array;
    }
    
    NSString *NumberAsStr = number.stringValue;
    NSUInteger length = NumberAsStr.length;
    
    for (int i = 0; i < length; i++) {
        NSString *letter = [NSString stringWithFormat:@"%c", [NumberAsStr characterAtIndex:length - (i+1)]];
        NSNumber *digit = [NSNumber numberWithInt: letter.intValue];
        [array insertObject:digit atIndex:i];
    }
    
    NSArray * result = array;
    
    return result;
}

@end
