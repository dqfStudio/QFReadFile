//
//  QFImageTool.m
//  QFReadFile
//
//  Created by dqf on 2017/8/30.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import "QFImageTool.h"
#import "QFFileHelper.h"
#import "NSStringUtil.h"

@implementation QFImageTool

+ (NSArray *)allPngImages {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath:KFolderPath filter:@".png" block:^(NSString *path) {
        [mutableArr addObject:KFolderPath.append(path)];
    }];
    return mutableArr;
}

+ (NSArray *)allPNGImages {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath:KFolderPath filter:@".PNG" block:^(NSString *path) {
        [mutableArr addObject:KFolderPath.append(path)];
    }];
    return mutableArr;
}

+ (NSArray *)allJpgImages {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath:KFolderPath filter:@".jpg" block:^(NSString *path) {
        [mutableArr addObject:KFolderPath.append(path)];
    }];
    return mutableArr;
}

+ (NSArray *)allJPGImages {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath:KFolderPath filter:@".JPG" block:^(NSString *path) {
        [mutableArr addObject:KFolderPath.append(path)];
    }];
    return mutableArr;
}

+ (NSArray *)allJpegImages {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath:KFolderPath filter:@".jpeg" block:^(NSString *path) {
        [mutableArr addObject:KFolderPath.append(path)];
    }];
    return mutableArr;
}

+ (NSArray *)allJPEGImages {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath:KFolderPath filter:@".JPEG" block:^(NSString *path) {
        [mutableArr addObject:KFolderPath.append(path)];
    }];
    return mutableArr;
}

+ (NSArray *)allGifImages {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath:KFolderPath filter:@".git" block:^(NSString *path) {
        [mutableArr addObject:KFolderPath.append(path)];
    }];
    return mutableArr;
}

+ (NSArray *)allGIFImages {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath:KFolderPath filter:@".GIF" block:^(NSString *path) {
        [mutableArr addObject:KFolderPath.append(path)];
    }];
    return mutableArr;
}

+ (NSArray *)allSvgImages {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath:KFolderPath filter:@".svg" block:^(NSString *path) {
        [mutableArr addObject:KFolderPath.append(path)];
    }];
    return mutableArr;
}

+ (NSArray *)allSVGImages {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath:KFolderPath filter:@".SVG" block:^(NSString *path) {
        [mutableArr addObject:KFolderPath.append(path)];
    }];
    return mutableArr;
}

+ (NSArray *)allPdfImages {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath:KFolderPath filter:@".pdf" block:^(NSString *path) {
        [mutableArr addObject:KFolderPath.append(path)];
    }];
    return mutableArr;
}

+ (NSArray *)allPDFImages {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath:KFolderPath filter:@".PDF" block:^(NSString *path) {
        [mutableArr addObject:KFolderPath.append(path)];
    }];
    return mutableArr;
}

+ (NSArray *)allWebpImages {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath:KFolderPath filter:@".Webp" block:^(NSString *path) {
        [mutableArr addObject:KFolderPath.append(path)];
    }];
    return mutableArr;
}

+ (NSArray *)all1XImages {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath:KFolderPath filter:@"@1X.png" block:^(NSString *path) {
        [mutableArr addObject:KFolderPath.append(path)];
    }];
    [QFFileHelper folderPath:KFolderPath filter:@"@1X.jpg" block:^(NSString *path) {
        [mutableArr addObject:KFolderPath.append(path)];
    }];
    return mutableArr;
}

+ (NSArray *)all2XImages {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath:KFolderPath filter:@"@2X.png" block:^(NSString *path) {
        [mutableArr addObject:KFolderPath.append(path)];
    }];
    [QFFileHelper folderPath:KFolderPath filter:@"@2X.jpg" block:^(NSString *path) {
        [mutableArr addObject:KFolderPath.append(path)];
    }];
    return mutableArr;
}

+ (NSArray *)all3XImages {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath:KFolderPath filter:@"@3X.png" block:^(NSString *path) {
        [mutableArr addObject:KFolderPath.append(path)];
    }];
    [QFFileHelper folderPath:KFolderPath filter:@"@3X.jpg" block:^(NSString *path) {
        [mutableArr addObject:KFolderPath.append(path)];
    }];
    return mutableArr;
}

+ (NSArray *)allUseXImages {
    
    NSMutableArray *mutableArr = [NSMutableArray array];
    
    [QFFileHelper folderPath:KFolderPath filter:@".h" block:^(NSString *path) {
        
        __block BOOL contain = NO;
        
        [QFFileHelper file:KFolderPath.append(path) block:^(NSString *lineStr) {
            
            NSArray *filterArr = @[@"@1X.png", @"@2X.png", @"@3X.png", @"@1X.jpg", @"@2X.jpg", @"@3X.jpg"];
            if (lineStr.containsStrArr(filterArr)) {
                contain = YES;
            }
        }];
        if (contain) {
            //不包含
            [mutableArr addObject:KFolderPath.append(path)];
        }
    }];
    [QFFileHelper folderPath:KFolderPath filter:@".m" block:^(NSString *path) {
        
        __block BOOL contain = NO;
        
        [QFFileHelper file:KFolderPath.append(path) block:^(NSString *lineStr) {
            
            NSArray *filterArr = @[@"@1X.png", @"@2X.png", @"@3X.png", @"@1X.jpg", @"@2X.jpg", @"@3X.jpg"];
            if (lineStr.containsStrArr(filterArr)) {
                contain = YES;
            }
        }];
        if (contain) {
            //不包含
            [mutableArr addObject:KFolderPath.append(path)];
        }
    }];
    return mutableArr;
}

