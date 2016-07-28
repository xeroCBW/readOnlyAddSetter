//
//  TestTVC.m
//  readOnly 加属性
//
//  Created by 陈博文 on 16/7/27.
//  Copyright © 2016年 陈博文. All rights reserved.
//

#import "TestTVC.h"
#import "MJRefresh.h"

@implementation TestTVC

-(void)viewDidLoad{
    
    
    [super viewDidLoad];
    
    
    self.tableView.backgroundColor = [UIColor greenColor];
    
    
    self.tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadData)];
    
}

- (void)loadData{
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        [self.tableView.mj_header endRefreshing];
    });
}

@end
