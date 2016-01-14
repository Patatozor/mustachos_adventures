//
//  FDPUtility.m
//  Mustachos Adventures A Tale of Orcs and Idiocy
//
//  Created by etudiant on 05/01/2016.
//  Copyright (c) 2016 etudiant. All rights reserved.
//

#import "FDPUtility.h"

@implementation FDPUtility

+ (BOOL)prefersStatusBarHidden {
    return YES;
}


/* ------------------ */


// With Mustachos
+ (NSMutableArray *)    moveWithElement:    ( FDPElement *)elem
                        andTableOfElem:     ( NSMutableArray *)array
                        andButtonTag:       ( int )tagid
{
    // 8 = up, 1 = upRight
    // FDPElement * e = [array objectAtIndex:0];
    FDPElement * e = elem;
    
    switch(tagid){
        case 1:
            e.position = e.position - 16;
            break;
        case 2:
            e.position = e.position + 1;
            //do something;
            break;
        case 3:
            e.position = e.position + 18;
            //do something;
            break;
        case 4:
            e.position = e.position + 17;
            //do something;
            break;
        case 5:
            e.position = e.position + 16;
            //do something;
            break;
        case 6:
            e.position = e.position - 1;
            //do something;
            break;
        case 7:
            e.position = e.position - 18;
            //do something;
            break;
        case 8:
            e.position = e.position - 17;
            //do something;
            break;
    }
    
    FDPElement *destCaseElem = [self    quoiDansCaseWhereGoesMainElement:   e
                                        accordingToTableOfElem:             array];
    
    
    if(destCaseElem)
    {
        NSMutableArray *newValues = [self   quoiSePasseEntreMainElement:    e
                                            etSecondaryElement:             destCaseElem
                                            accordingToTableOfElem:         array];
        
        FDPElement *newElem1 = [newValues objectAtIndex:0];
        FDPElement *newElem2 = [newValues objectAtIndex:1];
        
        [array replaceObjectAtIndex:0                   withObject: newElem1];
        [array replaceObjectAtIndex:newElem2.index      withObject: newElem2];
        
    } else {
        [array replaceObjectAtIndex:0 withObject:e];
    }
    
    return array;
}


/* ------------------ */


// With a monster
+ (NSMutableArray *) moveWithMonster:   ( FDPElement *)elem
                     andTableOfElem:    ( NSMutableArray *)array
{
    // 8 = up, 1 = upRight
    // FDPElement * e = [array objectAtIndex:0];
    FDPElement * e = elem;
    
    FDPElement *destCaseElem = [self quoiDansCaseWhereGoesMainElement:e accordingToTableOfElem:array];
    
    
    if(destCaseElem)
    {
        NSMutableArray *newValues = [self   quoiSePasseEntreMainElement:e
                                                     etSecondaryElement:         destCaseElem
                                                 accordingToTableOfElem:     array];
        
        FDPElement *newElem1 = [newValues objectAtIndex:0];
        FDPElement *newElem2 = [newValues objectAtIndex:1];
        
        [array replaceObjectAtIndex:newElem1.index      withObject: newElem1];
        [array replaceObjectAtIndex:newElem2.index      withObject: newElem2];
        
    } else {
        [array replaceObjectAtIndex:e.index withObject:e];
    }
    
    return array;
}


/* ------------------ */


+ (FDPElement*) quoiDansCaseWhereGoesMainElement:(FDPElement *)elem
                          accordingToTableOfElem:(NSMutableArray *)array
{
    int i = 0;
    
    for(FDPElement *e in array){
        if(e != elem){
            if(elem.position == e.position){
                e.index = i;
                
                return e;
            }
        }
        
        i++;
    }
    
    return nil;
}


/* ------------------ */


