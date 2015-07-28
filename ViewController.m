//
//  ViewController.m
//  ButtonFor
//
//  Created by sunsu on 15/7/28.
//  Copyright (c) 2015年 sunsu. All rights reserved.
//

#import "ViewController.h"
#import "BottomBtnView.h"



@interface ViewController ()<BottomBtnViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    BottomBtnView * bottomView = [[BottomBtnView alloc]initWithFrame:CGRectMake(0, SCREEN_HEIGHT-70, SCREEN_WIDTH, 70)];

    [self.view addSubview: bottomView];
    
    bottomView.delegate = self;
    
}

-(void)clickByButtonTag:(NSInteger)index{
    if (index == 0) {
        NSLog(@"收藏");
    }
    
    if (index == 1) {
        NSLog(@"分享");
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
