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
    
    [self createFileAtPath:path contents:nil attributes:nil];
    
    NSFileHandle *outFile = [NSFileHandle fileHandleForWritingAtPath:path];
    
    //找到并定位到outFile的末尾位置(在此后追加文件)
    [outFile seekToEndOfFile];
    
    NSData *buffer = [content dataUsingEncoding:NSUTF8StringEncoding];
    [outFile writeData:buffer];
    //关闭读写文件
    [outFile closeFile];
}

+ (void)createFileAtPath:(NSString *)path contents:(nullable NSData *)data attributes:(nullable NSDictionary<NSString *, id> *)attr {
    
    NSArray *arr = [path pathComponents];
    //跳过lastPathComponent
    if (arr.count >= 2) {
        for (NSInteger i=0; i<arr.count-1; i++) {
            NSRange range = NSMakeRange(0, i+1);
            NSArray *tmpArr = [arr subarrayWithRange:range];
            NSString *tmpPath = [NSString pathWithComponents:tmpArr];
            
            if (![[NSFileManager defaultManager] fileExistsAtPath:tmpPath]) {
                [[NSFileManager defaultManager] createDirectoryAtPath:tmpPath withIntermediateDirectories:YES attributes:nil error:nil];
            }
            
        }
    }
    
    if (![[NSFileManager defaultManager] fileExistsAtPath:path]) {
        [[NSFileManager defaultManager] createFileAtPath:path contents:data attributes:attr];
    }
    
}

@end
