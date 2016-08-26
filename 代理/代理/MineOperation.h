//
//  MineOperation.h
//  代理
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol MineOperationDelegate<NSObject>
-(void)senderImage:(UIImage*)image;
@end
@interface MineOperation : NSOperation
@property(copy,nonatomic)NSString *imageStr;
@property(weak,nonatomic)id<MineOperationDelegate> delegate;
@end
