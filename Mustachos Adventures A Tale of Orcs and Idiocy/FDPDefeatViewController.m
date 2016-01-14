//
//  FDPDefeatViewController.m
//  Mustachos Adventures A Tale of Orcs and Idiocy
//
//  Created by etudiant on 06/01/2016.
//  Copyright (c) 2016 etudiant. All rights reserved.
//

#import "FDPDefeatViewController.h"
#import "FDPScenarioViewController.h"

@interface FDPDefeatViewController ()
@property (weak, nonatomic) IBOutlet UIButton *retry;

@end

@implementation FDPDefeatViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor whiteColor];
    
    
}

- (IBAction)onClickRestart:(id)sender {
    FDPScenarioViewController * scenario;
    scenario = [self.storyboard instantiateViewControllerWithIdentifier:@"Scenario"];
    switch (self.levelId){
        case 1:
            scenario.levelId = 1;
            break;
        case 2:
            scenario.levelId = 2;
            break;
        case 3:
            scenario.levelId = 3;
            break;
        case 4:
            scenario.levelId = 4;
            break;
        case 5:
            scenario.levelId = 5;
            break;
        case 6:
            scenario.levelId = 6;
            break;
        case 7:
            scenario.levelId = 7;
            break;
        case 8:
            scenario.levelId = 8;
            break;
        case 9:
            scenario.levelId = 9;
            break;
        case 10:
            scenario.levelId = 10;
            break;
        case 11:
            scenario.levelId = 11;
            break;
        default:
            scenario.levelId = 1;
            break;
            
            
    }
    
    [self.navigationController pushViewController:scenario animated:NO];
}


@end
