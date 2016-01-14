//
//  FDPLevelOneViewController.m
//  Mustachos Adventures A Tale of Orcs and Idiocy
//
//  Created by etudiant on 05/01/2016.
//  Copyright (c) 2016 etudiant. All rights reserved.
//

#import "FDPLevelViewController.h"
#import "FDPAnimatedGifsLoader.h"
#import "FDPElement.h"
#import "FDPUtility.h"
#import "FDPDefeatViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface FDPLevelViewController () < UICollectionViewDataSource >
@property (weak, nonatomic) IBOutlet UIImageView *mustachosSwag;

@property (weak, nonatomic) IBOutlet UIButton *upLeft;
@property (weak, nonatomic) IBOutlet UIButton *up;
@property (weak, nonatomic) IBOutlet UIButton *upRight;
@property (weak, nonatomic) IBOutlet UIButton *left;
@property (weak, nonatomic) IBOutlet UIButton *right;
@property (weak, nonatomic) IBOutlet UIButton *downLeft;
@property (weak, nonatomic) IBOutlet UIButton *down;
@property (weak, nonatomic) IBOutlet UIButton *downRight;
@property (weak, nonatomic) IBOutlet UIImageView *background;

@property (weak, nonatomic) IBOutlet UICollectionView *map;
@property NSMutableArray *elements;
@property AVAudioPlayer * audio;


@end


