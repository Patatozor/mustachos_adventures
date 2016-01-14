//
//  FDPUtility.h
//  Mustachos Adventures A Tale of Orcs and Idiocy
//
//  Created by etudiant on 05/01/2016.
//  Copyright (c) 2016 etudiant. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FDPElement.h"

@interface FDPUtility : NSObject
+ (BOOL) prefersStatusBarHidden;


+ (NSMutableArray *) moveWithElement:( FDPElement *)elem
         andTableOfElem: ( NSMutableArray *)array
           andButtonTag: ( int )tagid;


+ (NSMutableArray *) moveWithMonster:( FDPElement *)elem
                      andTableOfElem: ( NSMutableArray *)array;


+ (FDPElement*) quoiDansCaseWhereGoesMainElement:(FDPElement *)elem accordingToTableOfElem:(NSMutableArray *)array;


+ (NSMutableArray *) quoiSePasseEntreMainElement:(FDPElement *)elem1
                         etSecondaryElement:(FDPElement *)elem2
                     accordingToTableOfElem:(NSMutableArray *)array;


+ (FDPElement*) whatDoesElem:           (FDPElement *)elem
          accordingToTableOfElem: (NSMutableArray *)array;


+ (double) calculateAngleWithX1: (int) posx1
                          andX2: (int) posx2
                          andY1: (int) posy1
                          andY2: (int) posy2;


+ (BOOL) checkMoveToZeroOfMonster: (int) number;


+ (BOOL) checkMoveToMaxOfMonster: (int) number;


+ (BOOL) checkMoveToLeftScreenOfMonster: (int) number1
                              andOrigin: (int) number2;


+ (BOOL) checkMoveToRightScreenOfMonster: (int) number1
                               andOrigin: (int) number2;
@end
