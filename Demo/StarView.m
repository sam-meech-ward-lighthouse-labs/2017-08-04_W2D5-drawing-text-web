//
//  StarView.m
//  Demo
//
//  Created by Sam Meech-Ward on 2017-08-04.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "StarView.h"

@implementation StarView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    UIBezierPath* starPath = [UIBezierPath bezierPath];
    [starPath moveToPoint: CGPointMake(120, 0)];
    [starPath addLineToPoint: CGPointMake(146.03, 65.94)];
    [starPath addLineToPoint: CGPointMake(213.82, 45.18)];
    [starPath addLineToPoint: CGPointMake(178.5, 106.65)];
    [starPath addLineToPoint: CGPointMake(236.99, 146.7)];
    [starPath addLineToPoint: CGPointMake(166.91, 157.41)];
    [starPath addLineToPoint: CGPointMake(172.07, 228.12)];
    [starPath addLineToPoint: CGPointMake(120, 180)];
    [starPath addLineToPoint: CGPointMake(67.93, 228.12)];
    [starPath addLineToPoint: CGPointMake(73.09, 157.41)];
    [starPath addLineToPoint: CGPointMake(3.01, 146.7)];
    [starPath addLineToPoint: CGPointMake(61.5, 106.65)];
    [starPath addLineToPoint: CGPointMake(26.18, 45.18)];
    [starPath addLineToPoint: CGPointMake(93.97, 65.94)];
    [starPath closePath];
    
    [self.starColor setFill];
    
    [starPath fill];
}
 

@end
