//
//  main.m
//  QFReadFile
//
//  Created by dqf on 2017/8/16.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QFReadFile.h"
#import "TestNet.h"

#define KPATH @"/Users/issuser/Desktop/WorkPlace/MiguMusic-iOS"

int main(int argc, char * argv[]) {
    @autoreleasepool {

        //例子一
//        NSMutableArray *arr1 = [NSMutableArray array];
//        NSMutableArray *arr2 = [NSMutableArray array];
//        
//        [QFReadFile folderPath:KPATH filter:@"Net.h" block:^(NSString *path) {
//            
//            NSString *fileName = [[path lastPathComponent] stringByDeletingPathExtension];
//            [arr1 addObject:fileName];
//            
//            [QFReadFile file:path block:^(NSString *lineStr) {
//                
//                [arr2 addObject:lineStr];
//            }];
//
//        }];
//        
//        NSLog(@"%@",arr1);
//        NSLog(@"%@",arr2);
        
        
        
        
        
        //例子二
//        NSMutableArray *arr = [NSMutableArray array];
//        
//        [QFReadFile folderPath:KPATH filter:@"Net.h" block:^(NSString *path) {
//            
//            NSString *fileName = [[path lastPathComponent] stringByDeletingPathExtension];
//            Class class = NSClassFromString(fileName);
//            TestNet *testNet = [[class alloc] init];
//            
//            [arr addObject:testNet.baseUrl];
//        }];
//        
//        NSLog(@"%@",arr);
        
        
        
    }
}
