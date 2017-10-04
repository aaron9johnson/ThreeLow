//
//  Dice.m
//  ThreeLow
//
//  Created by Aaron Johnson on 2017-10-04.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import "Dice.h"

@implementation Dice

-(int)randomizeValue{
    _currentValue = arc4random_uniform(6) + 1;
    return _currentValue;
}
-(NSString *)print{
    NSArray *diceImages = @[(@""), @"⚀", @"⚁", @"⚂", @"⚃", @"⚄", @"⚅"];
    return [NSString stringWithFormat:@"%@", diceImages[_currentValue]];
}
@end
