//
//  NNGeneralConst.m
//  HuiZhuBang
//
//  Created by hsf on 2018/5/14.
//  Copyright © 2018年 WeiHouKeJi. All rights reserved.
//

#import "NNGeneralConst.h"


NSString * const kLanguageCN    = @"zh-CN";
NSString * const kLanguageEN    = @"en-US";
 
#pragma mark - - kSet

NSString * const kSetNumber     = @"0123456789";
NSString * const kSetFloat      = @"0123456789.";
NSString * const kSetAlpha      = @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
NSString * const kSetAlphaNum   = @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
NSString * const kSetAlphaFloat = @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.";

#pragma mark - - kArr

NSString * const kArrAvgFloat       = @"@avg.floatValue";

NSString * const kArrSumFloat       = @"@sum.floatValue";
NSString * const kArrSumInter       = @"@sum.intValue";

NSString * const kArrMaxFloat       = @"@max.floatValue";
NSString * const kArrMaxInter       = @"@max.intValue";

NSString * const kArrMinFloat       = @"@min.floatValue";
NSString * const kArrMinInter       = @"@min.intValue";

NSString * const kArrUpperList      = @"uppercaseString";//大小写转换
NSString * const kArrLowerList      = @"lowercaseString";//大小写转换

NSString * const kArrsUnionDistList = @"@distinctUnionOfArrays.self";//数组内部去重
NSString * const kArrsUnionList     = @"@unionOfArrays.self";

#pragma mark - -Size

const NSInteger kPageCount          = 20;
const NSInteger kImageMaxSize       = 1*1024*1024;

//plist文件路径
NSString * const kPlistFilePath    = @"/Library/File_Plist/";

#pragma mark - -kTag

const NSInteger kTAG_LABEL           = 100;
const NSInteger kTAG_BTN             = 200;
const NSInteger kTAG_BTN_RightItem   = 260;
const NSInteger kTAG_BTN_BackItem    = 261;

const NSInteger kTAG_IMGVIEW         = 300;
const NSInteger kTAG_TEXTFIELD       = 400;
const NSInteger kTAG_TEXTVIEW        = 500;
const NSInteger kTAG_ALERT_VIEW      = 600;
const NSInteger kTAG_ACTION_SHEET    = 700;
const NSInteger kTAG_PICKER_VIEW     = 800;
const NSInteger kTAG_DATE_PICKER     = 900;

const NSInteger kTAG_VIEW            = 1000;
const NSInteger kTAG_VIEW_Segment    = 1100;
const NSInteger kTAG_VIEW_RADIO      = 1200;
const NSInteger kTAG_VIEW_Picture    = 1300;

const NSInteger kTAG_TableViewCell   = 1500;
const NSInteger kTAG_ICAROUSEL       = 950;
const NSInteger kTAG_PAGE_CONTROL    = 951;

const NSInteger kComponent0         = 0;
const NSInteger kComponent1         = 1;
const NSInteger kComponent2         = 2;

#pragma mark - -MacroGeometry与计算有关的尺寸属性

const CGFloat kStatusBarHeight      = 20;
const CGFloat kNaviBarHeight        = 44;
const CGFloat kTabBarHeight         = 49;
const CGFloat kPickerViewHeight     = 240;

const CGFloat kH_SegmentOfCustom    = 50;
const CGFloat kH_SegmentControl     = 44;

const CGFloat kH_searchBar          = 36;
const CGFloat kH_searchBarBackgroud = 56;

const CGFloat kH_TopView            = 49;//itemsView高度
const CGFloat kH_SlideView          = 5;//指示器高度
const CGFloat kH_CellHeight         = 60;

const CGFloat kX_GAP                = 15;
const CGFloat kY_GAP                = 10;
const CGFloat kPadding              = 8.0;

const CGFloat kW_LayerBorder        = 0.5;
const CGFloat kWH_ArrowRight        = 25;
const CGFloat kTimerValue           = 65;
const CGFloat kRatio_IDCard         = 1.58;
const CGFloat kRatio_LeftMenu       = 0.8;

const CGFloat kDurationShow         = 0.3;
const CGFloat kDurationDrop         = 0.5;
const CGFloat kDurationToast        = 1.0;

const CGFloat kW_Item               = 80;
const CGFloat kW_ProgressView       = 130;

