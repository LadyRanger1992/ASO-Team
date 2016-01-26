//
//  VC_NavController.m
//  AlphaBet
//
//  Created by admin on 1/21/16.
//  Copyright © 2016 LucChelsea. All rights reserved.
//

#import "VC_NavController.h"

@interface VC_NavController ()

@end

@implementation VC_NavController

+ (VC_NavController*)sharedInstance
{
    // bieen co dinh
    static VC_NavController *_sharedInstance = nil;
    
    // su dung 1 lan duy nhat trong vong doi cua App
    static dispatch_once_t oncePredicate;
    
    // khoi tao bien moi nhu bt
    dispatch_once(&oncePredicate, ^{
        _sharedInstance = [[VC_NavController alloc] init];
    });
    return _sharedInstance;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

@end
