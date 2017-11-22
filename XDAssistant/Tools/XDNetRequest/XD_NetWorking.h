//
//  XDNetWorking.h
//  小贷助手
//
//  Created by Yanice on 2017/11/20.
//  Copyright © 2017年 张洋. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, XD_NetMothed) {
    XD_NetGet,
    XD_NetPost
};

@interface XD_NetWorking : NSObject

+ (instancetype)shareInstance;

// 发起网络请求
- (NSURLSessionDataTask *)xd_netRequest:(NSString *)urlString requestMethod:(XD_NetMothed)mothed parameter:(NSDictionary *)parameter success:(void (^)(NSURLSessionTask *task, id))success failure:(void (^)(NSURLSessionTask *task, NSError *error))failure;

@end
