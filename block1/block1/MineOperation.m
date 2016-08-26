


//
//  MineOperation.m
//  block1
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "MineOperation.h"

@implementation MineOperation
-(void)main
{
    NSURL *url = [NSURL URLWithString:self.imageStr];
    NSData *data = [NSData dataWithContentsOfURL:url];
    UIImage *image = [UIImage imageWithData:data];
    [[NSOperationQueue mainQueue]addOperationWithBlock:^{
        _myblock(image);
        
    }];
    
}
+(instancetype)mineoperation :(NSString*)imageStr
{
    MineOperation *op = [[MineOperation alloc]init];
    op.imageStr = imageStr;
       return op;
}
@end
