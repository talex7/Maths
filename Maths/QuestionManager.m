//
//  QuestionManager.m
//  Maths
//
//  Created by Thomas Alexanian on 2016-11-02.
//  Copyright © 2016 Thomas Alexanian. All rights reserved.
//

#import "QuestionManager.h"
#import "AdditionQuestion.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc]init];
    }
    return self;
}

-(NSString*)timeOutput {
    self.totalTime = 0;
    for (AdditionQuestion* q in self.questions) {
        self.totalTime += [q answerTime];
    }
    
    int avgTime = self.totalTime / self.questions.count;
    int totalTime = self.totalTime;
    
    NSString *timeData = [NSString stringWithFormat:@"total time: %ds, average time: %ds", totalTime, avgTime];
    
    return timeData;
}


@end
