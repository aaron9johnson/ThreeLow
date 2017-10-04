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
        
        while(1){
            NSLog(@"command: ");
            char inputChars[255];
            fgets(inputChars, 255, stdin);
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            inputString = [inputString substringToIndex:(inputString.length-1)];
            
            if([inputString isEqualToString:@"roll"]){
                [game roll];
            } else {
                [game holdDie:(int)[inputString integerValue]];
            }
            NSLog(@"%@",[game print]);
        }
        
    }
    return 0;
}
