//
//  Dice.h
//  ThreeLow
//
//  Created by Aaron Johnson on 2017-10-04.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject
@property int currentValue;
-(int)randomizeValue;
@end
