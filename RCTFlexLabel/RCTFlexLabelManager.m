//
//  RCTFlexLabelManager.m
//  RCTFlexLabel
//
//  Created by Wes Reid on 6/14/15.
//  Copyright (c) 2015 Ecco Labs, Inc. All rights reserved.
//

#import "RCTFlexLabelManager.h"

@implementation RCTFlexLabelManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
    return [[RCTFlexLabel alloc] init];
}

RCT_EXPORT_VIEW_PROPERTY(text, NSString);
RCT_EXPORT_VIEW_PROPERTY(verticalAlign, NSString);
RCT_EXPORT_VIEW_PROPERTY(numberOfLines, NSInteger);


RCT_REMAP_VIEW_PROPERTY(color, textColor, UIColor)
RCT_CUSTOM_VIEW_PROPERTY(fontSize, CGFloat, RCTFlexLabel)
{
    view.font = [RCTConvert UIFont:view.font withSize:json ?: @(defaultView.font.pointSize)];
}
RCT_CUSTOM_VIEW_PROPERTY(fontWeight, NSString, RCTFlexLabel)
{
    view.font = [RCTConvert UIFont:view.font withWeight:json]; // defaults to normal
}
RCT_CUSTOM_VIEW_PROPERTY(fontStyle, NSString, RCTFlexLabel)
{
    view.font = [RCTConvert UIFont:view.font withStyle:json]; // defaults to normal
}
RCT_CUSTOM_VIEW_PROPERTY(fontFamily, NSString, RCTFlexLabel)
{
    view.font = [RCTConvert UIFont:view.font withFamily:json ?: defaultView.font.familyName];
}

@end