+ (NSArray *)allUsexImages {
    
    NSMutableArray *mutableArr = [NSMutableArray array];
    
    [QFFileHelper folderPath:KFolderPath filter:@".h" block:^(NSString *path) {
        
        __block BOOL contain = NO;
        
        [QFFileHelper file:KFolderPath.append(path) block:^(NSString *lineStr) {

            NSArray *filterArr = @[@"@1x.png", @"@2x.png", @"@3x.png", @"@1x.jpg", @"@2x.jpg", @"@3x.jpg"];
            if (lineStr.containsStrArr(filterArr)) {
                contain = YES;
            }
        }];
        if (contain) {
            //不包含
            [mutableArr addObject:KFolderPath.append(path)];
        }
    }];
    [QFFileHelper folderPath:KFolderPath filter:@".m" block:^(NSString *path) {
        
        __block BOOL contain = NO;
        
        [QFFileHelper file:KFolderPath.append(path) block:^(NSString *lineStr) {
            
            NSArray *filterArr = @[@"@1x.png", @"@2x.png", @"@3x.png", @"@1x.jpg", @"@2x.jpg", @"@3x.jpg"];
            if (lineStr.containsStrArr(filterArr)) {
                contain = YES;
            }
        }];
        if (contain) {
            //不包含
            [mutableArr addObject:KFolderPath.append(path)];
        }
    }];
    return mutableArr;
}

+ (NSArray *)allUnusedImages {
    
    NSMutableArray *mutableArr1 = [NSMutableArray array];
    NSMutableArray *mutableArr2 = [NSMutableArray array];
    NSMutableArray *allFilterArr = [NSMutableArray array];
    
    [QFFileHelper folderPath:KFolderPath filterArr:@[@".png", @".jgp"] block:^(NSString *path) {
        [mutableArr1 addObject:KFolderPath.append(path)];
    }];
    
    [QFFileHelper folderPath:KFolderPath filterArr:@[@".h", @".m", @".mm", @".c", @".cpp", @".xib", @".json"] block:^(NSString *path) {
        [allFilterArr addObject:KFolderPath.append(path)];
    }];
    
    NSUInteger count = allFilterArr.count;
    
    for (int i=0; i<count; i++) {
        
        NSLog(@"%lu/%d", count,i);
        NSString *path = allFilterArr[i];
        NSString *contentStr = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
        
        for (NSString *imgStr in mutableArr1) {
            
            NSString *tmpImgStr = [imgStr lastPathComponent].replace(@"@1x", @"").replace(@"@2x", @"").replace(@"@3x", @"");
            NSString *str1 = nil;
            NSString *str2 = nil;
            NSString *str3 = nil;
            
            if ([[path lastPathComponent] hasSuffix:@".xib"] || [[path lastPathComponent] hasSuffix:@".json"]) {
                
                str1 = NSString.append(@"\"").append([imgStr lastPathComponent]).append(@"\"");
                str2 = NSString.append(@"\"").append(tmpImgStr).append(@"\"");
                
                if ([imgStr hasSuffix:@"png"]) {
                    str3 = NSString.append(@"\"").append(tmpImgStr).append(@"\"").replace(@".png", @"");
                }else if ([imgStr hasSuffix:@"jpg"]) {
                    str3 = NSString.append(@"\"").append(tmpImgStr).append(@"\"").replace(@".jpg", @"");
                }
                
            }else {
                
                str1 = NSString.append(@"UIImage imageNamed:@\"").append([imgStr lastPathComponent]).append(@"\"");
                str2 = NSString.append(@"UIImage imageNamed:@\"").append(tmpImgStr).append(@"\"");
                
                if ([imgStr hasSuffix:@"png"]) {
                    str3 = NSString.append(@"UIImage imageNamed:@\"").append(tmpImgStr).append(@"\"").replace(@".png", @"");
                }else if ([imgStr hasSuffix:@"jpg"]) {
                    str3 = NSString.append(@"UIImage imageNamed:@\"").append(tmpImgStr).append(@"\"").replace(@".jpg", @"");
                }
                
            }
            
            BOOL containsObject = NO;
            if (str1 && [contentStr containsString:str1]) {
                containsObject = YES;
            }else if (str2 && [contentStr containsString:str2]) {
                containsObject = YES;
            }else if (str3 && [contentStr containsString:str3]) {
                containsObject = YES;
            }
            
            if (containsObject && ![mutableArr2 containsObject:imgStr]) {
                [mutableArr2 addObject:imgStr];
            }
        }
    }
    
    for (NSString *imgStr in mutableArr2) {
        if ([mutableArr1 containsObject:imgStr]) {
            [mutableArr1 removeObject:imgStr];
        }
    }
    
    return mutableArr1;
}

+ (void)allOtherImages {
    
}

+ (void)toPNGImage {
    
}

+ (void)toJPGImage {
    
}

+ (NSArray *)allMP3 {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath:KFolderPath filter:@".mp3" block:^(NSString *path) {
        [mutableArr addObject:KFolderPath.append(path)];
    }];
    return mutableArr;
}

@end
