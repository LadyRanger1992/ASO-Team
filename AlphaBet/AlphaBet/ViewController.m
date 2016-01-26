//
//  ViewController.m
//  AlphaBet
//
//  Created by LucChelsea on 1/11/16.
//  Copyright © 2016 LucChelsea. All rights reserved.
//

#import "ViewController.h"
#import "VC_NavController.h"
#import "VC_MainPagePlayer.h"
#import "AlphaBet-Swift.h"


@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"mainBG.jpg"]]];
    
    UIGestureRecognizer* tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dissmissKeybroad)];
    [self.view addGestureRecognizer:tap];
    
    hinhBG = [[UIImageView alloc]init];
    [self.view addSubview:hinhBG];
    [hinhBG setTranslatesAutoresizingMaskIntoConstraints:NO];
    [hinhBG setImage:[UIImage imageNamed:@"mainBG.jpg"]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:hinhBG
                                                          attribute:NSLayoutAttributeTop
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeTop
                                                         multiplier:1.0
                                                           constant:0.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:hinhBG
                                                          attribute:NSLayoutAttributeLeft
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeLeft
                                                         multiplier:1.0 constant:0.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:hinhBG
                                                          attribute:NSLayoutAttributeRight
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeRight
                                                         multiplier:1.0 constant:0.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:hinhBG
                                                          attribute:NSLayoutAttributeBottom
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeBottom
                                                         multiplier:1.0 constant:0.0]];
    
    // khong set frame cung (khong init with frame )i

    //self.view setTranslatesAutoresizingMaskIntoConstraints:NO]
    // phai duoc addSubview truoc khi duoc set auto Layout
    // gia tri khong bi chồng lấn lên nhau .
    
    //SpringButton* button = [[SpringButton alloc]init];
    SpringButton* button = [[SpringButton alloc]init];
    
    //button = [[UIButton alloc] init];
    [self.view addSubview:button];
    [button setTranslatesAutoresizingMaskIntoConstraints:NO];
    UIImage* buttonImage = [UIImage imageNamed:@"play"];
    [button setImage:buttonImage forState:UIControlStateNormal];
    //button.backgroundColor = [UIColor redColor];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:button
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:0.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:button
                                                          attribute:NSLayoutAttributeCenterY
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterY
                                                         multiplier:1.0
                                                           constant:0.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:button
                                                         attribute:NSLayoutAttributeWidth
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:self.view
                                                         attribute:NSLayoutAttributeHeight
                                                        multiplier:0.3
                                                           constant:0.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:button
                                                          attribute:NSLayoutAttributeHeight
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:button
                                                          attribute:NSLayoutAttributeWidth
                                                         multiplier:0.33
                                                           constant:0.0]];
    [button addTarget:self action:@selector(button1Hold:) forControlEvents:UIControlEventTouchDown];
    [button addTarget:self action:@selector(button1Tapped) forControlEvents:UIControlEventTouchUpInside];
    
    
    button2 = [[UIButton alloc]init];
    [button2 addTarget:self action:@selector(blueTapped) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview: button2];
    [button2 setTranslatesAutoresizingMaskIntoConstraints:NO];
    button2.backgroundColor = [UIColor blueColor];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:button2
                                                         attribute:NSLayoutAttributeTop
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:button
                                                         attribute:NSLayoutAttributeBottom
                                                        multiplier:1.0
                                                          constant:10]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:button2
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:0.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:button2
                                                         attribute:NSLayoutAttributeWidth
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:button
                                                         attribute:NSLayoutAttributeWidth
                                                        multiplier:0.66
                                                           constant:0.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:button2
                                                          attribute:NSLayoutAttributeHeight
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:button
                                                          attribute:NSLayoutAttributeHeight
                                                         multiplier:0.66
                                                           constant:0.0]];
    
    
    
    /* [self.view addConstraint:[NSLayoutConstraint constraintWithItem:kae
     attribute:NSLayoutAttributeTop
     relatedBy:NSLayoutRelationEqual
     toItem:self.view
     attribute:NSLayoutAttributeTop
     multiplier:1.0
     constant:50.0]]; // top_cua_kae = top_cua_self.view*multipiler + constrant;
     */
    
}

//First commit
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}

-(void)button1Hold:(SpringButton*)btn
{
    btn.animation =  @"squeeze";
    btn.curve = @"easeOut";
    btn.duration = 0.8;
    
    btn.showsTouchWhenHighlighted = YES;
    
    //btn.delay = 1.0;
    [btn animate];
    };
//    [btn animate];
    
//    VC_NavController* nav = [VC_NavController sharedInstance];
//    [[nav navigationBar] setHidden:NO];
//    
//    VC_MainPagePlayer* player = [[VC_MainPagePlayer alloc] init];
//    [nav pushViewController:player animated:YES];
//    
//    NSLog(@"RED BUTTON TAPPED");

    

-(void)button1Tapped
{
    
    VC_NavController* nav = [VC_NavController sharedInstance];
    [[nav navigationBar] setHidden:NO];
    
    VC_MainPagePlayer* player = [[VC_MainPagePlayer alloc] init];
    [nav pushViewController:player animated:YES];
    
    NSLog(@"RED BUTTON TAPPED");
}
-(void)blueTapped
{
    VC_NavController* nav2 = [VC_NavController sharedInstance];
    [[nav2 navigationBar] setHidden:YES];
}

-(void)dissmissKeybroad
{
    [self.view endEditing:YES];
}


@end
