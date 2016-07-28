//
//  CBWPerson+Change.m
//  readOnly 加属性
//
//  Created by 陈博文 on 16/7/27.
//  Copyright © 2016年 陈博文. All rights reserved.
//

#import "CBWPerson+Change.h"

@implementation CBWPerson (Change)

-(void)setName:(NSString *)name{
    
       [self setValue:@"xmx" forKeyPath:@"_name"];
}

@end
