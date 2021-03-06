//
//  StyleKit.m
//  Grocery
//
//  Created by James Robert on 7/24/14.
//  Copyright (c) 2014 CompanyName. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//

#import "StyleKit.h"


@implementation StyleKit

#pragma mark Cache

static UIColor* _mainColor = nil;
static UIColor* _mainColorLight = nil;

#pragma mark Initialization

+ (void)initialize
{
    // Colors Initialization
    _mainColor = [UIColor colorWithRed: 1 green: 0.502 blue: 0.192 alpha: 1];
    CGFloat mainColorRGBA[4];
    [_mainColor getRed: &mainColorRGBA[0] green: &mainColorRGBA[1] blue: &mainColorRGBA[2] alpha: &mainColorRGBA[3]];

    _mainColorLight = [UIColor colorWithRed: (mainColorRGBA[0] * 0.08 + 0.92) green: (mainColorRGBA[1] * 0.08 + 0.92) blue: (mainColorRGBA[2] * 0.08 + 0.92) alpha: (mainColorRGBA[3] * 0.08 + 0.92)];

}

#pragma mark Colors

+ (UIColor*)mainColor { return _mainColor; }
+ (UIColor*)mainColorLight { return _mainColorLight; }

#pragma mark Drawing Methods

+ (void)drawCheckboxWithIsChecked: (BOOL)isChecked;
{

    //// Rectangle Drawing
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(0.5, 0.5, 11, 11) cornerRadius: 2.5];
    [StyleKit.mainColor setStroke];
    rectanglePath.lineWidth = 1;
    [rectanglePath stroke];


    if (isChecked)
    {
        //// Rectangle 2 Drawing
        UIBezierPath* rectangle2Path = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(3, 3, 6, 6) cornerRadius: 1.5];
        [StyleKit.mainColor setFill];
        [rectangle2Path fill];
    }
}

#pragma mark Generated Images

+ (UIImage*)imageOfCheckboxWithIsChecked: (BOOL)isChecked;
{
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(12, 12), NO, 0.0f);
    [StyleKit drawCheckboxWithIsChecked: isChecked];
    UIImage* imageOfCheckbox = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return imageOfCheckbox;
}

@end
