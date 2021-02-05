//
//  NNButton.m
//  ProductTemplet
//
//  Created by Bin Shang on 2021/1/21.
//  Copyright © 2021 BN. All rights reserved.
//

#import "NNButton.h"

@interface NNButton()

@property (nonatomic, strong, readwrite) NSMutableDictionary<NSNumber *, UIColor *> *borderColorDic;
@property (nonatomic, strong, readwrite) NSMutableDictionary<NSNumber *, NSNumber *> *borderWidthDic;
@property (nonatomic, strong, readwrite) NSMutableDictionary<NSNumber *, NSNumber *> *cornerRadiusDic;

@end


@implementation NNButton

- (void)dealloc{
    [self removeObserver:self forKeyPath:@"selected"];
    [self removeObserver:self forKeyPath:@"highlighted"];
}

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        _iconSize = CGSizeMake(60, 18);
        _iconOffset = UIOffsetZero;
        _labelHeight = 25;
        _spacing = 3;
        
        _direction = NNButtonDirectionLeft;
        _iconLocation = NNButtonLocationNone;
        
        [self setupUI];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.iconBtn.tag = self.tag;

    if (CGRectGetHeight(self.bounds) <= 10) {
        return;
    }
    
    CGFloat height = CGRectGetHeight(self.bounds);
    CGFloat width = CGRectGetWidth(self.bounds);

    switch (self.direction) {
        case NNButtonDirectionTop:
        {
            CGFloat imgH = height - self.labelHeight - self.spacing*0.5;
            self.imageView.frame = CGRectMake(0, 0, width, imgH);
            self.titleLabel.frame = CGRectMake(0,
                                               CGRectGetMaxY(self.imageView.frame) + self.spacing,
                                               width,
                                               self.labelHeight - self.spacing*0.5);
        }
            break;
        case NNButtonDirectionBom:
        {
            CGFloat imgH = height - self.labelHeight - self.spacing*0.5;
            self.titleLabel.frame = CGRectMake(0, 0, width, self.labelHeight - self.spacing*0.5);
            self.imageView.frame = CGRectMake(0,
                                              CGRectGetMaxY(self.titleLabel.frame) + self.spacing,
                                              width,
                                              imgH);
        }
            break;
        case NNButtonDirectionRight:
        {
            self.imageView.frame = CGRectMake(width - height, 0, height, height);
            self.titleLabel.frame = CGRectMake(0,
                                               self.spacing,
                                               width - height - self.spacing*2,
                                               height);
        }
            break;
        default:
        {
            self.imageView.frame = CGRectMake(0, 0, height, height);
            self.titleLabel.frame = CGRectMake(CGRectGetMaxY(self.imageView.frame) + self.spacing,
                                               self.spacing,
                                               width - CGRectGetWidth(self.imageView.frame) - self.spacing*2,
                                               height);
        }
            break;
    }
    
    
    switch (self.iconLocation) {
        case NNButtonLocationLeftTop:
        {
            self.iconBtn.frame = CGRectMake(0, 0, self.iconSize.width, self.iconSize.height);
        }
            break;
        case NNButtonLocationLeftBom:
        {
            self.iconBtn.frame = CGRectMake(0, height - self.iconSize.height, self.iconSize.width, self.iconSize.height);

        }
            break;
        case NNButtonLocationRightTop:
        {
            self.iconBtn.frame = CGRectMake(width - self.iconSize.width, 0, self.iconSize.width, self.iconSize.height);

        }
            break;
        case NNButtonLocationRightBom:
        {
            self.iconBtn.frame = CGRectMake(width - self.iconSize.width, height - self.iconSize.height, self.iconSize.width, self.iconSize.height);

        }
            break;
        default:
            self.iconBtn.hidden = true;
            break;
    }
    
    CGRect iconRect = self.iconBtn.frame;
    iconRect.origin.x += self.iconOffset.horizontal;
    iconRect.origin.y += self.iconOffset.vertical;
    self.iconBtn.frame = iconRect;
    
    if (!self.currentImage || self.imageView.isHidden) {
        self.titleLabel.frame = self.bounds;
    } else if (!self.currentTitle || self.titleLabel.isHidden){
        self.imageView.frame = self.bounds;
    }
    
    UIImage *backgroundImage = [self.iconBtn backgroundImageForState:UIControlStateNormal];
    bool invalid = !self.iconBtn.currentImage && !self.iconBtn.currentTitle && !backgroundImage;
    if (!self.iconBtn.isHidden && invalid) {
        self.iconBtn.hidden = false;
    }
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    [super pointInside:point withEvent:event];
    
    CGRect eventBounds = CGRectInset(self.bounds, -self.eventInsetDX, -self.eventInsetDY);
    return CGRectContainsPoint(eventBounds, point);
}

#pragma mark -set,get

- (void)setDirection:(NNButtonDirection)direction{
    _direction = direction;
    
    [self setNeedsLayout];
}

