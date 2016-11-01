//
//  ScoreKeeper.m
//  Maths
//
//  Created by Thomas Alexanian on 2016-11-01.
//  Copyright © 2016 Thomas Alexanian. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(void)displayScore {
    
    double percentRight = ((float)self.right / ((float)self.right + (float)self.wrong)) * 100;
    NSLog(@"score: %ld right, %ld wrong ---- %.02f%%\n", self.right, self.wrong, percentRight);
    
}

@end
