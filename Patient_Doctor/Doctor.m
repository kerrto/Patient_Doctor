//
//  Doctor.m
//  Patient_Doctor
//
//  Created by Kerry Toonen on 2016-01-14.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"
#import "PrescriptionList.h"

@implementation Doctor

- (id)initWithDoctor:(NSString *)aDoctor {
    self = [super init];
    if (self) {
        _otherPatientList=[[NSMutableArray alloc]init];
    }
    return self;
}

-(void)acceptPatient:(Patient *)aPatient {
    [self.otherPatientList addObject:aPatient];
}
    
-(void)checkHealthcard:(Patient *)aPatient {
    if ([aPatient.healthcard isEqualToString:@"yes"]) {
        [self acceptPatient:aPatient];
    }
}

    -(void)prescribeMeds:(Patient *)aPatient {
        [aPatient.prescription addObject:self.doctorName];
        [aPatient.prescription addObject:aPatient.patientNameInput];
        if ([aPatient.symptomList containsObject:@"Fever"]) {
            [aPatient.prescription addObject:@"Tylenol"];
            if ([aPatient.symptomList containsObject:@"Tired"]) {
                [aPatient.prescription addObject: @"Coffee"]; }
            if ([aPatient.symptomList containsObject:@"Indigestion"]){
                [aPatient.prescription addObject:@"Tums"];}
        if ([aPatient.symptomList containsObject:@"Hungry"]){
            [aPatient.prescription addObject:@"Food"];
         if ([aPatient.symptomList containsObject:@"\n"]) {
             [aPatient.prescription addObject:@" "];
           [self.prescriptionList addObject:aPatient.prescription];
                
            }
        }
            }
            
        }
    
-(void)checkAcceptanceForMeds:(Patient *)aPatient; {
    if ([_otherPatientList containsObject:aPatient]) {
        [self prescribeMeds:aPatient];
    }
}

    -(void)addToPrescriptionList:(PrescriptionList *)allPress {
        [allPress.allDoctorPrescriptionList addObject:self.prescriptionList]; }

    
    



    
@end
