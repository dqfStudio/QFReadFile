//
//  QFWriteFile.h
//  QFReadFile
//
//  Created by dqf on 2017/8/18.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import "NSStringUtil.h"

@interface QFWriteFile : NSObject

+ (void)file:(NSString *)path append:(NSString *)content;
+ (void)file:(NSString *)path append:(NSString *)content wrap:(BOOL)isWrap;

@end
