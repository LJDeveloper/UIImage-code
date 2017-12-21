//
//  ViewController.m
//  codeImage
//
//  Created by 静东 on 2017/12/21.
//  Copyright © 2017年 沸腾医疗. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+code.h"
@interface ViewController ()
@end
@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //条形码
    UIImage *barImage = [UIImage barcodeImageWithContent:@"123456"
                                           codeImageSize:CGSizeMake(300, 90)
                                                     red:0
                                                   green:0
                                                    blue:0];
    UIImageView *barImageView = [[UIImageView alloc] initWithFrame:CGRectMake(self.view.bounds.size.width/2-300/2, 100, 300, 90)];
    barImageView.image = barImage;
    [self.view addSubview:barImageView];
    
    //二维码
    UIImage *qrCodeImage = [UIImage qrCodeImageWithContent:@"15280107764"
                                             codeImageSize:200
                                                      logo:[UIImage imageNamed:@"avatar"]
                                                 logoFrame:CGRectMake(75, 75, 50, 50)
                                                       red:0
                                                     green:0
                                                      blue:0];
    UIImageView *qrCodeImageView = [[UIImageView alloc] initWithFrame:CGRectMake(self.view.bounds.size.width/2-200/2, CGRectGetMaxY(barImageView.frame)+20, 200, 200)];
    qrCodeImageView.image = qrCodeImage;
    [self.view addSubview:qrCodeImageView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
