


//
//  MineOperation.m
//  代理
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "MineOperation.h"

@implementation MineOperation
-(void)main
{
    NSURL *url = [NSURL URLWithString:_imageStr];
    NSData *data = [NSData dataWithContentsOfURL:url];
    UIImage *image = [UIImage imageWithData:data];
    [[NSOperationQueue mainQueue]addOperationWithBlock:^{
        if ([_delegate respondsToSelector:@selector(senderImage:)]) {
            [_delegate senderImage:image];
        }
        
    }];
}
@end
