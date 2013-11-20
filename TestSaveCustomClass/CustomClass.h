//
//  CustomClass.h
//  TestSaveCustomClass
//
//  Created by Jamison.Huang on 13/10/29.
//  Copyright (c) 2013年 Jamison.Huang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CustomClass : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *sex;
@property (strong, nonatomic) NSString *city;
@property (strong, nonatomic) NSString *address;
@property (assign, nonatomic) int age;
@property (assign, nonatomic) BOOL married;
@property (assign, nonatomic) float height;
@property (assign, nonatomic) float weight;


@end
