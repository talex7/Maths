//
//  AdditionQuestion.m
//  Maths
//
//  Created by Thomas Alexanian on 2016-11-01.
//  Copyright © 2016 Thomas Alexanian. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSInteger num1 = arc4random_uniform(91) + 10;
        NSInteger num2 = arc4random_uniform(91) + 10;
        _question= [NSString stringWithFormat:@"What is %d + %d?", num1, num2];
        _answer = num1 + num2;
    }
    return self;
}

@end
