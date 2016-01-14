//  FDPElement.m
//  Mustachos Adventures A Tale of Orcs and Idiocy
//
//  Created by etudiant on 05/01/2016.
//  Copyright (c) 2016 etudiant. All rights reserved.
//

#import "FDPElement.h"

@implementation FDPElement

- (instancetype) initWithPosition: (int) pos andType: (int) typ {
    self.position = pos;
    self.type = typ;
    
    return self;
}
@end
