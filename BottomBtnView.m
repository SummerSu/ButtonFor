//
//  BottomBtnView.m
//  NiceFoodModular
//
//  Created by sunsu on 15/6/17.
//  Copyright (c) 2015年 sunsu. All rights reserved.
//

#import "BottomBtnView.h"
@interface BottomBtnView()


@end

@implementation BottomBtnView
- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        UIImageView * imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, self.frame.size.height)];
        imageView.image = [UIImage imageNamed:@"msxq_0003_content_tab_bg.png"];
        imageView.backgroundColor = [UIColor clearColor];
        [self addSubview:imageView];
        
        NSArray * titleArray = @[@"收藏",@"分享",@"点评"];
        NSArray * imageArray = @[@"msxq_0002_tab_icon1.png",@"msxq_0001_tab_icon2.png",@"msxq_0000_tab_icon3.png"];
        CGFloat btnW = 24;
        CGFloat startX = (SCREEN_WIDTH - titleArray.count*btnW - (titleArray.count-1)*RECTFIX_WIDTH(30))/2;
        
        BottomBtn * btn = nil;
        for (int i=0; i<titleArray.count; i++) {
            CGRect btnFrame = CGRectMake(i*(RECTFIX_WIDTH(30)+btnW)+startX,10, btnW, 50);
            btn = [[BottomBtn alloc]initWithFrame:btnFrame];
            [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            [btn setTitle:titleArray[i] forState:UIControlStateNormal];
            [btn setImage:[UIImage imageNamed:imageArray[i]] forState:UIControlStateNormal];
            btn.tag = i+3000;
            [btn addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
            [self addSubview:btn];
        }
        
        imageView.userInteractionEnabled = YES;
        self.userInteractionEnabled = YES;
    }
    return self;
}

-(void)clickBtn:(BottomBtn*)sender{
    if (_delegate && [_delegate respondsToSelector:@selector(clickByButtonTag:)]) {
        [_delegate clickByButtonTag:sender.tag-3000];
    }
}

@end
