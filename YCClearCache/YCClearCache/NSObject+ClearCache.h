//
//  NSObject+ClearCache.h
//  YCClearCache
//
//  Created by Berton on 15/12/21.
//  Copyright © 2015年 Berton. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (ClearCache)

/*
 path:文件或者文件夹路径
 completion:计算完成回调,计算完成就会调用这个block,并且把值传给你
 */
+ (void)getFileCacheSizeWithPath:(NSString *)path completion:(void(^)(NSInteger total))completion;

- (void)getFileCacheSizeWithPath:(NSString *)path completion:(void(^)(NSInteger total))completion;

// 获取cache路径
- (NSString *)cachePath;
+ (NSString *)cachePath;

// 删除cache里面的缓存
- (void)removeCacheWithCompletion:(void(^)())completion;
+ (void)removeCacheWithCompletion:(void(^)())completion;


@end
