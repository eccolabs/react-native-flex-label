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

@end
