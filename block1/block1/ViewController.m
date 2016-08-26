//
//  ViewController.m
//  block1
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController.h"
#import "MineOperation.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageview;

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
     MineOperation *op = [MineOperation mineoperation:@"https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1864751896,666907639&fm=116&gp=0.jpg"];
    op.myblock = ^(UIImage* image){
        _imageview.image = image;
    };
    [queue addOperation:op];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