+ (NSMutableArray*) quoiSePasseEntreMainElement:    (FDPElement *)elem1
                    etSecondaryElement:             (FDPElement *)elem2
                    accordingToTableOfElem:         (NSMutableArray *)array
{
    FDPElement *newelem = [FDPElement new];
    newelem.position = elem1.position;
    
    switch (elem1.type){
        case 1:
            switch (elem2.type){
                case 2:
                case 3:
                case 4:
                case 5:
                case 11:
                case 13:
                    elem1.type = 0;
                    break;
                    
                case 6:
                    elem1.type = 16;
                    elem2.type = 0;
                    break;
                    
                case 7:
                    elem1.type = 12;
                    break;
                    
                case 8:
                    elem1.type = 18;
                    elem2.type = 0;
                    break;
            }
            break;
            
        case 12:
            switch (elem2.type) {
                case 2:
                case 3:
                case 4:
                case 13:
                    elem1.type = 1;
                    elem2.type = 0;
                    break;
                    
                case 5:
                case 11:
                    elem1.type = 0;
                    break;
                    
                case 6:
                    //do arc
                    elem2.type = 0;
                    break;
                    
                case 7:
                    elem1.type = 12;
                    elem2.type = 0;
                    break;
                    
                case 8:
                    //do baton
                    elem2.type = 0;
                    break;
            }
            break;
            
        case 2:
        case 3:
        case 4:
            switch(elem2.type){
                case 1:
                    elem2.type = 0;
                    break;
                    
                case 2:
                case 3:
                case 4:
                case 13:
                    elem1.type = 0;
                    elem2.type = 0;
                    break;
                    
                case 5:
                    elem1.type = 0;
                    elem2.type = 13;
                    break;
                    
                case 9:
                case 10:
                case 11:
                    elem1.type = 0;
                    break;
                    
                case 6:
                case 7:
                case 8:
                    elem2.type = 0;
                    break;
                    
                case 12:
                    elem1.type = 0;
                    elem2.type = 1;
                    break;
            }
            break;
            
        case 5:
            switch (elem2.type) {
                case 1:
                case 12:
                    elem2.type = 0;
                    break;
                    
                case 2:
                case 3:
                case 4:
                case 13:
                    elem1.type = 13;
                    elem2.type = 0;
                    break;
                    
                case 5:
                    elem1.type = 0;
                    elem2.type = 0;
                    break;
                    
                case 11:
                    break;
                    
                case 6:
                case 7:
                case 8:
                    elem2.type = 0;
                    break;
                    
                case 9:
                case 10:
                    elem1.type = 13;
                    elem2.type = 0;
                    break;
            }
            break;
            
        case 13:
            switch (elem2.type) {
                case 1:
                    elem2.type = 0;
                    break;
                    
                case 2:
                case 3:
                case 4:
                case 13:
                    elem1.type = 0;
                    elem2.type = 0;
                    break;
                    
                case 6:
                case 7:
                case 8:
                    elem2.type = 0;
                    break;
                    
                case 5:
                    elem1.type = 0;
                    elem2.type = 13;
                    break;
                
                case 9:
                case 10:
                    elem2.type = 0;
                    break;
                    
                case 11:
                    break;
                    
                case 12:
                    elem1.type = 0;
                    elem2.type = 1;
                    break;
            }
            break;
    }
    
    
    NSMutableArray *array2Elems = [@[elem1,elem2]mutableCopy];
    
    return array2Elems;
}


/* ------------------ */