@implementation FDPLevelViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor blackColor];
    
    [FDPAnimatedGifsLoader loadAnimatedGifInImageView:self.mustachosSwag
                                                Named:@"mustachos240"
                                                Count:2];
    
    
    // The directions
    [self.upLeft setBackgroundImage:[UIImage imageNamed:@"upLeft.tif"] forState:UIControlStateNormal];
    [self.up setBackgroundImage:[UIImage imageNamed:@"top.tif"] forState:UIControlStateNormal];
    [self.upRight setBackgroundImage:[UIImage imageNamed:@"upRight.tif"] forState:UIControlStateNormal];
    [self.right setBackgroundImage:[UIImage imageNamed:@"right.tif"] forState:UIControlStateNormal];
    [self.downRight setBackgroundImage:[UIImage imageNamed:@"downRight.tif"] forState:UIControlStateNormal];
    [self.down setBackgroundImage:[UIImage imageNamed:@"down.tif"] forState:UIControlStateNormal];
    [self.downLeft setBackgroundImage:[UIImage imageNamed:@"downLeft.tif"] forState:UIControlStateNormal];
    [self.left setBackgroundImage:[UIImage imageNamed:@"left.tif"] forState:UIControlStateNormal];
    
    // Highlights onclick
    /*self.upLeft.showsTouchWhenHighlighted = YES;
    self.up.showsTouchWhenHighlighted = YES;
    self.upRight.showsTouchWhenHighlighted = YES;
    self.right.showsTouchWhenHighlighted = YES;
    self.downLeft.showsTouchWhenHighlighted = YES;
    self.down.showsTouchWhenHighlighted = YES;
    self.downLeft.showsTouchWhenHighlighted = YES;
    self.left.showsTouchWhenHighlighted = YES;*/
    
    switch (self.levelId){
        case 1:
            self.background.image = [UIImage imageNamed:@"map1.png"];
            self.map.backgroundView = self.background;
            
            
            // Array with all the elements in the game
            self.elements = [@[[[FDPElement alloc]initWithPosition:144 andType:1],
                               [[FDPElement alloc]initWithPosition:17 andType:9],
                               [[FDPElement alloc]initWithPosition:18 andType:9],
                               [[FDPElement alloc]initWithPosition:19 andType:9],
                               [[FDPElement alloc]initWithPosition:20 andType:9],
                               [[FDPElement alloc]initWithPosition:37 andType:9],
                               [[FDPElement alloc]initWithPosition:71 andType:9],
                               [[FDPElement alloc]initWithPosition:88 andType:9],
                               [[FDPElement alloc]initWithPosition:87 andType:9],
                               [[FDPElement alloc]initWithPosition:86 andType:9],
                               [[FDPElement alloc]initWithPosition:85 andType:9],
                               [[FDPElement alloc]initWithPosition:149 andType:9],
                               [[FDPElement alloc]initWithPosition:150 andType:9],
                               [[FDPElement alloc]initWithPosition:151 andType:9],
                               [[FDPElement alloc]initWithPosition:152 andType:9],
                               [[FDPElement alloc]initWithPosition:166 andType:9],
                               [[FDPElement alloc]initWithPosition:183 andType:9],
                               [[FDPElement alloc]initWithPosition:217 andType:9],
                               [[FDPElement alloc]initWithPosition:234 andType:9],
                               [[FDPElement alloc]initWithPosition:235 andType:9],
                               [[FDPElement alloc]initWithPosition:236 andType:9],
                               [[FDPElement alloc]initWithPosition:237 andType:9],
                               [[FDPElement alloc]initWithPosition:81 andType:10],
                               [[FDPElement alloc]initWithPosition:140 andType:10],
                               [[FDPElement alloc]initWithPosition:57 andType:2],
                               [[FDPElement alloc]initWithPosition:61 andType:2],
                               [[FDPElement alloc]initWithPosition:133 andType:2],
                               [[FDPElement alloc]initWithPosition:155 andType:2],
                               [[FDPElement alloc]initWithPosition:207 andType:2],
                               [[FDPElement alloc]initWithPosition:145 andType:8]
                               ]mutableCopy];
            break;
        case 2:
            self.background.image = [UIImage imageNamed:@"map2.png"];
            self.map.backgroundView = self.background;
            
            
            // Array with all the elements in the game
            self.elements = [@[[[FDPElement alloc]initWithPosition:144 andType:1],
                               [[FDPElement alloc]initWithPosition:65 andType:9],
                               [[FDPElement alloc]initWithPosition:81 andType:9],
                               [[FDPElement alloc]initWithPosition:97 andType:9],
                               [[FDPElement alloc]initWithPosition:35 andType:9],
                               [[FDPElement alloc]initWithPosition:52 andType:9],
                               [[FDPElement alloc]initWithPosition:69 andType:9],
                               [[FDPElement alloc]initWithPosition:284 andType:9],
                               [[FDPElement alloc]initWithPosition:285 andType:9],
                               [[FDPElement alloc]initWithPosition:286 andType:9],
                               [[FDPElement alloc]initWithPosition:269 andType:9],
                               [[FDPElement alloc]initWithPosition:116 andType:10],
                               [[FDPElement alloc]initWithPosition:141 andType:10],
                               [[FDPElement alloc]initWithPosition:232 andType:10],
                               [[FDPElement alloc]initWithPosition:23 andType:2],
                               [[FDPElement alloc]initWithPosition:94 andType:2],
                               [[FDPElement alloc]initWithPosition:159 andType:2],
                               [[FDPElement alloc]initWithPosition:169 andType:2],
                               [[FDPElement alloc]initWithPosition:243 andType:2],
                               [[FDPElement alloc]initWithPosition:247 andType:2]
                               ]mutableCopy];
            break;
        case 3:
            self.background.image = [UIImage imageNamed:@"map3.png"];
            self.map.backgroundView = self.background;
            
            
            // Array with all the elements in the game
            self.elements = [@[[[FDPElement alloc]initWithPosition:144 andType:1],
                               [[FDPElement alloc]initWithPosition:29 andType:10],
                               [[FDPElement alloc]initWithPosition:71 andType:10],
                               [[FDPElement alloc]initWithPosition:132 andType:10],
                               [[FDPElement alloc]initWithPosition:188 andType:10],
                               [[FDPElement alloc]initWithPosition:215 andType:10],
                               [[FDPElement alloc]initWithPosition:251 andType:10],
                               [[FDPElement alloc]initWithPosition:65 andType:2],
                               [[FDPElement alloc]initWithPosition:93 andType:2],
                               [[FDPElement alloc]initWithPosition:209 andType:2],
                               [[FDPElement alloc]initWithPosition:24 andType:3],
                               [[FDPElement alloc]initWithPosition:106 andType:3],
                               [[FDPElement alloc]initWithPosition:183 andType:3],
                               [[FDPElement alloc]initWithPosition:230 andType:3]
                               ]mutableCopy];
            break;
        case 4:
            self.background.image = [UIImage imageNamed:@"map4.png"];
            self.map.backgroundView = self.background;
            
            
            // Array with all the elements in the game
            self.elements = [@[[[FDPElement alloc]initWithPosition:144 andType:1],
                               [[FDPElement alloc]initWithPosition:84 andType:10],
                               [[FDPElement alloc]initWithPosition:117 andType:10],
                               [[FDPElement alloc]initWithPosition:140 andType:10],
                               [[FDPElement alloc]initWithPosition:184 andType:10],
                               [[FDPElement alloc]initWithPosition:223 andType:10],
                               [[FDPElement alloc]initWithPosition:24 andType:2],
                               [[FDPElement alloc]initWithPosition:115 andType:2],
                               [[FDPElement alloc]initWithPosition:62 andType:3],
                               [[FDPElement alloc]initWithPosition:71 andType:3],
                               [[FDPElement alloc]initWithPosition:191 andType:3],
                               [[FDPElement alloc]initWithPosition:231 andType:3],
                               [[FDPElement alloc]initWithPosition:165 andType:6]
                               ]mutableCopy];
            break;
        case 5:
            self.background.image = [UIImage imageNamed:@"map5.png"];
            self.map.backgroundView = self.background;
            
            
            // Array with all the elements in the game
            self.elements = [@[[[FDPElement alloc]initWithPosition:144 andType:1],
                               [[FDPElement alloc]initWithPosition:81 andType:10],
                               [[FDPElement alloc]initWithPosition:206 andType:10],
                               [[FDPElement alloc]initWithPosition:22 andType:11],
                               [[FDPElement alloc]initWithPosition:71 andType:11],
                               [[FDPElement alloc]initWithPosition:197 andType:11],
                               [[FDPElement alloc]initWithPosition:108 andType:2],
                               [[FDPElement alloc]initWithPosition:130 andType:2],
                               [[FDPElement alloc]initWithPosition:44 andType:3],
                               [[FDPElement alloc]initWithPosition:133 andType:3],
                               [[FDPElement alloc]initWithPosition:157 andType:3],
                               [[FDPElement alloc]initWithPosition:178 andType:3],
                               [[FDPElement alloc]initWithPosition:201 andType:6]
                               ]mutableCopy];
            break;
        case 6:
            self.background.image = [UIImage imageNamed:@"map6.png"];
            self.map.backgroundView = self.background;
            
            
            // Array with all the elements in the game
            self.elements = [@[[[FDPElement alloc]initWithPosition:144 andType:1],
                               [[FDPElement alloc]initWithPosition:58 andType:10],
                               [[FDPElement alloc]initWithPosition:72 andType:10],
							   [[FDPElement alloc]initWithPosition:98 andType:10],
							   [[FDPElement alloc]initWithPosition:103 andType:10],
							   [[FDPElement alloc]initWithPosition:140 andType:10],
							   [[FDPElement alloc]initWithPosition:147 andType:10],
							   [[FDPElement alloc]initWithPosition:151 andType:10],
							   [[FDPElement alloc]initWithPosition:166 andType:10],
							   [[FDPElement alloc]initWithPosition:189 andType:10],
							   [[FDPElement alloc]initWithPosition:227 andType:10],
                               [[FDPElement alloc]initWithPosition:10 andType:4],
                               [[FDPElement alloc]initWithPosition:22 andType:4],
                               [[FDPElement alloc]initWithPosition:36 andType:4],
                               [[FDPElement alloc]initWithPosition:106 andType:4],
                               [[FDPElement alloc]initWithPosition:116 andType:4],
							   [[FDPElement alloc]initWithPosition:170 andType:4],
							   [[FDPElement alloc]initWithPosition:219 andType:4],
							   [[FDPElement alloc]initWithPosition:224 andType:4],
							   [[FDPElement alloc]initWithPosition:278 andType:4],
                               ]mutableCopy];
            break;
        case 7:
            self.background.image = [UIImage imageNamed:@"map7.png"];
            self.map.backgroundView = self.background;
            
            
            // Array with all the elements in the game
            self.elements = [@[[[FDPElement alloc]initWithPosition:195 andType:1],
                               [[FDPElement alloc]initWithPosition:119 andType:9],
                               [[FDPElement alloc]initWithPosition:135 andType:9],
                               [[FDPElement alloc]initWithPosition:189 andType:10],
                               [[FDPElement alloc]initWithPosition:249 andType:10],
							   [[FDPElement alloc]initWithPosition:37 andType:11],
							   [[FDPElement alloc]initWithPosition:93 andType:11],
							   [[FDPElement alloc]initWithPosition:98 andType:11],
							   [[FDPElement alloc]initWithPosition:103 andType:11],
							   [[FDPElement alloc]initWithPosition:127 andType:11],
							   [[FDPElement alloc]initWithPosition:129 andType:11],
							   [[FDPElement alloc]initWithPosition:158 andType:11],
							   [[FDPElement alloc]initWithPosition:165 andType:11],
							   [[FDPElement alloc]initWithPosition:197 andType:11],
							   [[FDPElement alloc]initWithPosition:3 andType:2],
							   [[FDPElement alloc]initWithPosition:15 andType:2],
                               [[FDPElement alloc]initWithPosition:35 andType:2],
                               [[FDPElement alloc]initWithPosition:42 andType:2],
                               [[FDPElement alloc]initWithPosition:158 andType:2],
                               [[FDPElement alloc]initWithPosition:6 andType:3],
							   [[FDPElement alloc]initWithPosition:10 andType:3],
							   [[FDPElement alloc]initWithPosition:55 andType:3],
							   [[FDPElement alloc]initWithPosition:216 andType:3],
							   [[FDPElement alloc]initWithPosition:224 andType:3],
                               [[FDPElement alloc]initWithPosition:47 andType:4],
							   [[FDPElement alloc]initWithPosition:90 andType:4],
							   [[FDPElement alloc]initWithPosition:155 andType:4],
							   [[FDPElement alloc]initWithPosition:184 andType:4]
                               ]mutableCopy];
            break;
        case 8:
            self.background.image = [UIImage imageNamed:@"map8.png"];
            self.map.backgroundView = self.background;
            
            
            // Array with all the elements in the game
            self.elements = [@[[[FDPElement alloc]initWithPosition:229 andType:1],
                               [[FDPElement alloc]initWithPosition:8 andType:2],
                               [[FDPElement alloc]initWithPosition:37 andType:3],
                               [[FDPElement alloc]initWithPosition:98 andType:3],
                               [[FDPElement alloc]initWithPosition:156 andType:7]
                               ]mutableCopy];
            break;
        case 9:
            self.background.image = [UIImage imageNamed:@"map9.png"];
            self.map.backgroundView = self.background;
            
            
            // Array with all the elements in the game
            self.elements = [@[[[FDPElement alloc]initWithPosition:144 andType:1],
                               [[FDPElement alloc]initWithPosition:17 andType:9],
                               [[FDPElement alloc]initWithPosition:18 andType:9],
                               [[FDPElement alloc]initWithPosition:19 andType:9],
                               [[FDPElement alloc]initWithPosition:20 andType:9],
                               [[FDPElement alloc]initWithPosition:37 andType:9],
                               [[FDPElement alloc]initWithPosition:71 andType:9],
                               [[FDPElement alloc]initWithPosition:88 andType:9],
                               [[FDPElement alloc]initWithPosition:87 andType:9],
                               [[FDPElement alloc]initWithPosition:86 andType:9],
                               [[FDPElement alloc]initWithPosition:85 andType:9],
                               [[FDPElement alloc]initWithPosition:148 andType:9],
                               [[FDPElement alloc]initWithPosition:149 andType:9],
                               [[FDPElement alloc]initWithPosition:150 andType:9],
                               [[FDPElement alloc]initWithPosition:151 andType:9],
                               [[FDPElement alloc]initWithPosition:152 andType:9],
                               [[FDPElement alloc]initWithPosition:165 andType:9],
                               [[FDPElement alloc]initWithPosition:182 andType:9],
                               [[FDPElement alloc]initWithPosition:216 andType:9],
                               [[FDPElement alloc]initWithPosition:233 andType:9],
                               [[FDPElement alloc]initWithPosition:234 andType:9],
                               [[FDPElement alloc]initWithPosition:235 andType:9],
                               [[FDPElement alloc]initWithPosition:236 andType:9],
                               [[FDPElement alloc]initWithPosition:237 andType:9],
                               [[FDPElement alloc]initWithPosition:81 andType:10],
                               [[FDPElement alloc]initWithPosition:140 andType:10],
                               [[FDPElement alloc]initWithPosition:57 andType:2],
                               [[FDPElement alloc]initWithPosition:61 andType:2],
                               [[FDPElement alloc]initWithPosition:133 andType:2],
                               [[FDPElement alloc]initWithPosition:155 andType:2],
                               [[FDPElement alloc]initWithPosition:207 andType:2]
                               ]mutableCopy];
            break;
        case 10:
            self.background.image = [UIImage imageNamed:@"map10.png"];
            self.map.backgroundView = self.background;
            
            
            // Array with all the elements in the game
            self.elements = [@[[[FDPElement alloc]initWithPosition:144 andType:1],
                               [[FDPElement alloc]initWithPosition:17 andType:9],
                               [[FDPElement alloc]initWithPosition:18 andType:9],
                               [[FDPElement alloc]initWithPosition:19 andType:9],
                               [[FDPElement alloc]initWithPosition:20 andType:9],
                               [[FDPElement alloc]initWithPosition:37 andType:9],
                               [[FDPElement alloc]initWithPosition:71 andType:9],
                               [[FDPElement alloc]initWithPosition:88 andType:9],
                               [[FDPElement alloc]initWithPosition:87 andType:9],
                               [[FDPElement alloc]initWithPosition:86 andType:9],
                               [[FDPElement alloc]initWithPosition:85 andType:9],
                               [[FDPElement alloc]initWithPosition:148 andType:9],
                               [[FDPElement alloc]initWithPosition:149 andType:9],
                               [[FDPElement alloc]initWithPosition:150 andType:9],
                               [[FDPElement alloc]initWithPosition:151 andType:9],
                               [[FDPElement alloc]initWithPosition:152 andType:9],
                               [[FDPElement alloc]initWithPosition:165 andType:9],
                               [[FDPElement alloc]initWithPosition:182 andType:9],
                               [[FDPElement alloc]initWithPosition:216 andType:9],
                               [[FDPElement alloc]initWithPosition:233 andType:9],
                               [[FDPElement alloc]initWithPosition:234 andType:9],
                               [[FDPElement alloc]initWithPosition:235 andType:9],
                               [[FDPElement alloc]initWithPosition:236 andType:9],
                               [[FDPElement alloc]initWithPosition:237 andType:9],
                               [[FDPElement alloc]initWithPosition:81 andType:10],
                               [[FDPElement alloc]initWithPosition:140 andType:10],
                               [[FDPElement alloc]initWithPosition:57 andType:2],
                               [[FDPElement alloc]initWithPosition:61 andType:2],
                               [[FDPElement alloc]initWithPosition:133 andType:2],
                               [[FDPElement alloc]initWithPosition:155 andType:2],
                               [[FDPElement alloc]initWithPosition:207 andType:2]
                               ]mutableCopy];
            break;
        case 11:
            self.background.image = [UIImage imageNamed:@"map11.png"];
            self.map.backgroundView = self.background;
            
            
            // Array with all the elements in the game
            self.elements = [@[[[FDPElement alloc]initWithPosition:144 andType:1],
                               [[FDPElement alloc]initWithPosition:17 andType:9],
                               [[FDPElement alloc]initWithPosition:18 andType:9],
                               [[FDPElement alloc]initWithPosition:19 andType:9],
                               [[FDPElement alloc]initWithPosition:20 andType:9],
                               [[FDPElement alloc]initWithPosition:37 andType:9],
                               [[FDPElement alloc]initWithPosition:71 andType:9],
                               [[FDPElement alloc]initWithPosition:88 andType:9],
                               [[FDPElement alloc]initWithPosition:87 andType:9],
                               [[FDPElement alloc]initWithPosition:86 andType:9],
                               [[FDPElement alloc]initWithPosition:85 andType:9],
                               [[FDPElement alloc]initWithPosition:148 andType:9],
                               [[FDPElement alloc]initWithPosition:149 andType:9],
                               [[FDPElement alloc]initWithPosition:150 andType:9],
                               [[FDPElement alloc]initWithPosition:151 andType:9],
                               [[FDPElement alloc]initWithPosition:152 andType:9],
                               [[FDPElement alloc]initWithPosition:165 andType:9],
                               [[FDPElement alloc]initWithPosition:182 andType:9],
                               [[FDPElement alloc]initWithPosition:216 andType:9],
                               [[FDPElement alloc]initWithPosition:233 andType:9],
                               [[FDPElement alloc]initWithPosition:234 andType:9],
                               [[FDPElement alloc]initWithPosition:235 andType:9],
                               [[FDPElement alloc]initWithPosition:236 andType:9],
                               [[FDPElement alloc]initWithPosition:237 andType:9],
                               [[FDPElement alloc]initWithPosition:81 andType:10],
                               [[FDPElement alloc]initWithPosition:140 andType:10],
                               [[FDPElement alloc]initWithPosition:57 andType:2],
                               [[FDPElement alloc]initWithPosition:61 andType:2],
                               [[FDPElement alloc]initWithPosition:133 andType:2],
                               [[FDPElement alloc]initWithPosition:155 andType:2],
                               [[FDPElement alloc]initWithPosition:207 andType:2]
                               ]mutableCopy];
            break;
    }
    
    
    [self checkPossibleMoves];
}



