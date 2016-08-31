//
//  styleThreeViewController.m
//  图文混排Demo
//
//  Created by Jeremy on 16/8/31.
//  Copyright © 2016年 Jeremy. All rights reserved.
//

#import "styleThreeViewController.h"
#import "CTTextDisplayView.h"
@interface styleThreeViewController ()<CTTextDisplayViewDelegate>

@end

@implementation styleThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    /**
     * 所有标签的用法
     * <tag type='image' value='img001'>这是一张图片</tag>  (type='image/video/link')
     * <a href='http://www.lanou3g.com'>XXX</a>    链接XXX
     * <at>猪八戒</at>                            @猪八戒
     * <subject>旅游节</subject>                  #旅游节#
     * <key>张三</key>                            张三
     * @{张三}                                    @张三
     * #{旅游节}                                  #旅游节#
     * ${李四}                                    李四
     * @{张三:0012}                               @张三
     * #{过年了:0011}                             #过年了#
     *
     */
    
    NSString * text = @"<a href='http://www.lanou3g.com'>iOS学习</a>的体系${蓝鸥}供${蓝鸥:234}蓝鸥科技人http://www.lanou3g.com体系<tag type='link' value='href='http://www.lanou3g.com'>蓝鸥公众号</tag><tag type='video' value='video001'>蓝鸥科技</tag>要内重要内重要<tag type='image' value='photo001'>蓝鸥公众号(lanou_12)</tag>里面大量的技术文章,大家可以关注lanou_12公众号。";
    
    CTTextStyleModel * styleModel = [CTTextStyleModel new];
    styleModel.font = [UIFont systemFontOfSize:16];
    styleModel.faceSize = CGSizeMake(22, 22);
    styleModel.tagImgSize = CGSizeMake(14, 14);
    styleModel.faceOffset = 6;
    styleModel.lineSpace = 4.0f;
    styleModel.numberOfLines = -1;
    styleModel.highlightBackgroundRadius = 4;//10;
    styleModel.highlightBackgroundAdjustHeight = 3;
    styleModel.highlightBackgroundOffset = 2.5;
    styleModel.highlightBackgroundColor = [UIColor colorWithRed:201/255.0 green:229/255.0 blue:242/255.0 alpha:1];
    styleModel.atColor = [UIColor colorWithRed:62/255.0 green:104/255.0 blue:162/255.0 alpha:1];
    styleModel.keyColor = [UIColor colorWithRed:62/255.0 green:104/255.0 blue:162/255.0 alpha:1];
    
    styleModel.emailColor = [UIColor colorWithRed:62/255.0 green:104/255.0 blue:162/255.0 alpha:1];
    
    styleModel.phoneColor = [UIColor colorWithRed:62/255.0 green:104/255.0 blue:162/255.0 alpha:1];
    styleModel.subjectColor = [UIColor colorWithRed:62/255.0 green:104/255.0 blue:162/255.0 alpha:1];
    styleModel.urlColor = [UIColor colorWithRed:62/255.0 green:104/255.0 blue:162/255.0 alpha:1];
    styleModel.textColor =[UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1];
    styleModel.urlUnderLine = YES;
    styleModel.emailUnderLine = YES;
    styleModel.phoneUnderLine = YES;
    
    
    CGFloat rowHeight = [CTTextDisplayView getRowHeightWithText:text rectSize:CGSizeMake([UIScreen mainScreen].bounds.size.width-10, CGFLOAT_MAX) styleModel:styleModel];
    
    CTTextDisplayView * textDisplayView = [[CTTextDisplayView alloc] initWithFrame:CGRectMake(5, 70, [UIScreen mainScreen].bounds.size.width-10, rowHeight)];
    textDisplayView.delegate = self;
    textDisplayView.styleModel = styleModel;
    textDisplayView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:textDisplayView];
    
    textDisplayView.text = text;

    
}
-(void)ct_textDisplayView:(CTTextDisplayView *)textDisplayView obj:(id)obj
{
    if ([[obj objectForKey:@"value"] isEqualToString:@"http://www.lanou3g.com"]) {
        
    }

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
