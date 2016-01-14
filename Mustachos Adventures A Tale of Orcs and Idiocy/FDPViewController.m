//
//  FDPViewController.m
//  Mustachos Adventures A Tale of Orcs and Idiocy
//
//  Created by etudiant on 05/01/2016.
//  Copyright (c) 2016 etudiant. All rights reserved.
//

#import "FDPViewController.h"
#import "FDPAnimatedGifsLoader.h"
#import "FDPScenarioViewController.h"

@interface FDPViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *mustachos;
@property (weak, nonatomic) IBOutlet UIButton *start;
@property (weak, nonatomic) IBOutlet UIButton *rules;

@end

@implementation FDPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Background.tif"]];
    
    [FDPAnimatedGifsLoader loadAnimatedGifInImageView:self.mustachos
                                                Named:@"mustachos240"
                                                Count:2];
    
    
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

- (IBAction)onClickStart:(id)sender {
    FDPScenarioViewController * sce1 = [self.storyboard instantiateViewControllerWithIdentifier:@"Scenario"];
    
    //sce1.levelId = 1;
    
    [self.navigationController pushViewController:sce1 animated:NO];
}


- (IBAction)onClickEncyclopedia:(id)sender {
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