- (void)viewDidAppear:(BOOL)animated{
    // Music
    NSURL *u = [[NSBundle mainBundle]URLForResource:@"maatoi_music" withExtension:@"mp3"];
    NSError *e = nil;
    self.audio = [[AVAudioPlayer alloc]initWithContentsOfURL:u error:&e];
    
    [self.audio play];
    // p.actionAtItemEnd = AVPlayerActionAtItemEndNone;
    self.audio.numberOfLoops = -1;
    self.audio.volume = 0.5;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 289;
}



- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"Cell";
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    UIImageView *recipeImageView = (UIImageView *)[cell viewWithTag:100];
    
    
    
    recipeImageView.image = nil;
    recipeImageView.animationImages = nil;
    
    for(FDPElement *e in self.elements) {
        if(e.position == indexPath.item) {
            switch (e.type) {
                case 1:
                    [FDPAnimatedGifsLoader loadAnimatedGifInImageView:recipeImageView
                                                                Named:@"mustachos16"
                                                                Count:2];
                    break;
                case 2:
                    [FDPAnimatedGifsLoader loadAnimatedGifInImageView:recipeImageView
                                                                Named:@"orc16"
                                                                Count:2];
                    break;
                case 3:
                    [FDPAnimatedGifsLoader loadAnimatedGifInImageView:recipeImageView
                                                                Named:@"goblin16"
                                                                Count:2];
                    break;
                case 4:
                    [FDPAnimatedGifsLoader loadAnimatedGifInImageView:recipeImageView
                                                                Named:@"wolf16"
                                                                Count:2];
                    break;
                case 5:
                    [FDPAnimatedGifsLoader loadAnimatedGifInImageView:recipeImageView
                                                                Named:@"boss16"
                                                                Count:2];
                    break;
                case 6:
                    recipeImageView.image = [UIImage imageNamed:@"arc16.tif"];
                    break;
                case 7:
                    recipeImageView.image = [UIImage imageNamed:@"potion16.tif"];
                    break;
                case 8:
                    recipeImageView.image = [UIImage imageNamed:@"baton16.tif"];
                    break;
                case 9:
                    recipeImageView.image = [UIImage imageNamed:@"mur16.tif"];
                    break;
                case 10:
                    [FDPAnimatedGifsLoader loadAnimatedGifInImageView:recipeImageView
                                                                Named:@"arbre16"
                                                                Count:2];
                    break;
                case 11:
                    [FDPAnimatedGifsLoader loadAnimatedGifInImageView:recipeImageView
                                                                Named:@"piques16"
                                                                Count:2];
                    break;
                case 12:
                    [FDPAnimatedGifsLoader loadAnimatedGifInImageView:recipeImageView
                                                                Named:@"opm16"
                                                                Count:2];
                    break;
                case 13:
                    [FDPAnimatedGifsLoader loadAnimatedGifInImageView:recipeImageView
                                                                Named:@"bosshurt16"
                                                                Count:2];
                    break;
                    
                default:
                    break;
            }
        }
    }
    
    return cell;
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}


