//
//  FDPAnimatedGifsLoader.h
//  Mustachos Adventures A Tale of Orcs and Idiocy
//
//  Created by etudiant on 05/01/2016.
//  Copyright (c) 2016 etudiant. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FDPAnimatedGifsLoader : NSObject
+ (void) loadAnimatedGifInImageView:( UIImageView *)imageView
                              Named:( NSString *)fileName
                              Count:( int )nb;
@end