const CGFloat kH_LABEL              = 25;
const CGFloat kH_LABEL_TITLE        = 30;
const CGFloat kH_LABEL_SMALL        = 20;

const CGFloat kH_TEXTFIELD          = 30;
const CGFloat kH_LINE_VIEW          = 1/3.0;
const CGFloat kW_LINE_Vert          = 3.0;


#pragma mark - -font

const CGFloat kFontSize18 = 18;
const CGFloat kFontSize16 = 16;
const CGFloat kFontSize14 = 14;
const CGFloat kFontSize12 = 12;
const CGFloat kFontSize10 = 10;

#pragma mark - -视图

NSString * const kNetWorkRequesting    = @"网络请求中...";
NSString * const kNetWorkFailed        = @"网络请求失败,请稍后再试";
NSString * const kNetWorkNodata        = @"暂无数据";
NSString * const kNetWorkNoMoredata    = @"没有更多数据了";
NSString * const kNetWorkFailedParams  = @"参数错误,请稍后再试";

NSString * const kLocationing          = @"定位中...";
NSString * const kLocationSuccess      = @"位置信息更新成功!";
NSString * const kLocationFailed       = @"定位失败,请稍后再试";
NSString * const kIDCardFailed         = @"身份证识别失败,请稍后再试";
NSString * const kIDCardSuccess        = @"身份证识别成功";


NSString * const kTitleKnow    = @"知道了";
NSString * const kTitleSure    = @"确定";
NSString * const kTitleCancell = @"取消";
NSString * const kTitleDelete  = @"删除";
NSString * const kTitleDrop    = @"彻底删除";
NSString * const kTitleCall    = @"呼叫";
NSString * const kTitleUpdate  = @"立即升级";

NSString * const kTitleCollect = @"收藏";
NSString * const kTitleRecover = @"恢复";

NSString * const kNilText      = @"--";
NSString * const kSeparateStr  = @",";
NSString * const kAsterisk     = @"*";
NSString * const kBlankHalf    = @"  ";
NSString * const kBlankOne     = @"    ";
NSString * const kBlankTwo     = @"        ";
NSString * const kBlankFour    = @"                ";

#pragma mark - - 通用

NSString * const kDesWeek             = @"星期一,星期二,星期三,星期四,星期五,星期六,星期天";
NSString * const kDesMonth            = @"正月, 二月, 三月, 四月, 五月, 六月, 七月, 八月,九月, 十月, 冬月, 腊月";
NSString * const kDesDay              = @"初一, 初二, 初三, 初四, 初五, 初六, 初七, 初八, 初九, 初十,十一, 十二, 十三, 十四, 十五, 十六, 十七, 十八, 十九, 二十, 廿一, 廿二, 廿三, 廿四, 廿五, 廿六, 廿七, 廿八, 廿九, 三十, 三十一";

NSString * const kItemObj             = @"kItemObj";
NSString * const kItemObjSeleted      = @"kItemObjSeleted";
NSString * const kItemBlock           = @"kItemBlock";

NSString * const kItemTitle           = @"kItemTitle";
NSString * const kItemTitleColor      = @"kItemTitleColor";
NSString * const kItemTextField       = @"kItemTextField";

NSString * const kItemTitleSub        = @"kItemTitleSub";
NSString * const kItemTitleSubColor   = @"kItemTitleSubColor";
NSString * const kItemTitleSection    = @"kItemTitleSection";

NSString * const kItemImage           = @"kItemImage";
NSString * const kItemImage_H         = @"kItemImage_H";

NSString * const kItemController      = @"kItemController";
NSString * const kItemControllerTitle = @"kItemControllerTitle";
NSString * const kItemHeight          = @"kItemHeight";

NSString * const kItemDataList        = @"kItemDataList";
NSString * const kItemFinished        = @"kItem_finish";

NSString * const kItemHeader          = @"kItemHeader";
NSString * const kItemFooter          = @"kItemFooter";

#pragma mark - -推送通知

NSString * const kNotiTitle           = @"kNotiTitle";
NSString * const kNotiSubtitle        = @"kNotiSubtitle";
NSString * const kNotiBody            = @"kNotiBody";
NSString * const kNotiBadge           = @"kNotiBadge";


#pragma mark - -通知

