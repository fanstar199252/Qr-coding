//
//  UIImage+QRCode.h
//  QRCode_Demo
//
//  Created by fanstar on 15/11/17.
//  Copyright © 2015年 fanstar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (QRCode)

+ (UIImage *)qrImageByContent:(NSString *)content;

//pre
+ (UIImage *)qrImageWithContent:(NSString *)content size:(CGFloat)size;
/**
 *   色值 0~255
 *
 */
+ (UIImage *)qrImageWithContent:(NSString *)content size:(CGFloat)size red:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue;



+ (UIImage *)qrImageWithContent:(NSString *)content logo:(UIImage *)logo size:(CGFloat)size red:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue;


@end
