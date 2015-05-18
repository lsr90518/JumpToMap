//
//  ViewController.m
//  JumpMapTest
//
//  Created by 劉 松然 on 2015/05/18.
//  Copyright (c) 2015年 lsr. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)mapmap:(id)sender {
    NSLog(@"okok");
    // Where is Apple on the map anyway?
    NSString* addressText = @"東京都 世田谷区 下馬 3丁目38番4号";
    // URL encode the spaces
    addressText =  [addressText stringByAddingPercentEscapesUsingEncoding: NSUTF8StringEncoding];
    
    //apple map
    NSString* urlText = [NSString stringWithFormat:@"http://maps.apple.com/maps?q=%@",addressText];
    
    //google map
    // NSString* urlText = [NSString stringWithFormat:@"http://maps.google.com/maps?q=%@", addressText];
    
    
    // lets throw this text on the log so we can view the url in the event we have an issue
    //    NSLog(urlText);
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlText]];
}

-(void) jumpToMap{
    

}

@end
