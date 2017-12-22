//
//  WeatherCenter.m
//  ObserverDP
//
//  Created by XXXX on 2017/12/22.
//  Copyright © 2017年 XXXX Inc. All rights reserved.
//

#import "WeatherCenter.h"

@interface WeatherCenter ()

@property (nonatomic, strong) NSMutableArray *observers;

@end

@implementation WeatherCenter

+ (instancetype)center {
    static WeatherCenter *center;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        center = [[WeatherCenter alloc] init];
        center.observers = [[NSMutableArray alloc] init];
        center.weather = @"大风";
    });

    return center;
}

- (void)addObserver:(id<ObserverProtocol>)observer {
    if (![self.observers containsObject:observer]) {
        [self.observers addObject:observer];
    }
}

- (void)deleteObserver:(id<ObserverProtocol>)observer {
    if ([self.observers containsObject:observer]) {
        [self.observers removeObject:observer];
    }
}

- (void)notifyObservers {
    [self.observers enumerateObjectsUsingBlock:^(id <ObserverProtocol> _Nonnull observer, NSUInteger idx, BOOL * _Nonnull stop) {
        [observer weatherChanged:self.weather];
    }];
}

- (void)setWeather:(NSString *)weather {
    if (![_weather isEqualToString:weather]) {
        _weather = weather;
        [self notifyObservers];
    }
}

@end
