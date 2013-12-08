//
//  ViewController.m
//  TestSaveCustomClass
//
//  Created by Jamison.Huang on 13/10/29.
//  Copyright (c) 2013年 Jamison.Huang. All rights reserved.
//

#import "ViewController.h"

#import "CustomClass.h"

@interface ViewController (){
    NSMutableArray *classArray;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    classArray = [[NSMutableArray alloc] init];
    
    CustomClass *obj1 = [[CustomClass alloc] init];
    obj1.name = @"A";
    obj1.sex = @"man";
    obj1.city = @"TPE";
    obj1.address = @"xxx";
    obj1.married = YES;
    obj1.height = 173.3;
    obj1.weight = 80.3;
    [classArray addObject:obj1];
    
    CustomClass *obj2 = [[CustomClass alloc] init];
    obj2.name = @"B";
    obj2.sex = @"woman";
    obj2.city = @"SF";
    obj2.address = @"ooo";
    obj2.married = NO;
    obj2.height = 163.0;
    obj2.weight = 51.6;
    [classArray addObject:obj2];
    
    CustomClass *obj3 = [[CustomClass alloc] init];
    obj3.name = @"C";
    obj3.sex = @"man";
    obj3.city = @"NY";
    obj3.address = @"xoxo";
    obj3.married = YES;
    obj3.height = 190.3;
    obj3.weight = 100.8;
    [classArray addObject:obj3
     ];
    
    NSLog(@"classArray = %@", classArray);
    
    [self save];
    
    [self get];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) get{
    NSUserDefaults *userDefault=[NSUserDefaults standardUserDefaults];
    NSData *decodedNSData = (NSData *)[userDefault objectForKey: [NSString stringWithFormat:@"save_class"]];;
    NSMutableArray *decodedArray =[NSKeyedUnarchiver unarchiveObjectWithData: decodedNSData];
    
    for (int i = 0; i < decodedArray.count; i++) {
        CustomClass *customClass = [decodedArray objectAtIndex:i];
        NSLog(@"item: %d", i);
        NSLog(@"customClass name = %@", customClass.name);
        NSLog(@"customClass age = %d", customClass.age);
        NSLog(@"customClass city = %@", customClass.city);
        NSLog(@"customClass weight = %f", customClass.weight);
        NSLog(@"-------------------------");
    }
}

- (void) save{
    NSData *encodedNSData = [NSKeyedArchiver archivedDataWithRootObject:classArray];
    NSUserDefaults *userDefault=[NSUserDefaults standardUserDefaults];
    [userDefault setObject:encodedNSData forKey:[NSString stringWithFormat:@"save_class"]];
}

@end
