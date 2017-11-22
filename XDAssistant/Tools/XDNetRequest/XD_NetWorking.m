//
//  XDNetWorking.m
//  小贷助手
//
//  Created by Yanice on 2017/11/20.
//  Copyright © 2017年 张洋. All rights reserved.
//

#import "XD_NetWorking.h"

@implementation XD_NetWorking {
    
    AFHTTPSessionManager *manager;
}

// 定义内部 host
#define XD_MAINURL                  @""

// 定义AF能够接受的响应类型
#define RESPONSE_CONTENT_TYPE       [NSSet setWithObjects:@"application/json",@"text/json",@"text/javascript",@"text/html",@"text/plain",@"image/jpeg",@"",nil]


static XD_NetWorking *net = nil;

+ (instancetype)shareInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        net = [[XD_NetWorking alloc] init];
    });
    return net;
}

- (instancetype)init {
    
    if ([super init]) {
        manager = [AFHTTPSessionManager manager];
        manager.responseSerializer.acceptableContentTypes = RESPONSE_CONTENT_TYPE;
        manager.requestSerializer=[AFHTTPRequestSerializer serializer];
        [manager.requestSerializer willChangeValueForKey:@"timeoutInterval"];
        manager.requestSerializer.timeoutInterval = 8;
        [manager.requestSerializer didChangeValueForKey:@"timeoutInterval"];
    }
    return self;
}

- (NSString *)createRequestURLString:(NSString *)urlString {
    
    NSString *requestURLString = nil;
    if ([urlString rangeOfString:@"http"].location != NSNotFound) { // 请求地址中包含http，说明不是内部结构
        requestURLString = urlString;
    }else {
        requestURLString = [NSString stringWithFormat:@"%@/%@",XD_MAINURL,urlString];
    }
    return requestURLString;
}

- (NSURLSessionDataTask *)xd_getNetRequest:(NSString *)urlString parameter:(NSDictionary *)parameter success:(void (^)(NSURLSessionTask *, id))success failure:(void (^)(NSURLSessionTask *, NSError *))failure {
    return [manager GET:urlString parameters:parameter success:success failure:failure];
}

- (NSURLSessionDataTask *)xd_postNetRequest:(NSString *)urlString parameter:(NSDictionary *)parameter success:(void (^)(NSURLSessionTask *, id))success failure:(void (^)(NSURLSessionTask *, NSError *))failure {
    return [manager POST:urlString parameters:parameter success:success failure:failure];
}

- (NSURLSessionDataTask *)xd_netRequest:(NSString *)urlString requestMethod:(XD_NetMothed)mothed parameter:(NSDictionary *)parameter success:(void (^)(NSURLSessionTask *, id))success failure:(void (^)(NSURLSessionTask *, NSError *))failure {
    
    switch (mothed) {
        case XD_NetGet:
            return [self xd_getNetRequest:urlString parameter:parameter success:success failure:failure];
            break;
        case XD_NetPost:
            return [self xd_postNetRequest:urlString parameter:parameter success:success failure:failure];
            break;
        default:
            break;
    }
}

@end
