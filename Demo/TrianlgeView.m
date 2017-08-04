//
//  TrianlgeView.m
//  Demo
//
//  Created by Sam Meech-Ward on 2017-08-04.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "TrianlgeView.h"

@implementation TrianlgeView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // The first time this gets called, rect will be the same size as the view.
    // Drawing code
    
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(240.0/2.0, 0)];
    [path addLineToPoint:CGPointMake(240.0, 240.0)];
    [path addLineToPoint:CGPointMake(0, 240.0)];
    [path closePath];
    
    [[UIColor blueColor] setFill];
    [[UIColor greenColor] setStroke];
    
    [path fill];
    [path setLineWidth:10.0];
    [path stroke];
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextAddEllipseInRect(context, CGRectMake(0.0, 0.0, 240.0, 240.0));
    
//    CGContextMoveToPoint(context, 240.0/2.0, 0);
//    CGContextAddLineToPoint(context, 240.0, 240.0);
//    CGContextAddLineToPoint(context, 0, 240.0);
//    CGContextAddLineToPoint(context, 240.0/2.0, 0);
    
    CGContextSetFillColorWithColor(context, [UIColor magentaColor].CGColor);
    
    CGContextFillPath(context);
}
 

@end
