//
//  MineOperaton.m
//  通知
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "MineOperaton.h"

@implementation MineOperaton
-(void)main
{
    NSURL *url = [NSURL URLWithString:_imageStr];
    NSData *data = [NSData dataWithContentsOfURL:url];
    UIImage *image = [UIImage imageWithData:data];
    [[NSOperationQueue mainQueue]addOperationWithBlock:^{

      
        [[ NSNotificationCenter defaultCenter]postNotificationName:@"image" object:nil userInfo:@{@"imageKey":image}];
    }];

}
+(instancetype)mineoperation :(NSString*)imageStr
{
    MineOperaton *op = [[MineOperaton alloc]init];
    op.imageStr = imageStr;
    return op;
}
@end
