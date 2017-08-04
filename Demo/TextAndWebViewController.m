//
//  TextAndWebViewController.m
//  Demo
//
//  Created by Sam Meech-Ward on 2017-08-04.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "TextAndWebViewController.h"
#import <WebKit/WebKit.h>

@interface TextAndWebViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (nonatomic, strong) WKWebView *webView;

@end

@implementation TextAndWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.textField.delegate = self;
    
    self.webView = [[WKWebView alloc] init];
    
    
    self.webView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.webView];
    [self.webView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active = YES;
    [self.webView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active = YES;
    [self.webView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active = YES;
    [self.webView.topAnchor constraintEqualToAnchor:self.textField.bottomAnchor constant:20.0].active = YES;
    
    
//    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:@"https://twitter.com/"]];
//    [self.webView loadRequest:urlRequest];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)backgroundTapped:(id)sender {
    
    NSLog(@"%@", self.textView.text);
    
    [self.view endEditing:YES];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    
    NSString *text = textField.text;
    
    // Validate that this is a web address.
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:text]];
    [self.webView loadRequest:urlRequest];
    
    
    return YES;
}

@end
