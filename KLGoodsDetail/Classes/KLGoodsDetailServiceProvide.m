//
//  KLGoodsDetailServiceProvide.m
//  KLGoodsDetail
//
//  Created by Kevin on 2016/12/29.
//  Copyright © 2016年 KevinLab. All rights reserved.
//

#import "KLGoodsDetailServiceProvide.h"
#import <KLGoodsDetailServiceProtocol/KLGoodsDetailServiceProtocol.h>
#import <KLProtocolManager/KLProtocolManager.h>
#import "KLGoodsDetailViewController.h"

@interface KLGoodsDetailServiceProvide () <KLGoodsDetailServiceProtocol>

@end

@implementation KLGoodsDetailServiceProvide

+ (void)load
{
    [KLProtocolManager registerServiceProvider:[[self alloc] init] forProtocol:@protocol(KLGoodsDetailServiceProtocol)];
}

- (UIViewController *)goodsDetailViewControllerWithGoodsId:(NSString *)goodsId goodsName:(NSString *)goodsName
{
    KLGoodsDetailViewController *viewController = [[KLGoodsDetailViewController alloc] initWithGoodsId:goodsId goodsName:goodsName];
    return viewController;
}

@end