+ (FDPElement*) whatDoesElem:           (FDPElement *)elem
                accordingToTableOfElem: (NSMutableArray *)array
{
        FDPElement* moustachos = [array objectAtIndex:0];
        int posx1 = moustachos.position%17;
        int posy1 = moustachos.position/17;
        int posx2 = elem.position%17;
        int posy2 = elem.position/17;
        
        double angle = [self calculateAngleWithX1:posx1 andX2: posx2 andY1: posy1 andY2: posy2];
    
        switch (elem.type){
                // Orcs and boss
            case 2:
            case 5:
            case 13:
                if((angle > M_PI_4 && angle < 3*M_PI_4) || (angle < -5*M_PI_4 && angle > -7*M_PI_4)){
                    elem.position = elem.position + 17;
                }
                if((angle > 3*M_PI_4 && angle < 5*M_PI_4) || (angle < -3*M_PI_4 && angle > -5*M_PI_4)){
                    elem.position = elem.position - 1;
                }
                if((angle > -3*M_PI_4 && angle < -M_PI_4) || (angle > 5*M_PI_4 && angle < 7*M_PI_4)){
                    elem.position = elem.position - 17;
                }
                if((angle > -9*M_PI_4 && angle < -7*M_PI_4) || (angle > -M_PI_4 && angle < M_PI_4) || (angle < 9*M_PI_4 && angle > 7*M_PI_4)){
                    elem.position = elem.position + 1;
                }
                
                break;
                
                // Goblins
            case 3:
                if((angle > 0 && angle < M_PI_2) || (angle < -3*M_PI_2 && angle > -2*M_PI)){
                    if([self checkMoveToMaxOfMonster:(elem.position + 18)] && [self checkMoveToRightScreenOfMonster:(elem.position + 18) andOrigin:elem.position]){
                        elem.position = elem.position + 18;
                    }else{
                        if([self checkMoveToMaxOfMonster:(elem.position + 18)]) {
                            elem.position = elem.position - 16;
                        }else{
                            elem.position = elem.position + 16;
                        }
                    }
                }
                if((angle > M_PI_2 && angle < M_PI) || (angle < -1*M_PI && angle > -3*M_PI_2)){
                    if([self checkMoveToMaxOfMonster:(elem.position + 16)] && [self checkMoveToLeftScreenOfMonster:(elem.position + 16) andOrigin:elem.position]){
                        elem.position = elem.position + 16;
                    }else{
                        if([self checkMoveToMaxOfMonster:(elem.position + 16)]) {
                            elem.position = elem.position - 18;
                        }else{
                            elem.position = elem.position + 18;
                        }
                    }
                }
                if((angle > M_PI && angle < 3*M_PI_2) || (angle < -1*M_PI_2 && angle > -1*M_PI)){
                    if([self checkMoveToZeroOfMonster:(elem.position - 18)] && [self checkMoveToLeftScreenOfMonster:(elem.position - 18) andOrigin:elem.position]){
                        elem.position = elem.position - 18;
                    }else{
                        if([self checkMoveToZeroOfMonster:(elem.position - 18)]) {
                            elem.position = elem.position + 16;
                        }else{
                            elem.position = elem.position - 16;
                        }
                    }
                }
                if((angle > 3*M_PI_2 && angle < 2*M_PI) || (angle < 0 && angle > -1*M_PI_2)){
                    if([self checkMoveToZeroOfMonster:(elem.position - 16)] && [self checkMoveToRightScreenOfMonster:(elem.position - 16) andOrigin:elem.position]){
                        elem.position = elem.position - 16;
                    }else{
                        if([self checkMoveToZeroOfMonster:(elem.position - 16)]) {
                            elem.position = elem.position + 18;
                        }else{
                            elem.position = elem.position - 18;
                        }
                    }
                }
                
                break;
                
                // Wolves
            case 4:
                if((angle > -(1/2)*M_PI_4 && angle < (1/2)*M_PI_4) || (angle < -(15/2)*M_PI_4 && angle > -(17/2)*M_PI_4) || (angle > (15/2)*M_PI_4 && angle < (17/2)*M_PI_4)){
                    elem.position = elem.position + 1;
                }
                if((angle > (1/2)*M_PI_4 && angle < (3/2)*M_PI_4) || (angle < -(13/2)*M_PI_4 && angle > -(15/2)*M_PI_4)){
                    elem.position = elem.position + 18;
                }
                if((angle > (3/2)*M_PI_4 && angle < (5/2)*M_PI_4) || (angle < -(11/2)*M_PI_4 && angle > -(13/2)*M_PI_4)){
                    elem.position = elem.position + 17;
                }
                if((angle > (5/2)*M_PI_4 && angle < (7/2)*M_PI_4) || (angle < -(9/2)*M_PI_4 && angle > -(11/2)*M_PI_4)){
                    elem.position = elem.position + 16;
                }
                if((angle > (7/2)*M_PI_4 && angle < (9/2)*M_PI_4) || (angle < -(7/2)*M_PI_4 && angle > -(9/2)*M_PI_4)){
                    elem.position = elem.position - 1;
                }
                if((angle > (9/2)*M_PI_4 && angle < (11/2)*M_PI_4) || (angle < -(5/2)*M_PI_4 && angle > -(7/2)*M_PI_4)){
                    elem.position = elem.position - 18;
                }
                if((angle > (11/2)*M_PI_4 && angle < (13/2)*M_PI_4) || (angle < -(3/2)*M_PI_4 && angle > -(5/2)*M_PI_4)){
                    elem.position = elem.position - 17;
                }
                if((angle > (13/2)*M_PI_4 && angle < (15/2)*M_PI_4) || (angle < -(1/2)*M_PI_4 && angle > -(3/2)*M_PI_4)){
                    elem.position = elem.position - 16;
                }
                
                break;
        }
    
        if(elem.position > 289){
            elem.position = elem.position - 289;
        }
        
        return elem;
}


/* ------------------ */


+ (double) calculateAngleWithX1: (int) posx1
                          andX2: (int) posx2
                          andY1: (int) posy1
                          andY2: (int) posy2
{
    double dx = posx1 - posx2;
    double dy = posy1 - posy2;
    double angle = atan2(dy,dx);
    
    angle += 0.05;
    
    return angle;
}


/* ------------------ */


+ (BOOL) checkMoveToZeroOfMonster: (int) number
{
    if(number > 0){
        return true;
    } else {
        return false;
    }
}


/* ------------------ */


+ (BOOL) checkMoveToMaxOfMonster: (int) number
{
    if(number < 289){
        return true;
    } else {
        return false;
    }
}


/* ------------------ */


+ (BOOL) checkMoveToLeftScreenOfMonster: (int) number1
                              andOrigin: (int) number2
{
    if(number1%17 < number2<17){
        return true;
    } else {
        return false;
    }
}


/* ------------------ */


+ (BOOL) checkMoveToRightScreenOfMonster: (int) number1
                               andOrigin: (int) number2
{
    if(number1%17 > number2<17){
        return true;
    } else {
        return false;
    }
}


















@end
