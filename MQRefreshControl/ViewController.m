//
//  ViewController.m
//  MQRefreshControl
//
//  Created by 货道网 on 15/6/2.
//  Copyright (c) 2015年 李铁柱. All rights reserved.
//

#import "ViewController.h"
#import "UIScrollView+MQRefreshControl.h"

@interface ViewController ()
{
    UIScrollView * scrollView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:scrollView];
    
    
    
    // 添加刷新方向
    [scrollView addRefreshControl:RefreshDirection_Top];
    [scrollView addRefreshControl:RefreshDirection_Bottom];
    [scrollView addRefreshControl:RefreshDirection_Left];
    [scrollView addRefreshControl:RefreshDirection_Right];
    
    [scrollView setRefreshBlock:^ (RefreshDirection direction){

//        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//            [weakSelf->scrollView endRefreshDirection:direction];
//        });
    }];
//    [scrollView beganRefreshDirection:RefreshDirection_Bottom];
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width, 1000);
    scrollView.backgroundColor = [UIColor clearColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
