//
//  Patient.m
//  Patient_Doctor
//
//  Created by Kerry Toonen on 2016-01-14.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import "Patient.h"


@implementation Patient



- (id)initWithModel:(NSString *)aPatient {
    self = [super init];
    if (self) {
        _symptomList= [[NSMutableArray alloc]init];
        [self.symptomList addObject:_symptom1Input];
        [self.symptomList addObject:_symptom2Input];
        [self.symptomList addObject:_symptom3Input];
    }
    return self;
}

- (void)visitTheDoctor:(Doctor *)theDoc {
}



@end

