//
//  AdditionQuestion.h
//  Maths
//
//  Created by Thomas Alexanian on 2016-11-01.
//  Copyright © 2016 Thomas Alexanian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property NSString *question;
@property NSInteger answer;
@property NSDate *startTime;
@property NSDate *endTime;

-(NSTimeInterval)answerTime;


@end
