//
//  main.m
//  GitSin
//
//  Created by Wojciech Dziedzic on 25.01.2016.
//  Copyright © 2016 Wojciech Dziedzic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SSingleton.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        SSingleton* nextTry = [SSingleton nextTry];

        NSLog(@"%p", nextTry);
        
        SSingleton* nextTry4 = [SSingleton nextTry];
        
        NSLog(@"%p", nextTry4);
        
        
    }
    return 0;
}
