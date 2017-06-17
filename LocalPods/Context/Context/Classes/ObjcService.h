//
//  ObjcService.h
//  Pods
//
//  Created by Ronaldo II Dorado on 17/6/17.
//
//

#import <Foundation/Foundation.h>

@protocol ObjcServiceProtocol <NSObject>

- (void)publicObjcServiceSample;

@end

@interface ObjcService : NSObject <ObjcServiceProtocol>


- (void)publicObjcServiceSample;

@end
