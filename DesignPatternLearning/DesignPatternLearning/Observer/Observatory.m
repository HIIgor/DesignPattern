//
//  Observatory.m
//  ObserverDP
//
//  Created by XXXX on 2017/12/22.
//  Copyright © 2017年 XXXX Inc. All rights reserved.
//

#import "Observatory.h"

@interface Observatory ()

@property (nonatomic, weak) id <SubjectProtocol> weatherCenter;

@end

@implementation Observatory

- (instancetype)initWithWeather:(id <SubjectProtocol>)center {
    self = [super init];
    if (self) {
        [center addObserver:self];
        self.weatherCenter = center;
    }

    return self;
}

- (void)weatherChanged:(NSString *)weather {
//    NSLog(@"天气啦 现在的天气 =====> %@", weather);
}

@end
