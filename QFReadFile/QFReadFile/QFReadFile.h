//
//  QFReadFile.h
//  AddLogToFunc
//
//  Created by dqf on 2017/8/16.
//  Copyright © 2017年 DNE Technology Co.,Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QFReadFile : NSObject

+ (void)folderPath:(NSString *)path block:(void(^)(NSString *path))callback;

+ (void)folderPath:(NSString *)path filter:(NSString *)filter block:(void(^)(NSString *path))callback;

+ (void)file:(NSString *)path block:(void(^)(NSString *lineStr))callback;

@end
