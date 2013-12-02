//
//  RFFavicon.h
//  RFFaviconDemo
//
//  Created by Ricardo Funk on 12/2/13.
//  Copyright (c) 2013 Ricardo Funk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RFFavicon : NSObject

/**
 * Get a website icon
 * @param Website address (NSString)
 * @return Class method
 */
+(UIImage *)getIcon:(NSString *)website;

@end
