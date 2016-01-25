//
//  SSingleton.m
//  GitSin
//
//  Created by Wojciech Dziedzic on 25.01.2016.
//  Copyright © 2016 Wojciech Dziedzic. All rights reserved.
//

#import "SSingleton.h"

@implementation SSingleton

+(SSingleton *) nextTry

{
    
    static SSingleton* nextTry2 = nil;      // statyczny obiekt klasy SSinngleton jest nil'em
    static dispatch_once_t nextTry3;        // deklaracja zmiennej statycznej dispatch_once_t, która posłuży do wykonania bloku tylko raz
    dispatch_once(&nextTry3, ^{             // dispatch_once odpowada za to, że jakaś część kodu wykona sie tylko raz
        nextTry2 = [[SSingleton alloc] init]; // został stowrzony singleton
        
        NSLog(@"%p", nextTry2);
    });
    return nextTry2;                        // zwracasz singleton
}


@end
