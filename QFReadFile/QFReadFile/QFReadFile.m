//
//  QFReadFile.m
//  AddLogToFunc
//
//  Created by dqf on 2017/8/16.
//  Copyright © 2017年 DNE Technology Co.,Ltd. All rights reserved.
//

#import "QFReadFile.h"

@implementation QFReadFile

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
