//
//  main.m
//  Maths
//
//  Created by Thomas Alexanian on 2016-11-01.
//  Copyright © 2016 Thomas Alexanian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"


int main(int argc, const char * argv[]) {
    
    NSLog(@"Welcome to Maths!!! Type 'quit' at any time to stop the game. Here we go....\n");
    
    while (YES) {
        
        char answer[255];
        NSCharacterSet *charSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
        
        AdditionQuestion *q1 = [[AdditionQuestion alloc] init];
        NSLog(@"%@\n", q1.question);
        
        
        fgets(answer, 256, stdin);
        NSString *result = [NSString stringWithCString:answer encoding:NSUTF8StringEncoding];
        result = [result stringByTrimmingCharactersInSet:charSet];
        
        if ([result isEqualToString:@"quit"]) {
            
            break;
            
        } else if ([result intValue] == q1.answer) {
            
            NSLog(@"Right!");
            
        } else
            
            NSLog(@"Wrong!");
        
    }
    
    return 0;
}
