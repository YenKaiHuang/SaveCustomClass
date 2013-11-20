//
//  CustomClass.m
//  TestSaveCustomClass
//
//  Created by Jamison.Huang on 13/10/29.
//  Copyright (c) 2013年 Jamison.Huang. All rights reserved.
//

#import "CustomClass.h"

@implementation CustomClass

- (id)initWithCoder:(NSCoder *)decoder
{
    self = [super init];
    if( self != nil )
    {
        self.name = [decoder decodeObjectForKey:@"name"];
        self.sex = [decoder decodeObjectForKey:@"sex"];
        self.address = [decoder decodeObjectForKey:@"income"];
        self.city = [decoder decodeObjectForKey:@"city"];
        self.age = [[decoder decodeObjectForKey:@"age"] intValue];
        self.married = [[decoder decodeObjectForKey:@"married"] boolValue];
        self.height = [[decoder decodeObjectForKey:@"height"] floatValue];
        self.weight = [[decoder decodeObjectForKey:@"weight"] floatValue];
        
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder
{
    
    //Encode properties, other class variables, etc
    [encoder encodeObject:self.name forKey:@"name"];
    [encoder encodeObject:self.sex forKey:@"sex"];
    [encoder encodeObject:self.address forKey:@"address"];
    [encoder encodeObject:self.city forKey:@"city"];
    [encoder encodeObject:[NSNumber numberWithInt:self.age] forKey:@"age"];
    [encoder encodeObject:[NSNumber numberWithBool:self.married] forKey:@"married"];
    [encoder encodeObject:[NSNumber numberWithFloat:self.height] forKey:@"height"];
    [encoder encodeObject:[NSNumber numberWithFloat:self.weight] forKey:@"weight"];
    
    
}


@end
