//
//  main.m
//  ThreeLow
//
//  Created by Aaron Johnson on 2017-10-04.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        
        NSMutableArray *dice = [NSMutableArray new];
        for(int i = 0; i < 5; i++){
            Dice *newDie = [Dice new];
            [dice addObject:newDie];
        }
        while(1){
            NSLog(@"command: ");
            char inputChars[255];
            fgets(inputChars, 255, stdin);
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            inputString = [inputString substringToIndex:(inputString.length-1)];
            
            if([inputString isEqualToString:@"roll"]){
                for(Dice *any in dice){
                    [any randomizeValue];
                }
            }
            NSLog(@"%@", dice);
        }
        
    }
    return 0;
}
