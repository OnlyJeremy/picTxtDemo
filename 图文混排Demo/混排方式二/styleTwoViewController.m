//
//  styleTwoViewController.m
//  图文混排Demo
//
//  Created by Jeremy on 16/8/31.
//  Copyright © 2016年 Jeremy. All rights reserved.
//

#import "styleTwoViewController.h"
#import "Utility.h"
@interface styleTwoViewController ()

@end

@implementation styleTwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    NSString *content = @"蓝鸥——中国移动互联网行业领军品牌[得意][酷]";
    NSMutableAttributedString *attrStr = [Utility emotionStrWithString:content];
    _firstLabel.attributedText= attrStr;
    _firstLabel.font = [UIFont systemFontOfSize:10];
    
    NSString *text = @"<蓝鸥>蓝鸥是一家集产、学、研为一体的综合性移动互联网研发培训机构，致力于iOS开发、Unity3D游戏开发、Android开发和HTML5前端开发等软件人才的培养。蓝鸥强大的师资阵容，纯净的教育理念，严格的管理制度，使其成为了美国苹果公司AATC认证官方授权培训中心、Unity官方授权培训中心，也是目前国内仅有的一家”两大官方授权于一身“的移动互联网培训企业!!";
    NSMutableAttributedString *attrStr2 = [Utility exchangeString:@"<蓝鸥>" withText:text imageName:@"lanou"];
    _secondLabel.attributedText = attrStr2;
    _secondLabel.font = [UIFont systemFontOfSize:20];
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
