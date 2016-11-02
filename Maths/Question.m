//
//  AdditionQuestion.m
//  Maths
//
//  Created by Thomas Alexanian on 2016-11-01.
//  Copyright © 2016 Thomas Alexanian. All rights reserved.
//

#import "Question.h"

@implementation Question

-(instancetype)init
{
    self = [super init];
    if (self) {
        _leftValue = arc4random_uniform(91) + 10;
        _rightValue = arc4random_uniform(91) + 10;
        _startTime = [NSDate date];
    }
    return self;
}

-(NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

-(NSTimeInterval)answerTime {
    return [_endTime timeIntervalSinceDate:_startTime];
}

-(void)generateQuestion {
    
}

@end
