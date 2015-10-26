//
//  ViewController.m
//  MyVidoDemo
//
//  Created by qianfeng on 15/10/15.
//  Copyright (c) 2015年 TonyAng. All rights reserved.
//

#import "ViewController.h"
#import "KSYDefine.h"
#import "VideoViewController.h"
@interface ViewController ()
@property (nonatomic, strong) KSYPlayer *player;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, 100, 100);
    button.center = self.view.center;
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}
- (void)button:(UIButton *)button {
    VideoViewController *video = [VideoViewController new];
    video.videoUrl = [NSURL URLWithString:@"http://hc24.aipai.com/user/737/30865737/5862331/card/24126438/card.mp4?l=a"];
    [self presentViewController:video animated:YES completion:^{
        
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
