//
//  ViewController.m
//  qiniuLive
//
//  Created by 爱尚家 on 2017/10/13.
//  Copyright © 2017年 爱尚家. All rights reserved.
//

#import "ViewController.h"
#import <PLPlayerKit/PLPlayerKit.h>
#import <HappyDNS/HappyDNS.h>

@interface ViewController ()<PLPlayerDelegate>
@property (nonatomic,strong)PLPlayer *player;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    http://pull2.inke.cn/live/1507875545483824.flv?ikHost=ws&ikOp=1&codecInfo=8192
    self.view.backgroundColor = [UIColor orangeColor];
    
   
    PLPlayerOption *option = [PLPlayerOption defaultOption];
    [option setOptionValue:@15 forKey:PLPlayerOptionKeyTimeoutIntervalForMediaPackets];
    NSURL *url = [NSURL URLWithString:@"http://pull2.inke.cn/live/1507875545483824.flv?ikHost=ws&ikOp=1&codecInfo=8192"];
    self.player = [PLPlayer playerWithURL:url option:option];
    self.player.delegate = self;
    [self.view addSubview:self.player.playerView];
    
    
    [self.player play];



}

//// 实现 <PLPlayerDelegate> 来控制流状态的变更
//- (void)player:(nonnull PLPlayer *)player statusDidChange:(PLPlayerStatus)state {
//    // 这里会返回流的各种状态，你可以根据状态做 UI 定制及各类其他业务操作
//    // 除了 Error 状态，其他状态都会回调这个方法
//
//
//    NSLog(@"当前的播放状态是-----------  %ld" ,(long)state);
//
//}
//
//- (void)player:(nonnull PLPlayer *)player stoppedWithError:(nullable NSError *)error {
//    // 当发生错误时，会回调这个方法
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
