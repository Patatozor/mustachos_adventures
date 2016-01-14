//
//  FDPAnimatedGifsLoader.m
//  Mustachos Adventures A Tale of Orcs and Idiocy
//
//  Created by etudiant on 05/01/2016.
//  Copyright (c) 2016 etudiant. All rights reserved.
//

#import "FDPAnimatedGifsLoader.h"

@implementation FDPAnimatedGifsLoader
+ (void) loadAnimatedGifInImageView:( UIImageView *)imageView
                              Named:( NSString *)fileName
                              Count:( int )nb
{
    NSString *fileName1 = fileName;
    fileName1 = [fileName1 stringByAppendingString:@"_1.tif"];
    NSString *fileName2 = fileName;
    fileName2 = [fileName2 stringByAppendingString:@"_2.tif"];
    
    NSMutableArray *imgs = [NSMutableArray new];
    for(int i = 1 ; i <= nb ; i++) {
        NSString *f = [fileName stringByAppendingFormat:@"_%d.tif", i];
        @try { [imgs addObject:[UIImage imageNamed:f]]; } @catch (NSException *e) {
            NSLog(@"Missing : %@", f);
        }
    }
    
    imageView.animationImages = imgs;
    imageView.animationDuration = 0.92307f;
    imageView.animationRepeatCount = 0;
    [imageView startAnimating];
}

@end
