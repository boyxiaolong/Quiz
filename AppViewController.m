//
//  AppViewController.m
//  Quiz
//
//  Created by zhaoAllen on 15/9/18.
//  Copyright © 2015年 zhaoAllen. All rights reserved.
//

#import "AppViewController.h"

@interface AppViewController ()

@property (nonatomic) int curQuestionIndex;
@property (nonatomic,copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@end

@implementation AppViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showQuestion:(id)sender
{
    self.curQuestionIndex++;
    
    if (self.curQuestionIndex == [self.questions count])
    {
        self.curQuestionIndex = 0;
    }
    
    NSString *question = self.questions[self.curQuestionIndex];
    self.questionLabel.text = question;
    self.answerLabel.text = @"???";
}

-(IBAction)showAnswer:(id)sender
{
    NSString *answer = self.answers[self.curQuestionIndex];
    self.answerLabel.text = answer;
}

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        self.questions = @[@"From what is cognac made?",
                           @"what is 7+7?",
                           @"What is the capital of Vermont?"];
        self.answers = @[@"Grapes",
                         @"14",
                         @"Montpelier"];
    }
    
    return self;
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
