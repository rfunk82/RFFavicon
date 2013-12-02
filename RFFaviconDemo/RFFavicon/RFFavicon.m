//
//  RFFavicon.m
//  RFFaviconDemo
//
//  Created by Ricardo Funk on 12/2/13.
//  Copyright (c) 2013 Ricardo Funk. All rights reserved.
//

#import "RFFavicon.h"

@implementation RFFavicon

+(UIImage *)getIcon:(NSString *)website {
    
    // Get the icon from the web
    NSString *fixedWeb = [[NSString alloc] initWithString:website];
    
    // We need to add "http://" if the user didn't include it
    if (![website hasPrefix:@"http://"])
    {
        fixedWeb = [NSString stringWithFormat:@"http://%@", website];
    }
    
    // We get the icon from the web
    NSString *basicCode = [NSString stringWithFormat:@"http://g.etfv.co/%@", fixedWeb];
    NSURL *myURL=[NSURL URLWithString: basicCode];
    NSData *myData=[NSData dataWithContentsOfURL:myURL];
    UIImage *myImage = [UIImage imageWithData:myData];
    
    // Resize the icon image
    CGSize imageSize = CGSizeMake(25,25);
    UIGraphicsBeginImageContext( imageSize );
    [myImage drawInRect:CGRectMake(0,0,imageSize.width,imageSize.height)];
    UIImage *iconImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    NSData *iconData = [NSData dataWithData:UIImagePNGRepresentation(iconImage)];
    iconImage = [UIImage imageWithData:iconData];
    
    return iconImage;
}

@end
