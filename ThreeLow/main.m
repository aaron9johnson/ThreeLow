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
            [newDie randomizeValue];
            [dice addObject:newDie];
        }
        NSLog(@"%@", dice);
    }
    return 0;
}
