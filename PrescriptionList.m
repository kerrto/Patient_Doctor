//
//  PrescriptionList.m
//  Patient_Doctor
//
//  Created by Kerry Toonen on 2016-01-14.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import "PrescriptionList.h"
#import "Doctor.h"
#import "Patient.h"

@implementation PrescriptionList

- (id)initWithPrescriptionList:(NSString *)aPres {
    self = [super init];
    if (self) {
        _allDoctorPrescriptionList=[[NSMutableArray alloc]init];
    }
    
    return self;
}

@end

