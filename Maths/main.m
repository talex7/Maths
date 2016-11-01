//
//  main.m
//  Maths
//
//  Created by Thomas Alexanian on 2016-11-01.
//  Copyright © 2016 Thomas Alexanian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"


int main(int argc, const char * argv[]) {
    
    ScoreKeeper *score = [[ScoreKeeper alloc] init];
    
    NSString *quit = @"quit";
    NSLog(@"Welcome to Maths!!! Type 'quit' at any time to stop the game. Here we go....\n");
    
    while (YES) {
  
        AdditionQuestion *q1 = [[AdditionQuestion alloc] init];
        NSLog(@"%@\n", q1.question);

        NSString *convertedResult = [InputHandler convertInput];
        
        if ([convertedResult isEqualToString:quit]) {
            
            break;
            
        } else if ([convertedResult intValue] == q1.answer) {
            
            NSLog(@"Right!");
            score.right +=1;
            [score displayScore];
            
        } else {
            NSLog(@"Wrong!");
            score.wrong +=1;
            [score displayScore];
        }
        
    }
    
    return 0;
}
