//
//  CBWPerson.h
//  readOnly 加属性
//
//  Created by 陈博文 on 16/7/27.
//  Copyright © 2016年 陈博文. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CBWPerson : NSObject

/** 姓名*/
@property (nonatomic,copy,readonly) NSString *name;

@end
