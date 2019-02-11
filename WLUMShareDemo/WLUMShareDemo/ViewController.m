//
//  ViewController.m
//  WLUMShareDemo
//
//  Created by three stone 王 on 2019/1/10.
//  Copyright © 2019年 three stone 王. All rights reserved.
//

#import "ViewController.h"
#import "WLUMShare.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[WLUMShare shared] setUsingHttpsWhenShareContent:false];
}


@end
