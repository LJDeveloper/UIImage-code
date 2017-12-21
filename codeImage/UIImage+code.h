//
//  UIImage+code.h
//  codeImage
//
//  Created by 静东 on 2017/12/21.
//  Copyright © 2017年 沸腾医疗. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (code)
+ (UIImage *)qrCodeImageWithContent:(NSString *)content
                      codeImageSize:(CGFloat)size
                               logo:(UIImage *)logo
                          logoFrame:(CGRect)logoFrame
                                red:(CGFloat)red
                              green:(CGFloat)green
                               blue:(NSInteger)blue;
//生成条形码
+ (UIImage *)barcodeImageWithContent:(NSString *)content
                       codeImageSize:(CGSize)size
                                 red:(CGFloat)red
                               green:(CGFloat)green
                                blue:(NSInteger)blue;
@end
