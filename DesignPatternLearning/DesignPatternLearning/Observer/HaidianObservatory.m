//
//  HaidianObservatory.m
//  ObserverDP
//
//  Created by XXXX on 2017/12/22.
//  Copyright © 2017年 XXXX Inc. All rights reserved.
//

#import "HaidianObservatory.h"

@implementation HaidianObservatory

- (void)weatherChanged:(NSString *)weather {
    NSLog(@"海淀区气象台报告: 北京的天气情况为 ===> %@", weather);
}

@end