- (IBAction)move:(id)sender {
    NSLog(@"ON BOUGE !!!");
    
    UIButton *btn = (UIButton *)sender;
    int tag = btn.tag;
    
    // 8 = up, 1 = upRight
    FDPElement * e = [self.elements objectAtIndex:0];
    
    NSMutableArray *newElements = [FDPUtility moveWithElement:e andTableOfElem:self.elements andButtonTag:tag];
    
    FDPElement* mustachos = [newElements objectAtIndex:0];
    
    if(mustachos.type == 0){
        FDPDefeatViewController * defeat = [self.storyboard instantiateViewControllerWithIdentifier:@"Defeat"];
        
        defeat.levelId = self.levelId;
        
        [self.navigationController pushViewController:defeat animated:NO];
        
        [self.audio stop];
    }else{
	////////////////////////////////////////AJOUTE CA SALOPE////////////////////////////////////
			BOOL victory = true;
			////////////////////////////////////////////////////////////////////////////////////
            for(int i = 0 ; i < [newElements count] ; i++){
                FDPElement *elem = [newElements objectAtIndex:i];
                
                elem.index = i;
                
                if(    elem.type != 0
                   && elem.type != 1
                   && elem.type != 6
                   && elem.type != 7
                   && elem.type != 8
                   && elem.type != 9
                   && elem.type != 10
                   && elem.type != 11
                   && elem.type != 12){
                    FDPElement *elementAfterMove = [FDPUtility whatDoesElem:elem
                                                     accordingToTableOfElem:newElements];
                    
                    [FDPUtility moveWithMonster:elementAfterMove andTableOfElem:newElements];
                    
                    NSLog(@"after %d",elementAfterMove.position);
                    NSLog(@"before %d",elem.position);
                    
                    
                    // If Mustachos stepped on a staff
                    if(mustachos.type == 18){
                        int move = elementAfterMove.position - elem.position;
                        
                        NSLog(@"%d",move);
                        
                        elementAfterMove.position = elem.position-(elementAfterMove.position - elem.position);
                    }
                    [newElements replaceObjectAtIndex:i withObject:elementAfterMove];
					//////////////////////////////////////////////ICI AUSSI PTIT CON//////////////////////////////////
					if(elem.type != 0){
						victory = false;
					}
					//////////////////////////////////////////////////////////////////////////////////////////////////
                }
            }
    }
	
	///////////////////////////////////////////ICI CONNARD //////////////////////////////////////////
	if(victory == true){
	FDPScenario blabla push tout ça tout ça
	}
	//////////////////////////////////////////////////////////////////////////////////////////////////
    
    
    
    if(mustachos.type == 18){
        mustachos.type = 1;
        
        [newElements replaceObjectAtIndex:0 withObject:mustachos];
    }
    
    mustachos = [newElements objectAtIndex:0];
    
    if(mustachos.type == 0){
        FDPDefeatViewController * defeat = [self.storyboard instantiateViewControllerWithIdentifier:@"Defeat"];
        
        defeat.levelId = self.levelId;
        
        [self.navigationController pushViewController:defeat animated:NO];
        
        [self.audio stop];
    }else{
        self.elements = newElements;
        
        [self.map reloadData];
        
        [self checkPossibleMoves];
        
    }
}


