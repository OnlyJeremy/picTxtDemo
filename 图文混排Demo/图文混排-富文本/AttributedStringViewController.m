//
//  AttributedStringViewController.m
//  图文混排Demo
//
//  Created by Jeremy on 16/8/31.
//  Copyright © 2016年 Jeremy. All rights reserved.
//
#define kWidth [UIScreen mainScreen].bounds.size.width //获取设备的物理宽度
#import "AttributedStringViewController.h"
#import "Utility.h"
@interface AttributedStringViewController ()

@end

@implementation AttributedStringViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 富文本技术：
    // 1.图文混排
    // 2.随意修改文字样式
    /**
     与CoreText,textKit的区别
     iOS 6之前：CoreText,纯C语言,极其蛋疼
     iOS 6开始：NSAttributedString,简单易用
     iOS 7开始：TextKit,功能强大,简单易用
     */
    
    
    UITextView *textView = [[UITextView alloc]initWithFrame:CGRectMake(0, 66, self.view.frame.size.width, self.view.frame.size.height)];
    textView.userInteractionEnabled=NO;
    [self.view addSubview:textView];
//     textView.text = @"哈哈4365746875";
//     textView.textColor = [UIColor blueColor];

    NSMutableAttributedString *string = [[NSMutableAttributedString alloc]initWithString:@"哈哈4365746875"];
    [string addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor] range:NSMakeRange(0, 2)];
    [string addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:30] range:NSMakeRange(0, 2)];
//    [string addAttribute:NSBackgroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(0, 2)];
    // 设置“456”为红色
    [string addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(6, 2)];
    [string addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:24] range:NSMakeRange(6, 2)];
    [string addAttribute:NSUnderlineStyleAttributeName value:@(NSUnderlineStyleSingle) range:NSMakeRange(6, 2)];
    
    // 创建图片图片附件
    NSTextAttachment *attach = [[NSTextAttachment alloc] init];
    attach.image = [UIImage imageNamed:@"d_aini.png"];
    attach.bounds = CGRectMake(0, -25, 50, 50);
    NSAttributedString *attachString = [NSAttributedString attributedStringWithAttachment:attach];
    [string appendAttributedString:attachString];
    
    [string appendAttributedString:[[NSAttributedString alloc] initWithString:@"789"]];
    
    textView.attributedText = string;
    
    
    
    
    UILabel *lab1 = [[UILabel alloc]init];
//    lab1.frame = CGRectMake(10, 200, 300, 20);
    [self.view addSubview:lab1];
    
    NSDictionary *attributes = @{NSFontAttributeName:[UIFont systemFontOfSize:14.0]};
    NSString *praiseStr = @"路人甲、路人乙";
    NSString *praiseInfo = [NSString stringWithFormat:@"<点赞> %@",praiseStr];
    NSDictionary *attributesForAll = @{NSFontAttributeName:[UIFont systemFontOfSize:14.0],NSForegroundColorAttributeName:[UIColor grayColor]};
    NSMutableAttributedString *attrStr = [Utility exchangeString:@"<点赞>" withText:praiseInfo imageName:@"dynamic_love_blue"];
    [attrStr addAttributes:attributesForAll range:NSMakeRange(0, attrStr.length)];
    NSRange darkRange =[attrStr.string rangeOfString:praiseStr];
    [attrStr addAttributes:attributes range:darkRange];
    lab1.attributedText = attrStr;
    
    CGSize labelSize = [attrStr boundingRectWithSize:CGSizeMake(kWidth-65-10, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin context:nil].size;
lab1.frame = CGRectMake(10, 200, labelSize.width, labelSize.height);
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
