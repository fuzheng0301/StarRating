//
//  ViewController.m
//  StarDemo
//
//  Created by 聚财通 on 16/6/22.
//  Copyright © 2016年 付正. All rights reserved.
//

#import "ViewController.h"
#import "HCSStarRatingView.h"

@interface ViewController ()
{
    UILabel *starLabel;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    HCSStarRatingView *starRatingView = [[HCSStarRatingView alloc] initWithFrame:CGRectMake(50, 200, 280, 50)];
    starRatingView.maximumValue = 5;
    starRatingView.minimumValue = 0;
    starRatingView.value = 4.5f;//初始星级位置
    starRatingView.allowsHalfStars = YES;//是否允许半星级
    starRatingView.spacing = 1;
    starRatingView.tintColor = [UIColor redColor];
    [starRatingView addTarget:self action:@selector(didChangeValue:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:starRatingView];
    
    starLabel = [[UILabel alloc]initWithFrame:CGRectMake(110, 260, 160, 40)];
    starLabel.textAlignment = NSTextAlignmentCenter;
    starLabel.backgroundColor = [UIColor lightGrayColor];
    starLabel.text = @"4.5 星级";
    [self.view addSubview:starLabel];
    
}

- (void)didChangeValue:(HCSStarRatingView *)sender
{
    starLabel.text = [NSString stringWithFormat:@"%.1f 星级",sender.value];
    NSLog(@"Changed rating to %.1f", sender.value);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
