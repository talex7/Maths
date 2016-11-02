//
//  main.m
//  Maths
//
//  Created by Thomas Alexanian on 2016-11-01.
//  Copyright © 2016 Thomas Alexanian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"


int main(int argc, const char * argv[]) {
    
    ScoreKeeper *score = [[ScoreKeeper alloc] init];
    QuestionManager *askedQs = [[QuestionManager alloc]init];
    QuestionFactory *qFact = [[QuestionFactory alloc]init];
    
    NSString *quit = @"quit";
    NSLog(@"Welcome to Maths!!! Type 'quit' at any time to stop the game. Here we go....\n");
    
    while (YES) {
  
        Question *q1 = [qFact generateRandomQuestion];
        [askedQs.questions addObject:q1];
        
        NSLog(@"%@\n", q1.question);

        NSString *convertedResult = [InputHandler convertInput];
        
        if ([convertedResult isEqualToString:quit]) {
            
            break;
            
        } else if ([convertedResult intValue] == q1.answer) {
            
            NSLog(@"Right!");
            score.right +=1;
            [score displayScore];
            NSLog(@"%@", [askedQs timeOutput]);
            
        } else {
            NSLog(@"Wrong!");
            score.wrong +=1;
            [score displayScore];
            NSLog(@"%@", [askedQs timeOutput]);
        }
        
    }
    
    return 0;
}
