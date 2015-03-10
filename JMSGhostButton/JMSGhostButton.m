//
//  JMSGhostButton.m
//  WordADay
//
//  Created by James An on 3/10/15.
//  Copyright (c) 2015 Jamesan. All rights reserved.
//

#import "JMSGhostButton.h"
#import "UIImage+NRSTint.h"
#import <FrameAccessor.h>
@interface JMSGhostButton ()
@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (strong,nonatomic)UIView* childView;
@property (strong,nonatomic)CAShapeLayer* outlineLayer;
@end

@implementation JMSGhostButton

-(instancetype)initWithFrame:(CGRect)frame{

    self = [super initWithFrame:frame];
    if(self){
       [self loadChild];
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder{
   
    self = [super initWithCoder:aDecoder];
    if(self){
        [self loadChild];
    }
    return self;

}

-(void)setImage:(UIImage *)image{
    self.imageView.image = image;
    _image = image;
}

-(void)setBorderColor:(UIColor *)borderColor{
    self.outlineLayer.strokeColor = [borderColor CGColor];
    _borderColor = borderColor;
}

-(void)setFillColor:(UIColor *)fillColor{

    self.outlineLayer.fillColor = [fillColor CGColor];
    _fillColor = fillColor;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    self.outlineLayer = [CAShapeLayer layer];
    self.outlineLayer.path = [[UIBezierPath bezierPathWithArcCenter:self.childView.center radius:self.childView.width/2-2 startAngle:0 endAngle:M_PI*2 clockwise:YES] CGPath];
    self.outlineLayer.lineWidth = 1;
    self.outlineLayer.fillColor = [self.fillColor CGColor];
    self.outlineLayer.strokeColor = [self.borderColor CGColor];
    [self.containerView.layer addSublayer:self.outlineLayer];
}

-(UIView*)loadChild{
    
    NSBundle* bundle = [NSBundle bundleForClass:[self class]];
    UINib* nib = [UINib nibWithNibName:@"NRSGhostButton" bundle:bundle];
    UIView* view = [[nib instantiateWithOwner:self options:nil] firstObject];
    view.frame = self.bounds;
    self.childView = view;
    view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self addSubview:view];
    self.userInteractionEnabled = YES;
    return view;
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    self.outlineLayer.strokeColor = [self.borderColor CGColor];
    self.imageView.image = self.image;
    [self sendActionsForControlEvents:UIControlEventTouchUpInside];
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{

    self.outlineLayer.strokeColor = [[UIColor grayColor] CGColor];
    self.imageView.image = [self.imageView.image tintedImageWithColor:[UIColor grayColor]];
}

@end
