//
//  QFReadFile.m
//  AddLogToFunc
//
//  Created by dqf on 2017/8/16.
//  Copyright © 2017年 DNE Technology Co.,Ltd. All rights reserved.
//

#import "QFReadFile.h"

@implementation QFReadFile

+ (void)folderPath:(NSString *)path block:(void(^)(NSString *path))callback {
    [self folderPath:path filter:nil block:callback];
}

+ (void)folderPath:(NSString *)path filter:(NSString *)filter block:(void(^)(NSString *path))callback {

    NSArray *files = [[NSFileManager defaultManager] subpathsOfDirectoryAtPath:path error:nil];
    files = [self getClassPathInArr:files filter:filter];
    
    if (callback) {
        for(NSString *path in files){
            callback(path);
        }
    }
}

+ (void)folderPath:(NSString *)path filterArr:(NSArray *)filterArr block:(void(^)(NSString *path))callback {
    
    NSArray *files = [[NSFileManager defaultManager] subpathsOfDirectoryAtPath:path error:nil];
    files = [self getClassPathInArr:files filterArr:filterArr];
    
    if (callback) {
        for(NSString *path in files){
            callback(path);
        }
    }
}

+ (NSArray *)getClassPathInArr:(NSArray *)arr filter:(NSString *)filter {
    NSMutableArray *pathArray = [NSMutableArray array];
    for(NSString *path in arr){
        NSString *lastComponent = [path lastPathComponent];
        if(filter && ![lastComponent hasSuffix:filter]) {
            continue;
        }
        [pathArray addObject:path];
    }
    return pathArray;
}

+ (NSArray *)getClassPathInArr:(NSArray *)arr filterArr:(NSArray *)filterArr {
    NSMutableArray *pathArray = [NSMutableArray array];
    for(NSString *path in arr) {
        NSString *lastComponent = [path lastPathComponent];
        for(NSString *filter in filterArr) {
            if(filter && ![lastComponent hasSuffix:filter]) {
                continue;
            }
            [pathArray addObject:path];
        }
    }
    return pathArray;
}

+ (void)file:(NSString *)path block:(void(^)(NSString *lineStr))callback {
    
    const char *filePath = [path UTF8String];
    FILE *fp1;//定义文件流指针，用于打开读取的文件
    char textStr[10241];//定义一个字符串数组，用于存储读取的字符
    fp1 = fopen(filePath,"r");//只读方式打开文件a.txt
    while(fgets(textStr,10240,fp1)!=NULL)//逐行读取fp1所指向文件中的内容到text中
    {
        NSString *lineStr = [NSString stringWithCString:textStr encoding:NSUTF8StringEncoding];
        if (callback && lineStr) {
            callback(lineStr);
        }
    }
    fclose(fp1);//关闭文件a.txt，有打开就要有关闭
}

@end
