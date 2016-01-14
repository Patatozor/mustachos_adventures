//
//  FDPElement.h
//  Mustachos Adventures A Tale of Orcs and Idiocy
//
//  Created by etudiant on 05/01/2016.
//  Copyright (c) 2016 etudiant. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FDPElement : NSObject
@property int position;
@property int type;
@property int index;

-(instancetype) initWithPosition: (int) position andType: (int) type;
@end
