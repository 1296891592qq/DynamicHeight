//
//  ViewController.m
//  动态计算lab高度
//
//  Created by wanly on 2017/2/8.
//  Copyright © 2017年 ebowin. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+Tools.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 字符串
    NSString *str = @"自暴自弃便是命运的奴隶，自强不息是生命的天使；我不想用别人的汗水浇灌自己的心灵，我愿意用别人的棉袄，来温暖自己的躯体。我只想堂堂正正的做人，我只愿光明磊落做事，该记得的我不会遗忘，该遗忘的我不会存放。     自暴自弃便是命运的奴隶，自强不息是生命的天使；我不想用别人的汗水浇灌自己的心灵，我愿意用别人的棉袄，来温暖自己的躯体。我只想堂堂正正的做人，我只愿光明磊落做事，该记得的我不会遗忘，该遗忘的我不会存放。";
    // 初始化label
    UILabel *label = [UILabel new];
    label.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:label];
    // label获取字符串
    label.text = str;
    // label获取字体
    label.font = [UIFont fontWithName:nil size:18];
    // 根据获取到的字符串以及字体计算label需要的size
    CGSize size = [label boundingRectWithSize:CGSizeMake(340, 0)];
    // 设置无限换行
    label.numberOfLines = 0;
    // 设置label的frame
    label.frame = CGRectMake(35.0f, 50.0f, size.width, size.height);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
