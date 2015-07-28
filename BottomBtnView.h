//
//  BottomBtnView.h
//  NiceFoodModular
//
//  Created by sunsu on 15/6/17.
//  Copyright (c) 2015年 sunsu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BottomBtn.h"
#import "StaticPublic.h"    

@protocol BottomBtnViewDelegate <NSObject>
-(void)clickByButtonTag:(NSInteger)index;
@end

@interface BottomBtnView : UIView
@property(nonatomic,weak)id<BottomBtnViewDelegate>delegate;
- (id)initWithFrame:(CGRect)frame;
@end

