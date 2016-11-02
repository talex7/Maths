//
//  QuestionManager.h
//  Maths
//
//  Created by Thomas Alexanian on 2016-11-02.
//  Copyright © 2016 Thomas Alexanian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionManager : NSObject

@property NSMutableArray *questions;
@property NSTimeInterval totalTime;

-(NSString*)timeOutput;

@end
