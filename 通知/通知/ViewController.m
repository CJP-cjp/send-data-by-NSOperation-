//
//  ViewController.m
//  通知
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController.h"
#import "MineOperaton.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self loadData];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(sendimage:) name:@"image" object:nil];    
}
-(void)loadData
{
    NSOperationQueue *queue = [[NSOperationQueue alloc]init];
    MineOperaton *op = [[MineOperaton alloc]init];
    op.imageStr = @"https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1864751896,666907639&fm=116&gp=0.jpg";
   [queue addOperation:op];
}
-(void)sendimage:(NSNotification*)notic
{
    _imageView.image = notic.userInfo[@"imageKey"];
}
-(void)dealloc
{
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
