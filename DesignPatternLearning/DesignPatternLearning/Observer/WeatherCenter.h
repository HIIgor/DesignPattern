//
//  WeatherCenter.h
//  ObserverDP
//
//  Created by XXXX on 2017/12/22.
//  Copyright © 2017年 XXXX Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObserverProtocol.h"

@interface WeatherCenter : NSObject <SubjectProtocol>

+ (instancetype)center;

@property (nonatomic, copy) NSString *weather;

@end
