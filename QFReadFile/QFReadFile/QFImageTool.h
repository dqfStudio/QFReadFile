//
//  QFImageTool.h
//  QFReadFile
//
//  Created by dqf on 2017/8/30.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import <Foundation/Foundation.h>

#define KFolderPath @"/Users/issuser/Desktop/WorkPlace/Test-MiguMusic-iOS/MGMobileMusic"

@interface QFImageTool : NSObject

+ (NSArray *)allPngImages;
+ (NSArray *)allPNGImages;

+ (NSArray *)allJpgImages;
+ (NSArray *)allJPGImages;

+ (NSArray *)allJpegImages;
+ (NSArray *)allJPEGImages;

+ (NSArray *)allGifImages;
+ (NSArray *)allGIFImages;

+ (NSArray *)allSvgImages;
+ (NSArray *)allSVGImages;

+ (NSArray *)allPdfImages;
+ (NSArray *)allPDFImages;

+ (NSArray *)allWebpImages;

+ (NSArray *)all1XImages;
+ (NSArray *)all2XImages;
+ (NSArray *)all3XImages;

+ (NSArray *)allUseXImages;
+ (NSArray *)allUsexImages;

+ (NSArray *)allUnusedImages;

+ (void)allOtherImages;

+ (void)toPNGImage;
+ (void)toJPGImage;

+ (NSArray *)allMP3;

@end
