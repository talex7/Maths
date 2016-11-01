//
//  InputHandler.m
//  Maths
//
//  Created by Thomas Alexanian on 2016-11-01.
//  Copyright © 2016 Thomas Alexanian. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+(NSString*)convertInput {
    
    char answer[255];
    NSCharacterSet *charSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    fgets(answer, 256, stdin);
    NSString *result = [NSString stringWithCString:answer encoding:NSUTF8StringEncoding];
    result = [result stringByTrimmingCharactersInSet:charSet];
    return result;
}

@end
