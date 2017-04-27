//
//  ViewController.m
//  TestGitHub
//
//  Created by Arpit Sharma on 27/04/17.
//  Copyright © 2017 Edutainment Ventures. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
#import "BranchViewController.h"
#import "ArpitsViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[[[UIApplication sharedApplication] windows] objectAtIndex:0] setBackgroundColor:[UIColor whiteColor]];
    
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
    
    
    
    UIButton *btnGoToNextVC = [[UIButton alloc]init];
    [btnGoToNextVC setTitle:@"Go To Next VC" forState:UIControlStateNormal];
    [btnGoToNextVC addTarget:self action:@selector(btnClickedGoToNextVC:) forControlEvents:UIControlEventTouchUpInside];
    [btnGoToNextVC setTranslatesAutoresizingMaskIntoConstraints:NO];
    [btnGoToNextVC setBackgroundColor:[UIColor blackColor]];
    [btnGoToNextVC.layer setCornerRadius:5];
    [self.view addSubview:btnGoToNextVC];
    
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:btnGoToNextVC attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:lblTitle attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:btnGoToNextVC attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0]];
    
    [btnGoToNextVC layoutIfNeeded];
    
    UIButton *btnGoToArpitsVC = [[UIButton alloc]init];
    [btnGoToArpitsVC setTitle:@"Go To Arpits VC" forState:UIControlStateNormal];
    [btnGoToArpitsVC addTarget:self action:@selector(btnClickedGoToArpitsVC:) forControlEvents:UIControlEventTouchUpInside];
    [btnGoToArpitsVC setTranslatesAutoresizingMaskIntoConstraints:NO];
    [btnGoToArpitsVC setBackgroundColor:[UIColor blackColor]];
    [btnGoToArpitsVC.layer setCornerRadius:5];
    [self.view addSubview:btnGoToArpitsVC];
    
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:btnGoToArpitsVC attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottomMargin multiplier:1.0 constant:0.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:btnGoToArpitsVC attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0]];
    
    
    UIButton *btnGoToBranchVC = [[UIButton alloc]init];
    [btnGoToBranchVC setTitle:@"Go To Branch VC" forState:UIControlStateNormal];
    [btnGoToBranchVC addTarget:self action:@selector(btnClickedGoToBranchVC:) forControlEvents:UIControlEventTouchUpInside];
    [btnGoToBranchVC setTranslatesAutoresizingMaskIntoConstraints:NO];
    [btnGoToBranchVC setBackgroundColor:[UIColor blackColor]];
    [btnGoToBranchVC.layer setCornerRadius:5];
    [self.view addSubview:btnGoToBranchVC];
    
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:btnGoToBranchVC attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:btnGoToNextVC attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:btnGoToBranchVC attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0]];
    
    [btnGoToBranchVC layoutIfNeeded];
    [btnGoToArpitsVC layoutIfNeeded];

    
    
}


-(void)btnClickedGoToNextVC:(UIButton *)sender
{
    dispatch_async(dispatch_get_main_queue(), ^{
        FirstViewController *objFirstViewController = [[FirstViewController alloc]init];
        [self.navigationController pushViewController:objFirstViewController animated:YES];
    });
    
}
-(void)btnClickedGoToBranchVC:(UIButton *)sender
{
    dispatch_async(dispatch_get_main_queue(), ^{
        BranchViewController *objBranchViewController = [[BranchViewController alloc]init];
        [self.navigationController pushViewController:objBranchViewController animated:YES];
    });
    
}

-(void)btnClickedGoToArpitsVC:(UIButton *)sender
{
    dispatch_async(dispatch_get_main_queue(), ^{
        ArpitsViewController *objArpitsViewController = [[ArpitsViewController alloc]init];
        [self.navigationController pushViewController:objArpitsViewController animated:YES];
    });
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
