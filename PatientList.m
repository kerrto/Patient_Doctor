//
//  PatientList.m
//  Patient_Doctor
//
//  Created by Kerry Toonen on 2016-01-14.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import "PatientList.h"
#import "Patient.h"

@implementation PatientList

-(void)addPatient:(Patient *)newPatient {
    [self.list addObject:newPatient];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _list = [[NSMutableArray alloc] init];
    }
    return self;
}


@end
