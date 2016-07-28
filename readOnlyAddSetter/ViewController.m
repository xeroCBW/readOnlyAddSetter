//
//  ViewController.m
//  readOnlyAddSetter
//
//  Created by 陈博文 on 16/7/28.
//  Copyright © 2016年 陈博文. All rights reserved.
//

#import "ViewController.h"

#import "CBWPerson.h"
#import "CBWPerson+Change.h"
#import "TestTVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self testKVC];
}

//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//
//    [self testKVC];
//}


- (void)testKVC{
    
    CBWPerson *person = [[CBWPerson alloc]init];
    
    NSLog(@"before=====%@",person.name);
    
    [person setValue:@"xmx" forKeyPath:@"name"];
    
    NSLog(@"after======%@",person.name);
}

- (void)testMJRefresh{
    
    TestTVC *vc = [[TestTVC alloc]init];
    
    
    [self.navigationController pushViewController:vc animated:YES];
    
}
@end
