//
//  ViewController.m
//  YCClearCache
//
//  Created by Berton on 15/12/21.
//  Copyright © 2015年 Berton. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+ClearCache.h"

@interface ViewController ()

/** 缓存大小*/
@property (nonatomic,assign) NSInteger total;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 获取cachePath文件缓存
    [self getFileCacheSizeWithPath:self.cachePath completion:^(NSInteger total) {
        
        _total = total;
        
        NSLog(@"缓存尺寸大小为：%ld",_total);
        
    }];
    

}



- (IBAction)clearCache {
    
    // 清空缓存,就是把Cache文件夹直接删掉
    // 删除比较耗时
    [self removeCacheWithCompletion:^{
        _total = 0;
        NSLog(@"缓存尺寸大小为：%ld",_total);
    }];
}

@end