- (void)checkPossibleMoves {
    FDPElement * e = [self.elements objectAtIndex:0];
    int pos = e.position;
    
    self.upLeft.enabled = YES;
    self.up.enabled = YES;
    self.upRight.enabled = YES;
    self.downLeft.enabled = YES;
    self.down.enabled = YES;
    self.downRight.enabled = YES;
    self.right.enabled = YES;
    self.left.enabled = YES;
    
    if(pos<17){
        self.upLeft.enabled = NO;
        self.up.enabled = NO;
        self.upRight.enabled = NO;
    }if(pos>271){
        self.downLeft.enabled = NO;
        self.down.enabled = NO;
        self.downRight.enabled = NO;
    }if(pos%17==0){
        self.upLeft.enabled = NO;
        self.left.enabled = NO;
        self.downLeft.enabled = NO;
    }if(pos%17==16){
        self.upRight.enabled = NO;
        self.right.enabled = NO;
        self.downRight.enabled = NO;
    }
    
    for(FDPElement *e in self.elements){
        if (pos-18==e.position && (e.type==9 || e.type==10)){
            self.upLeft.enabled = NO;
        }
        if (pos-17==e.position && (e.type==9 || e.type==10)){
            self.up.enabled = NO;
        }
        if (pos-16==e.position && (e.type==9 || e.type==10)){
            self.upRight.enabled = NO;
        }
        if (pos-1==e.position && (e.type==9 || e.type==10)){
            self.left.enabled = NO;
        }
        if (pos+1==e.position && (e.type==9 || e.type==10)){
            self.right.enabled = NO;
        }
        if (pos+16==e.position && (e.type==9 || e.type==10)){
            self.downLeft.enabled = NO;
        }
        if (pos+17==e.position && (e.type==9 || e.type==10)){
            self.down.enabled = NO;
        }
        if (pos+18==e.position && (e.type==9 || e.type==10)){
            self.downRight.enabled = NO;
        }
    }
}




@end
