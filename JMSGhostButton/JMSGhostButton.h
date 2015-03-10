//
//  JMSGhostButton.h
//  WordADay
//
//  Created by James An on 3/10/15.
//  Copyright (c) 2015 Jamesan. All rights reserved.
//

#import <UIKit/UIKit.h>
IB_DESIGNABLE
@interface JMSGhostButton : UIControl

@property (strong,nonatomic) IBInspectable UIImage* image;
@property (strong,nonatomic) IBInspectable UIColor* borderColor;
@property (strong,nonatomic) IBInspectable UIColor* fillColor;

@end
