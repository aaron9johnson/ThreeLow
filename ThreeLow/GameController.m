//
//  GameController.m
//  ThreeLow
//
//  Created by Aaron Johnson on 2017-10-04.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

@implementation GameController
- (instancetype)init{
    self = [super init];
    if (self) {
        _dice = [NSMutableArray new];
        _heldDice = [NSMutableArray new];
        _highScore = 7;
        for(int i = 0; i < 5; i++){
            [_dice addObject:[Dice new]];
            [_heldDice addObject:@0];
        }
    }
    return self;
}
-(void)holdDie:(int)number{
    if([_heldDice[number]  isEqual: @1]){
        _heldDice[number] = @0;
    } else {
        _heldDice[number] = @1;
    }
}
-(void)roll{
    for(int i = 0; i < _dice.count; i++){
        if([_heldDice[i]  isEqual: @0]){
            [_dice[i] randomizeValue];
        }
    }
    _rolls = _rolls + 1;
}
-(void)resetDice{
    for(int i = 0; i < _dice.count; i++){
        _heldDice[i] = @0;
        [_dice[i] setMax];
    }
    _rolls = 0;
}
-(void)cheat{
    for(int i = 0; i < _dice.count; i++){
        if([_heldDice[i]  isEqual: @0]){
            [_dice[i] setMin];
        }
    }
}
-(int)score{
    int temp = 0;
    for(Dice *any in _dice){
        if(any.currentValue != 3){
            temp = temp + any.currentValue;
        }
    }
    if(temp < _highScore){
        _highScore = temp;
    }
    return temp;
}
-(NSString *)print{
    NSMutableString *temp = [NSMutableString new];
    for(int i = 0; i < _dice.count; i++){
        if([_heldDice[i]  isEqual: @1]){
            [temp appendString:[NSString stringWithFormat:@"[%@] ", [_dice[i] print]]];
        } else {
            [temp appendString:[NSString stringWithFormat:@"%@ ", [_dice[i] print]]];
        }
    }
    [temp appendString:[NSString stringWithFormat:@"Rolls: %d  ", _rolls]];
    [temp appendString:[NSString stringWithFormat:@"Score: %d  ", [self score]]];
    [temp appendString:[NSString stringWithFormat:@"High Score: %d", _highScore]];
    
    return temp;
}
@end
