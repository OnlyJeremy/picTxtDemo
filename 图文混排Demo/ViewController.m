//
//  ViewController.m
//  图文混排Demo
//
//  Created by Jeremy on 16/8/30.
//  Copyright © 2016年 Jeremy. All rights reserved.
//

#import "ViewController.h"
#import <CoreText/CoreText.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
  /*  一.富文本
    我们可以采用attributeString来进行图文混排.例如一个文字上插入一个图片.实现如下:
    */

    NSString *content = @"文字加表情";
    NSMutableDictionary *attrs = [NSMutableDictionary dictionaryWithCapacity:0];
    attrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    attrs[NSUnderlineStyleAttributeName] = @1;
    attrs[NSUnderlineColorAttributeName] = [UIColor redColor];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
