//
//  CWSearchViewController.m
//  NewProject
//
//  Created by Christopher Webb-Orenstein on 6/28/16.
//  Copyright © 2016 Christopher Webb-Orenstein. All rights reserved.
//

#import "CWSearchViewController.h"

@interface CWSearchViewController ()
@property (weak, nonatomic) IBOutlet UILabel *searchHeaderLabel;
@property (weak, nonatomic) IBOutlet UIButton *searchButton;

@property (weak, nonatomic) IBOutlet UITextField *urlSearchField;
@end

@implementation CWSearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    CWFeedTableViewController *feedTableVC = segue.destinationViewController;
    CWWebSearch *newSearch = [[CWWebSearch alloc]init];
    [newSearch getWebPage];
    feedTableVC.webFeed = [newSearch getURLSFromPage];
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
 

@end
