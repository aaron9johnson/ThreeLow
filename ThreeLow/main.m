//
//  main.m
//  ThreeLow
//
//  Created by Aaron Johnson on 2017-10-04.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        GameController *game = [GameController new];
        bool oneHoldPerRoll = true;
        NSLog(@"⚂ ⚂ ⚂ ThreeLow ⚂ ⚂ ⚂\n\nEnter roll to roll dice. The goal is to get the lowest score possible. Threes are worth 0 points (hence the name of the game), every other die is worth it's face value. Each roll you must choose to hold at least one of the dice, but you may choose to hold as many as five dice, do this by entering a number 1 though 5. If you have un-held dice, you must continue to roll until all five dice are held. Try to beat the high score! Reset by entering reset.");
        while(1){
            NSLog(@"Enter a command: ");
            char inputChars[255];
            fgets(inputChars, 255, stdin);
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            inputString = [inputString substringToIndex:(inputString.length-1)];
            
            if([inputString isEqualToString:@"roll"]){
                if(oneHoldPerRoll){
                    [game roll];
                    oneHoldPerRoll = false;
                } else {
                    NSLog(@"You must hold one die per roll.");
                }
            } else if([inputString isEqualToString:@"reset"]){
                [game resetDice];
                oneHoldPerRoll = true;
            } else if([inputString isEqualToString:@"1"] ||
                      [inputString isEqualToString:@"2"] ||
                      [inputString isEqualToString:@"3"] ||
                      [inputString isEqualToString:@"4"] ||
                      [inputString isEqualToString:@"5"]){
                [game holdDie:(int)[inputString integerValue] - 1];
                oneHoldPerRoll = true;
            } else if([inputString isEqualToString:@"rolll"]){
                [game cheat];
                oneHoldPerRoll = false;
            } else {
                NSLog(@"Invalid command.");
            }
            NSLog(@"%@",[game print]);
        }
        
    }
    return 0;
}
