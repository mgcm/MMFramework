//
//  Utilities.m
//  Discover
//
//  Created by Milton Moura on 11/10/14.
//  Copyright (c) 2014 Milton Moura. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString *MMEncodeText(NSString *string, int key)
{
    NSMutableString *result = [[NSMutableString alloc] init];
    
    for (int i = 0; i < [string length]; i++)
    {
        unichar c = [string characterAtIndex:i];
        c += key;
        [result appendString:[NSString stringWithCharacters:&c length:1]];
    }
    
    return result;
}