NSString * const kNotiNameLogIn   = @"kNotiNameLogIn";
NSString * const kNotiNameLogOut  = @"kNotiNameLogOut";
NSString * const kNotiNameBackgroudUploadLocation = @"kNotiNameBackgroudUploadLocation";

@implementation NNGeneralConst



@end



@implementation NSLocale (Const)

+ (NSLocale *)zh_CN{
    return [NSLocale localeWithLocaleIdentifier:kLanguageCN];
}

+ (NSLocale *)en_US{
    return [NSLocale localeWithLocaleIdentifier:kLanguageEN];
}

@end




@implementation UIImage (Const)

+ (UIImage *)skull{
    return [UIImage imageNamed:@"Skull"];
}

+ (UIImage *)btn_add{
    return [UIImage imageNamed:@"btn_add"];
}

+ (UIImage *)btn_selected_NO{
    return [UIImage imageNamed:@"btn_selected_NO"];
}

+ (UIImage *)btn_selected_YES{
    return [UIImage imageNamed:@"btn_selected_YES"];
}

+ (UIImage *)icon_arowLeft_black{
    return [UIImage imageNamed:@"icon_arowLeft_black"];
}

+ (UIImage *)icon_search_bar{
    return [UIImage imageNamed:@"icon_search_bar"];
}

+ (UIImage *)img_NFC{
    return [UIImage imageNamed:@"img_NFC"];
}

+ (UIImage *)img_arrowDown_black{
    return [UIImage imageNamed:@"img_arrowDown_black"];
}

+ (UIImage *)img_arrowDown_gray{
    return [UIImage imageNamed:@"img_arrowDown_gray"];
}

+ (UIImage *)img_arrowDown_orange{
    return [UIImage imageNamed:@"img_arrowDown_orange"];
}

+ (UIImage *)img_arrowLeft_white{
    return [UIImage imageNamed:@"img_arrowLeft_white"];
}

+ (UIImage *)img_arrowRight_gray{
    return [UIImage imageNamed:@"img_arrowRight_gray"];
}

+ (UIImage *)img_arrowUp_blue{
    return [UIImage imageNamed:@"img_arrowUp_blue"];
}

+ (UIImage *)img_dialog_inquiry{
    return [UIImage imageNamed:@"img_dialog_inquiry"];
}

+ (UIImage *)img_dialog_update{
    return [UIImage imageNamed:@"img_dialog_update"];
}

+ (UIImage *)img_dialog_warning{
    return [UIImage imageNamed:@"img_dialog_warning"];
}

+ (UIImage *)img_elemet_decrease{
    return [UIImage imageNamed:@"img_elemet_decrease"];
}

+ (UIImage *)img_elemet_increase{
    return [UIImage imageNamed:@"img_elemet_increase"];
}

+ (UIImage *)img_failedDefault{
    return [UIImage imageNamed:@"img_failedDefault"];
}

+ (UIImage *)img_failedDefault_S{
    return [UIImage imageNamed:@"img_failedDefault_S"];
}

+ (UIImage *)img_like_H{
    return [UIImage imageNamed:@"img_like_H"];
}

+ (UIImage *)img_like_W{
    return [UIImage imageNamed:@"img_like_W"];
}

+ (UIImage *)img_location_H{
    return [UIImage imageNamed:@"img_location_H"];
}

+ (UIImage *)img_more{
    return [UIImage imageNamed:@"img_more"];
}

+ (UIImage *)img_notice{
    return [UIImage imageNamed:@"img_notice"];
}

+ (UIImage *)img_pictureAdd{
    return [UIImage imageNamed:@"img_pictureAdd"];
}

+ (UIImage *)img_pictureDelete{
    return [UIImage imageNamed:@"img_pictureDelete"];
}

+ (UIImage *)img_portrait_H{
    return [UIImage imageNamed:@"img_portrait_H"];
}

+ (UIImage *)img_portrait_N{
    return [UIImage imageNamed:@"img_portrait_N"];
}

+ (UIImage *)img_scan{
    return [UIImage imageNamed:@"img_scan"];
}

+ (UIImage *)img_sex_boy{
    return [UIImage imageNamed:@"img_sex_boy"];
}

+ (UIImage *)img_sex_gril{
    return [UIImage imageNamed:@"img_sex_gril"];
}

@end