- (void)setIconLocation:(NNButtonLocation)iconLocation{
    _iconLocation = iconLocation;
    
    [self setNeedsLayout];
}

#pragma mark -funtions

- (void)setupUI {
    [self addSubview:self.iconBtn];

    UIColor *textColor = [UIColor.blackColor colorWithAlphaComponent:0.3];
    UIColor *textColorH = UIColor.systemBlueColor;
    [self setTitleColor:textColor forState:UIControlStateNormal];
    [self setTitleColor:textColorH forState:UIControlStateSelected];

    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.adjustsFontSizeToFitWidth = true;
    
//    self.imageView.tintColor = UIColor.themeColor;
    self.imageView.tintColor = textColorH;
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    [self addObserver:self forKeyPath:@"selected" options:NSKeyValueObservingOptionNew context:nil];
    [self addObserver:self forKeyPath:@"highlighted" options:NSKeyValueObservingOptionNew context:nil];
}

#pragma mark -observe
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
    if ([object isKindOfClass:[NNButton class]]) {
        NNButton *sender = (NNButton *)object;
        if ([keyPath isEqualToString:@"selected"] || [keyPath isEqualToString:@"highlighted"]) {
            [sender changeLayerBorderColor];
            [sender changeLayerBorderWidth];
            [sender changeLayerCornerRadius];
            if (sender.observerBlock) {
                sender.observerBlock(keyPath, sender, change);
            }
        }
    } else {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}

#pragma mark -public

- (void)setBorderColor:(nullable UIColor *)color forState:(UIControlState)state{
    if (!color) {
        return;
    }
    self.borderColorDic[@(state)] = color;
    [self changeLayerBorderColor];
}

- (nullable UIColor *)borderColorForState:(UIControlState)state{
    return self.borderColorDic[@(state)];
}

- (void)setBorderWidth:(CGFloat)value forState:(UIControlState)state{
    self.borderWidthDic[@(state)] = @(value);
    [self changeLayerBorderWidth];
}

- (CGFloat)borderWidthForState:(UIControlState)state{
    return self.borderWidthDic[@(state)].floatValue;
}

- (void)setCornerRadius:(CGFloat)value forState:(UIControlState)state{
    self.cornerRadiusDic[@(state)] = @(value);
    [self changeLayerCornerRadius];
}

- (CGFloat)cornerRadiusForState:(UIControlState)state{
    return self.cornerRadiusDic[@(state)].floatValue;
}

#pragma mark -private

- (void)changeLayerBorderColor{
    UIColor *normalColor = self.borderColorDic[@(UIControlStateNormal)];
    if (!normalColor) {
        return;
    }

    UIColor *color = self.borderColorDic[@(self.state)] ? : normalColor;
    self.layer.borderColor = color.CGColor;
    
    if (self.layer.borderWidth == 0) {
        self.layer.borderWidth = 1;
    }
}

- (void)changeLayerBorderWidth{
    NSNumber *normalValue = self.borderWidthDic[@(UIControlStateNormal)];
    if (!normalValue) {
        return;
    }
    
    NSNumber *numer = self.borderWidthDic[@(self.state)] ? : normalValue;
    self.layer.borderWidth = numer.floatValue;
    
    if (self.layer.borderWidth == 0) {
        self.layer.borderWidth = 1;
    }
}

- (void)changeLayerCornerRadius{
    NSNumber *normalValue = self.cornerRadiusDic[@(UIControlStateNormal)];
    if (!normalValue) {
        return;
    }
    
    NSNumber *numer = self.cornerRadiusDic[@(self.state)] ? : normalValue;
    self.layer.cornerRadius = numer.floatValue;
    
    if (self.layer.borderWidth == 0) {
        self.layer.borderWidth = 1;
    }
}

#pragma mark -lazy

- (UIButton *)iconBtn{
    if (!_iconBtn) {
        _iconBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _iconBtn.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        _iconBtn.titleLabel.adjustsFontSizeToFitWidth = true;
        _iconBtn.titleLabel.font = [UIFont systemFontOfSize:12];
    }
    return _iconBtn;
}

- (NSMutableDictionary<NSNumber *,UIColor *> *)borderColorDic{
    if (!_borderColorDic) {
        _borderColorDic = @{
            
        }.mutableCopy;
    }
    return _borderColorDic;
}

- (NSMutableDictionary<NSNumber *, NSNumber *> *)borderWidthDic{
    if (!_borderWidthDic) {
        _borderWidthDic = @{
            
        }.mutableCopy;
    }
    return _borderWidthDic;
}

- (NSMutableDictionary<NSNumber *, NSNumber *> *)cornerRadiusDic{
    if (!_cornerRadiusDic) {
        _cornerRadiusDic = @{
            
        }.mutableCopy;
    }
    return _cornerRadiusDic;
}

@end
