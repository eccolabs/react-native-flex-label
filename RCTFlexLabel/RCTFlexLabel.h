//
//  RCTFlexLabel.h
//  RCTFlexLabel
//
//  Created by Wes Reid on 6/14/15.
//  Copyright (c) 2015 Ecco Labs, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RCTFlexLabel : UILabel

@property (nonatomic, copy) NSString *verticalAlign;

@property (nonatomic, copy) NSString *text;
@property (nonatomic, strong) UIColor *textColor;
@property (nonatomic, strong) UIFont *font;

@end
