//
//  AdditionQuestion.m
//  Maths
//
//  Created by Thomas Alexanian on 2016-11-02.
//  Copyright © 2016 Thomas Alexanian. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion {
    self.question = [NSString stringWithFormat:@"What is %ld + %ld?", (long)self.leftValue, (long)self.rightValue];
    self.answer = self.leftValue + self.rightValue;
}

@end
