//
//  SettingViewController.m
//  TipCalculator
//
//  Created by Haiyong Wang on 1/31/15.
//  Copyright (c) 2015 Haiyong Wang. All rights reserved.
//

#import "SettingViewController.h"

@interface SettingViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipSetting;

- (IBAction)onValueChanged:(id)sender;

@end

@implementation SettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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

- (IBAction)onValueChanged:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:self.tipSetting.selectedSegmentIndex forKey:@"tipSetting"];
    [defaults synchronize];
}

- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"view will appear");
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int tipSettingIndex = (int)[defaults integerForKey:@"tipSetting"];
    [self.tipSetting setSelectedSegmentIndex:tipSettingIndex];
}

@end
