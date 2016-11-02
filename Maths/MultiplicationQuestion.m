//
//  MultiplicationQuestion.m
//  Maths
//
//  Created by Thomas Alexanian on 2016-11-02.
//  Copyright © 2016 Thomas Alexanian. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion {
    super.question = [NSString stringWithFormat:@"What is %ld * %ld?", (long)self.leftValue, (long)self.rightValue];
    super.answer = self.leftValue * self.rightValue;
}


@end
