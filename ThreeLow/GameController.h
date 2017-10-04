//
//  GameController.h
//  ThreeLow
//
//  Created by Aaron Johnson on 2017-10-04.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameController : NSObject
@property NSMutableArray *dice;
@property NSMutableArray *heldDice;
-(void)holdDie:(int)number;
-(void)roll;
-(NSString *)print;
@end
