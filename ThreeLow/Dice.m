//
//  Dice.m
//  ThreeLow
//
//  Created by Aaron Johnson on 2017-10-04.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import "Dice.h"

@implementation Dice

-(void)randomizeValue{
    _currentValue = arc4random_uniform(6) + 1;
}
-(void)setMax{
    _currentValue = 6;
}
-(void)setMin{
    _currentValue = 3;
}
-(NSString *)print{
    NSArray *diceImages = @[(@""), @"⚀", @"⚁", @"⚂", @"⚃", @"⚄", @"⚅"];
    return [NSString stringWithFormat:@"%@", diceImages[_currentValue]];
}
@end
