//
//  QuestionFactory.h
//  Maths
//
//  Created by Thomas Alexanian on 2016-11-02.
//  Copyright © 2016 Thomas Alexanian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

@property NSArray *questionSubClassNames;

-(Question*)generateRandomQuestion;

@end
