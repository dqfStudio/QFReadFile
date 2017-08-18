//
//  QFWriteFile.m
//  QFReadFile
//
//  Created by dqf on 2017/8/18.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import "QFWriteFile.h"

@implementation QFWriteFile

+ (void)file:(NSString *)path append:(NSString *)content {
    if (![[NSFileManager defaultManager] fileExistsAtPath:path]) {
        [[NSFileManager defaultManager] createFileAtPath:path contents:[content dataUsingEncoding:NSUTF8StringEncoding] attributes:nil];
    }
    
    NSFileHandle *outFile = [NSFileHandle fileHandleForWritingAtPath:path];
    
    //找到并定位到outFile的末尾位置(在此后追加文件)
    [outFile seekToEndOfFile];
    
    NSData *buffer = [content dataUsingEncoding:NSUTF8StringEncoding];
    [outFile writeData:buffer];
    //关闭读写文件
    [outFile closeFile];
}

@end
