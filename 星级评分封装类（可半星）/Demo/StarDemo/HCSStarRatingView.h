// HCSStarRatingView.h
//
// Copyright (c) 2015 Hugo Sousa
//

@import UIKit;

IB_DESIGNABLE

@interface HCSStarRatingView : UIControl

@property (nonatomic) IBInspectable NSUInteger maximumValue;
@property (nonatomic) IBInspectable NSUInteger minimumValue;
@property (nonatomic) IBInspectable CGFloat value;
@property (nonatomic) IBInspectable CGFloat spacing;
@property (nonatomic) IBInspectable BOOL allowsHalfStars;

@end

/*
 *使用方法:
 *1.将文件导入工程
 *2.导入头文件
 *3.示例代码:
 HCSStarRatingView *starRatingView = [[HCSStarRatingView alloc] initWithFrame:CGRectMake(50, 200, 280, 50)];
 starRatingView.maximumValue = 5;
 starRatingView.minimumValue = 0;
 starRatingView.value = 4.5f;//初始星级位置
 starRatingView.allowsHalfStars = YES;//是否允许半星级
 starRatingView.spacing = 1;
 starRatingView.tintColor = [UIColor redColor];
 [starRatingView addTarget:self action:@selector(didChangeValue:) forControlEvents:UIControlEventValueChanged];
 [self.view addSubview:starRatingView];
 *
 - (void)didChangeValue:(HCSStarRatingView *)sender {
 NSLog(@"Changed rating to %.1f", sender.value);
 }
 *
 */
