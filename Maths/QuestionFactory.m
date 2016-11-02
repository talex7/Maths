//
//  QuestionFactory.m
//  Maths
//
//  Created by Thomas Alexanian on 2016-11-02.
//  Copyright © 2016 Thomas Alexanian. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionSubClassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    }
    return self;
}

-(Question*)generateRandomQuestion {
    
    int type = arc4random_uniform(4);
    NSString *questionType = [NSString stringWithFormat:@"%@", self.questionSubClassNames[type]];
    
    return [[NSClassFromString(questionType) alloc]init];
    
    
}

@end
