//
//  QFReadFile.h
//  AddLogToFunc
//
//  Created by dqf on 2017/8/16.
//  Copyright © 2017年 DNE Technology Co.,Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QFReadFile : NSObject

+ (void)file:(NSString *)path block:(void(^)(NSString *lineStr))callback;

@end
