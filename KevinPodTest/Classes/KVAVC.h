//
//  KVAVC.h
//  KVRouter
//
//  Created by mac on 2018/7/5.
//  Copyright © 2018年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
//
//@interface KVAVC : UIViewController
//
//@end


typedef void(^TestBlock)(NSString *);

@protocol KVAVCDelegate<NSObject>

- (void)getTheTestData:(NSString *)data;

@end

@interface KVAVC : UIViewController
/** titile */
//@property (nonatomic, copy) NSString *vcTitle;
@property (nonatomic,weak) id<KVAVCDelegate> delegate;
@property (nonatomic,copy) TestBlock testBlock;
@end
