//
//  ViewController.m
//  代理
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController.h"
#import "MineOperation.h"
@interface ViewController ()<MineOperationDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self loadData];
}
-(void)loadData
{
    NSOperationQueue *queue = [[NSOperationQueue alloc]init];
    MineOperation *op = [[MineOperation alloc]init];
    op.imageStr = @"https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1864751896,666907639&fm=116&gp=0.jpg";
    op.delegate = self;
    [queue addOperation:op];
}
-(void)senderImage:(UIImage *)image
{
    _imageView.image = image;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
