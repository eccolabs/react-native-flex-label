//
//  RCTFlexLabel.m
//  RCTFlexLabel
//
//  Created by Wes Reid on 6/14/15.
//  Copyright (c) 2015 Ecco Labs, Inc. All rights reserved.
//

#import "RCTFlexLabel.h"

@implementation RCTFlexLabel

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        // Initialization code
    }
    self.lineBreakMode = NSLineBreakByTruncatingTail;
    return self;
}


-(void)drawTextInRect:(CGRect)rect {
    if (self.text) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.lineBreakMode = self.lineBreakMode;
        CGRect labelSize = [self textRectForBounds:self.frame limitedToNumberOfLines:self.numberOfLines];
        
        CGFloat yPos = 0;
        if ([self.verticalAlign isEqualToString: @"middle"])
            yPos = (CGRectGetHeight(self.frame) / 2) - (labelSize.size.height / 2);
        else if ([self.verticalAlign isEqualToString: @"bottom"])
            yPos = CGRectGetHeight(self.frame) - labelSize.size.height;
        
        [super drawTextInRect:CGRectMake(0, yPos, CGRectGetWidth(self.frame), ceilf(labelSize.size.height))];
    } else {
        [super drawTextInRect:rect];
    }
}


@end
