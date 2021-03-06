//
//  StyleKit.h
//  Grocery
//
//  Created by James Robert on 7/24/14.
//  Copyright (c) 2014 CompanyName. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface StyleKit : NSObject

// iOS Controls Customization Outlets
@property(strong, nonatomic) IBOutletCollection(NSObject) NSArray* checkboxTargets;

// Colors
+ (UIColor*)mainColor;
+ (UIColor*)mainColorLight;

// Generated Images
+ (UIImage*)imageOfCheckboxWithIsChecked: (BOOL)isChecked;

@end
