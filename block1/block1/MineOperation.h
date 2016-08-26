//
//  MineOperation.h
//  block1
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MineOperation : NSOperation
@property(copy,nonatomic)void (^myblock)(UIImage *image);
+(instancetype)mineoperation :(NSString*)imageStr;
@property(copy,nonatomic)NSString *imageStr;
@end
