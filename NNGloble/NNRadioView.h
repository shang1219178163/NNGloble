//
//  BNRadioView.h
//  HuiZhuBang
//
//  Created by hsf on 2018/4/9.
//  Copyright © 2018年 WeiHouKeJi. All rights reserved.
//    

#import <UIKit/UIKit.h>
 
FOUNDATION_EXPORT NSString *const kRadioTitle ;
FOUNDATION_EXPORT NSString *const kRadioTextColorH ;
FOUNDATION_EXPORT NSString *const kRadioTextColorN ;
FOUNDATION_EXPORT NSString *const kRadioImageH ;
FOUNDATION_EXPORT NSString *const kRadioImageN ;
 
@interface NNRadioView : UIView

@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UILabel *label;

@property (nonatomic, assign) BOOL isSelected;
/**
 地图上方视图添加手势,有时会与地图手势冲突,所以单独做了处理,地图上使用此控件只需 onTheMap置位YES即可
 */
@property (nonatomic, assign) BOOL onTheMap;

@property (nonatomic, copy) void(^block)(NNRadioView *radioView, UIView *itemView, BOOL isSelected);

-(instancetype)initWithFrame:(CGRect)frame attDict:(NSDictionary *)attDict isSelected:(BOOL)isSelected;


@end
