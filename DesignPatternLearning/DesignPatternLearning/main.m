//
//  main.m
//  ObserverDP
//
//  Created by XXXX on 2017/12/22.
//  Copyright © 2017年 XXXX Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WeatherCenter.h"
#import "ChaoyangObservatory.h"
#import "HaidianObservatory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ChaoyangObservatory *chaoyang = [[ChaoyangObservatory alloc] initWithWeather:[WeatherCenter center]];
        HaidianObservatory *haidian = [[HaidianObservatory alloc] initWithWeather:[WeatherCenter center]];

        [WeatherCenter center].weather = @"晴天";
        [WeatherCenter center].weather = @"阴天";
        [WeatherCenter center].weather = @"打雷";

        [[WeatherCenter center] deleteObserver:haidian];
        [WeatherCenter center].weather = @"台风";

        [[WeatherCenter center] deleteObserver:chaoyang];

        [WeatherCenter center].weather = @"冰雹";

        [[WeatherCenter center] addObserver:chaoyang];
        [[WeatherCenter center] addObserver:haidian];
        [WeatherCenter center].weather = @"雷雨";

    }
    return 0;
}
