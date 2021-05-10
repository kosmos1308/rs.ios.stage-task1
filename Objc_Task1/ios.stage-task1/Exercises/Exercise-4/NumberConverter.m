#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    NSMutableArray *array = [[NSMutableArray alloc]init];
    
    NSMutableArray *arr = [[NSMutableArray alloc] init];
        
        if (number == nil) {
            return arr;
        }
        
        if (number.intValue < 0) {
            number = [NSNumber numberWithInt: -number.intValue];;
        }
        
        NSString *numberAsStr = number.stringValue;
        NSUInteger length = numberAsStr.length;
        
        for (int i = 0; i < length; i++) {
            NSString *letter = [
                NSString stringWithFormat: @"%c",
                [numberAsStr characterAtIndex:length - (i+1)]
            ];
            [arr insertObject: letter atIndex: i];
        }
        
        return arr;

}

@end
