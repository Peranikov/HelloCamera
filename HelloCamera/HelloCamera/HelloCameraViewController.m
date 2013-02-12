//
//  HelloCameraViewController.m
//  HelloCamera
//
//  Created by Yuto Matsukubo on 2013/02/12.
//  Copyright (c) 2013年 Yuto Matsukubo. All rights reserved.
//

#import "HelloCameraViewController.h"

@interface HelloCameraViewController ()

@end

@implementation HelloCameraViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    UIImagePickerControllerSourceType sourceType = UIImagePickerControllerSourceTypeCamera;
    
    if ([UIImagePickerController isSourceTypeAvailable:sourceType]) {
        picker.delegate = self;
        picker.sourceType = sourceType;
        [self presentModalViewController:picker animated:YES];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
