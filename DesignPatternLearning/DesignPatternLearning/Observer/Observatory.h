//
//  Observatory.h
//  ObserverDP
//
//  Created by XXXX on 2017/12/22.
//  Copyright © 2017年 XXXX Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObserverProtocol.h"

@interface Observatory : NSObject <ObserverProtocol>

- (instancetype)initWithWeather:(id <SubjectProtocol>)center;

@end
