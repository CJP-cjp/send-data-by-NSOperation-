//
//  MineOperaton.h
//  通知
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MineOperaton : NSOperation
@property(copy,nonatomic)NSString*imageStr;
+(instancetype)mineoperation :(NSString*)imageStr;
@end
