//
//  main.m
//  Patient_Doctor
//
//  Created by Kerry Toonen on 2016-01-14.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"
#import "PatientList.h"
#import "PrescriptionList.h"

int main(int argc, const char * argv[]) {
    
    NSMutableArray *doctorList = [[NSMutableArray alloc] init];
    
    Doctor *carl = [[Doctor alloc] init];
    carl.doctorName = @"Carl Banks";
    carl.specialization = @"Neurologist";
    
    
    Doctor *john = [[Doctor alloc] init];
    john.doctorName = @"John Smith";
    john.specialization = @"Pediatirician";
    
    
    Doctor *kerry = [[Doctor alloc] init];
    kerry.doctorName =@"Kerry Toonen";
    kerry.specialization=@"Dentist";
 
    
    PrescriptionList *prelist1 = [[PrescriptionList alloc] init];
    
    
    [doctorList addObject:carl];
    [doctorList addObject:john];
    [doctorList addObject:kerry];

        Patient *jeff=[[Patient alloc] init];
        PatientList *patientList = [[PatientList alloc]init];
        
        jeff.patientNameInput = @"Jeff Green";
        jeff.patientAgeInput= @"42";
        jeff.symptom1Input= @"Fever";
        jeff.symptom2Input= @"Tired";
        jeff.symptom3Input= @"Hungry";
        
        [patientList.list addObject:jeff];
    
    Patient *hyunsoo=[[Patient alloc] init];
    hyunsoo.patientNameInput = @"Hyunsoo Kim";
    hyunsoo.patientAgeInput= @"38";
    hyunsoo.symptom1Input= @"Fever";
    hyunsoo.symptom2Input= @"Indigestion";
    hyunsoo.symptom3Input= @"Hungry";
    
    Patient *rita=[[Patient alloc] init];
    rita.patientNameInput = @"Rita Young";
    rita.patientAgeInput= @"40";
    rita.symptom1Input= @"Fever";
    rita.symptom2Input= @"Tired";
    rita.symptom3Input= @"Indigestion";
    
    [patientList.list addObject:jeff];
    [patientList.list addObject:hyunsoo];
    [patientList.list addObject:rita];
    
    [jeff visitTheDoctor:kerry];
    [kerry checkHealthcard:jeff];
    [kerry prescribeMeds:jeff];
    [kerry addToPrescriptionList:prelist1];
    
}







