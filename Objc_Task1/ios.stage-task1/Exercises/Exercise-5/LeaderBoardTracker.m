#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    
    if (playerArray.count == 0) {
            return @[];
        }

        NSMutableArray *myMutableArray = [[NSMutableArray alloc]init];
        if (rankedArray.count == 0) {
            for(int i=0; i<[playerArray count]; i++) {
                [myMutableArray insertObject:@(1) atIndex:i];

            }
            return myMutableArray;
        }

        return @[@1];
    //return @[];
}

@end
