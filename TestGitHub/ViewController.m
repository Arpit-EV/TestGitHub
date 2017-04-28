//
//  ViewController.m
//  TestGitHub
//
//  Created by Arpit Sharma on 27/04/17.
//  Copyright © 2017 Edutainment Ventures. All rights reserved.
//

#import "ViewController.h"
#import "MyViewController.h"
#import "CanWeCelebrateViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[[[UIApplication sharedApplication] windows] objectAtIndex:0] setBackgroundColor:[UIColor whiteColor]];
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    UILabel *lblTitle = [[UILabel alloc]init];
    [lblTitle setText:@"Click the button bellow to go to next View Controller"];
    [lblTitle setNumberOfLines:0];
    [lblTitle setTextAlignment:NSTextAlignmentCenter];
    [lblTitle setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview: lblTitle];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:lblTitle attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeadingMargin multiplier:1.0 constant:0.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:lblTitle attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTrailingMargin multiplier:1.0 constant:0.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:lblTitle attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:lblTitle attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0.0]];
    
    
    [lblTitle layoutIfNeeded];
    
    
    
//    UIButton *btnGoToMyVC = [[UIButton alloc]init];
//    [btnGoToMyVC setTitle:@"Go To Next VC" forState:UIControlStateNormal];
//    [btnGoToMyVC addTarget:self action:@selector(btnClickedGoToMyVC:) forControlEvents:UIControlEventTouchUpInside];
//    [btnGoToMyVC setTranslatesAutoresizingMaskIntoConstraints:NO];
//    [btnGoToMyVC setBackgroundColor:[UIColor blackColor]];
//    [btnGoToMyVC.layer setCornerRadius:5];
//    [self.view addSubview:btnGoToMyVC];
//    
//    
//    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:btnGoToMyVC attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottomMargin multiplier:1.0 constant:0.0]];
//    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:btnGoToMyVC attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0]];
//    
//    [btnGoToMyVC layoutIfNeeded];
    
    
    
    UIButton *btnGoToMyVC = [[UIButton alloc]init];
    [btnGoToMyVC setTitle:@"Go To My VC" forState:UIControlStateNormal];
    [btnGoToMyVC addTarget:self action:@selector(btnClickedGoToMyVC:) forControlEvents:UIControlEventTouchUpInside];
    [btnGoToMyVC setTranslatesAutoresizingMaskIntoConstraints:NO];
    [btnGoToMyVC setBackgroundColor:[UIColor blackColor]];
    [btnGoToMyVC.layer setCornerRadius:5];
    [self.view addSubview:btnGoToMyVC];
    
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:btnGoToMyVC attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottomMargin multiplier:1.0 constant:0.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:btnGoToMyVC attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0]];
    
    [btnGoToMyVC layoutIfNeeded];
    
    
    UIButton *btnGoToCelebrateVC = [[UIButton alloc]init];
    [btnGoToCelebrateVC setTitle:@"Go To Celebrate VC" forState:UIControlStateNormal];
    [btnGoToCelebrateVC addTarget:self action:@selector(btnClickedGoToCelebrateVC:) forControlEvents:UIControlEventTouchUpInside];
    [btnGoToCelebrateVC setTranslatesAutoresizingMaskIntoConstraints:NO];
    [btnGoToCelebrateVC setBackgroundColor:[UIColor blackColor]];
    [btnGoToCelebrateVC.layer setCornerRadius:5];
    [self.view addSubview:btnGoToCelebrateVC];
    
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:btnGoToCelebrateVC attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTopMargin multiplier:1.0 constant:0.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:btnGoToCelebrateVC attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0]];
    
    [btnGoToCelebrateVC layoutIfNeeded];

}


//-(void)btnClickedGoToMyVC:(UIButton *)sender
//{
//    dispatch_async(dispatch_get_main_queue(), ^{
//        MyViewController *objMyViewController = [[MyViewController alloc]init];
//        [self.navigationController pushViewController:objMyViewController animated:YES];
//    });
//    
//}

-(void)btnClickedGoToMyVC:(UIButton *)sender
{
    dispatch_async(dispatch_get_main_queue(), ^{
        MyViewController *objMyViewController = [[MyViewController alloc]init];
        [self.navigationController pushViewController:objMyViewController animated:YES];
    });
    
}

-(void)btnClickedGoToCelebrateVC:(UIButton *)sender
{
    dispatch_async(dispatch_get_main_queue(), ^{
        CanWeCelebrateViewController *objCanWeCelebrateViewController = [[CanWeCelebrateViewController alloc]init];
        [self.navigationController pushViewController:objCanWeCelebrateViewController animated:YES];
    });
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
