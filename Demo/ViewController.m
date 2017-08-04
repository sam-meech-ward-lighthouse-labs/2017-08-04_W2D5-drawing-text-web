//
//  ViewController.m
//  Demo
//
//  Created by Sam Meech-Ward on 2017-08-04.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "ViewController.h"
#import "StarView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet StarView *starView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.starView.starColor = [UIColor yellowColor];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(screenTapped:)];
    [self.view addGestureRecognizer:tapGesture];
}

- (void)screenTapped:(id)sender {
    if ([self.starView.starColor isEqual:[UIColor yellowColor]]) {
        self.starView.starColor = [UIColor blackColor];
    } else {
        self.starView.starColor = [UIColor yellowColor];
    }
    
    // Redraw the star
    [self.starView setNeedsDisplay];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
