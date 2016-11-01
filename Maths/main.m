//
//  main.m
//  Maths
//
//  Created by Thomas Alexanian on 2016-11-01.
//  Copyright © 2016 Thomas Alexanian. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
   
    while (YES) {
        
        char answer[255];
        NSCharacterSet *charSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
        
        printf("Enter a string:");
        fgets(answer, 256, stdin);
        NSString *result = [NSString stringWithCString:answer encoding:NSUTF8StringEncoding];
        result = [result stringByTrimmingCharactersInSet:charSet];
        
        NSLog(@"%@", result);
        
    }
    
    return 0;
}
