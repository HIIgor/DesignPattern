//
//  ObserverProtocol.h
//  ObserverDP
//
//  Created by XXXX on 2017/12/22.
//  Copyright © 2017年 XXXX Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ObserverProtocol <NSObject>

- (void)weatherChanged:(NSString *)weather;

@end

@protocol SubjectProtocol <NSObject>

- (void)addObserver:(id <ObserverProtocol>)observer;
- (void)deleteObserver:(id <ObserverProtocol>)observer;
- (void)notifyObservers;

@end
