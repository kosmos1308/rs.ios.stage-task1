//
//  OddNumbers.m
//  ios.stage-task1
//
//  Created by Alex Tsybulko on 4.05.21.
//

#import <Foundation/Foundation.h>
#import "OddNumbers.h"


//void test1(void) {
//    nsl
//}


@implementation OddNumbers

- (NSInteger)oddNumbers:(NSArray <NSNumber *> *)array {
    

    //test 1
    if (array == nil) {
        return 0;
    }
    
    //test 2-6
    NSInteger count = 0;
    if (array != nil) {
        for (int i = 0; i < [array count]; i++) {
            if ([[array objectAtIndex:i]intValue] % 2 != 0) {
                    count += 1;
                }
            }
        }
    return count;
    
//    for ( int i= 0; i<[array count]; i++) {
//        if [[array objectAtIndex: i] intValue] % 2 != 0 {
//            return array +1;
//        }
//    }
    
    

//    NSInteger cnt = 0;
//    if (array != nil) {
//        for (NSNumber *myArrayElement in array) {
//            if ([[array objectAtIndex:myArrayElement]intValue] % 2 != 0) {
//                cnt += 1;
//            }
//        }
//    }
//
//    return cnt;
}

@end
