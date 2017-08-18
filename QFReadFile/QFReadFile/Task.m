//
//  Task.m
//  QFReadFile
//
//  Created by dqf on 2017/8/18.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import "Task.h"
#import "QFReadFile.h"
#import "QFWriteFile.h"
#import "TestNet.h"
#import "QFFileHelper.h"

@implementation Task

+ (Task *)share {
    static Task *ss = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        ss = [[self alloc] init];
    });
    return ss;
}

- (void)exe {
    
//    [self example1];
    
}

- (void)example1 {
    //例子一
//    NSMutableArray *arr1 = [NSMutableArray array];
//    NSMutableArray *arr2 = [NSMutableArray array];
//
//    [QFFileHelper folderPath:KPATH filter:@"Net.h" block:^(NSString *path) {
//
//        NSString *fileName = [[path lastPathComponent] stringByDeletingPathExtension];
//        [arr1 addObject:fileName];
//
//        [QFFileHelper file:path block:^(NSString *lineStr) {
//
//            [arr2 addObject:lineStr];
//        }];
//
//    }];
//
//    NSLog(@"%@",arr1);
//    NSLog(@"%@",arr2);
}

- (void)example2 {
    //例子二
//    NSMutableArray *arr = [NSMutableArray array];
//
//    [QFFileHelper folderPath:KPATH filter:@"Net.h" block:^(NSString *path) {
//
//        NSString *fileName = [[path lastPathComponent] stringByDeletingPathExtension];
//        Class class = NSClassFromString(fileName);
//        TestNet *testNet = [[class alloc] init];
//
//        [arr addObject:testNet.baseUrl];
//    }];
//
//    NSLog(@"%@",arr);
}

@end
