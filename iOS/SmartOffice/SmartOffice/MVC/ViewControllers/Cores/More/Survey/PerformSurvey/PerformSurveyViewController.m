//
//  PerformSurveyViewController.m
//  SmartOffice
//
//  Created by Vu Van Tiep on 4/17/17.
//  Copyright © 2017 Nguyen Thanh Huy. All rights reserved.
//

#import "PerformSurveyViewController.h"
#import "Reachability.h"
#import "Common.h"

@interface PerformSurveyViewController () <TTNS_BaseNavViewDelegate>

@property (nonatomic) BOOL wasLoaded;

@end

@implementation PerformSurveyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.errLoadWebView.hidden = YES;
    
    self.backTitle = LocalizedString(@"KMORE_PERFORM_SURVEY");
    if ([[Reachability reachabilityForInternetConnection] currentReachabilityStatus] == NotReachable) {
        [[Common shareInstance] showErrorHUDWithMessage:@"Mất kết nối mạng" inView: self.view];
    } else {
        NSURL *url = [NSURL URLWithString:_stringURL];
        NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
        [_webView loadRequest:urlRequest];
        _activityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
        _activityIndicator.frame = CGRectMake(0, 0, 160, 160);
        CGPoint superCenter = CGPointMake(CGRectGetMidX([self.webView bounds]), CGRectGetMidY([self.webView bounds]));
        [_activityIndicator setCenter:superCenter];
        [self.webView addSubview:_activityIndicator];
        self.webView.delegate = self;
        [self.activityIndicator startAnimating];
    }
    
}

#pragma mark - UIWebViewDelegate Protocol Methods

- (void)webViewDidStartLoad:(UIWebView *)webView{
    
//    [self.activityIndicator startAnimating];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView{
    
    [self.activityIndicator stopAnimating];
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    [self.activityIndicator stopAnimating];
    self.errLoadWebView.hidden = NO;
    self.errLoadWebView.text = @"Dữ liệu bị lỗi";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)didTapBackButton {
    [self popToMoreRoot];
}

- (IBAction)backAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
