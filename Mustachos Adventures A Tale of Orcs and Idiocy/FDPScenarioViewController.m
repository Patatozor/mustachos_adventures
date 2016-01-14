//
//  FDPScenarioOne.m
//  Mustachos Adventures A Tale of Orcs and Idiocy
//
//  Created by etudiant on 06/01/2016.
//  Copyright (c) 2016 etudiant. All rights reserved.
//

#import "FDPScenarioViewController.h"
#import "FDPLevelViewController.h"

@interface FDPScenarioViewController ()
@property (weak, nonatomic) IBOutlet UIButton *play;

@end

@implementation FDPScenarioViewController

- (IBAction)onClickStart:(id)sender {
    FDPLevelViewController * lvl;
    lvl = [self.storyboard instantiateViewControllerWithIdentifier:@"Level"];
    
    lvl.levelId = 1;
    
    [self.navigationController pushViewController:lvl animated:NO];
}

@end
