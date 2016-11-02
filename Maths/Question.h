//
//  AdditionQuestion.h
//  Maths
//
//  Created by Thomas Alexanian on 2016-11-01.
//  Copyright © 2016 Thomas Alexanian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property NSString *question;
@property NSInteger answer;
@property NSDate *startTime;
@property NSDate *endTime;
@property NSInteger leftValue;
@property NSInteger rightValue;

-(NSTimeInterval)answerTime;

-(void)generateQuestion;

@end
