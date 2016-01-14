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
#import "InputCollector.h"
#import "PatientList.h"

int main(int argc, const char * argv[]) {
    
    //Healthcard Info Collector
    InputCollector *healthCardInfoCollector = [[InputCollector alloc]init];
    
    NSString *patientHCQuestion = @"Do you have a health card? (write 'yes' or 'no')\n";
    
    NSString *patientHCInput = [healthCardInfoCollector inputForPrompt:patientHCQuestion];
    //Name Collector
    
    
    if([patientHCInput isEqualToString:@"yes"]) {
    
        
        InputCollector *newPatientNameCollector = [[InputCollector alloc]init];
    
    NSString *patientNameQuestion = @"Welcome! Please answer some questions about yourself.\n First, What is your name?";
    
    NSString *patientNameInput = [newPatientNameCollector inputForPrompt:patientNameQuestion];
    
   
    //Age Collector
    
    InputCollector *newPatientAgeCollector = [[InputCollector alloc]init];
    
    NSString *patientAgeQuestion = @"Thank you! Please enter your age\n";
    
        NSString *patientAgeInput = [newPatientAgeCollector inputForPrompt:patientAgeQuestion];
    
    //Symptoms Collector
   
    InputCollector *symptom1Collector = [[InputCollector alloc]init];
    
    NSString *symptom1Question = @"What is your first symptom?";
    
    NSString *symptom1Input = [symptom1Collector inputForPrompt:symptom1Question];

    InputCollector *symptom2Collector = [[InputCollector alloc]init];
    
    NSString *symptom2Question = @"What is your second symptom?";
    
    NSString *symptom2Input = [symptom2Collector inputForPrompt:symptom2Question];
    
    InputCollector *symptom3Collector = [[InputCollector alloc]init];
    
    NSString *symptom3Question = @"What is your second symptom?";
    
    NSString *symptom3Input = [symptom3Collector inputForPrompt:symptom3Question];
        
        
        
        Patient *newPatient=[[Patient alloc] init];
        PatientList *patientList = [[PatientList alloc]init];
        
        newPatient.patientNameInput = patientNameInput;
        newPatient.patientAgeInput= patientAgeInput;
        newPatient.symptom1Input= symptom1Input;
        newPatient.symptom2Input= symptom2Input;
        newPatient.symptom3Input= symptom3Input;
        
        [patientList.list addObject:newPatient];
        
        
    for (int i=0; i<[patientList.list count]; i++) {
        NSLog(@"Is this information correct? Name:%@ Age:%@ Symptom1:%@ Symptom2:%@ Symptom3:%@", [patientList.list[i] patientNameInput],[patientList.list[i] patientAgeInput],[patientList.list[i] symptom1Input],[patientList.list[i] symptom2Input],[patientList.list[i] symptom3Input]);}
}
    else {
        NSLog(@"Sorry, you don't have a health card. Bye.");
}
    

    
    return 0;
}













    
//        Task 1 - Setup & General Information
//        The doctor should be able to ask the patient for some general information about them (age and name for example). The patient should be able to ask the doctor their name and specialization.
//            
//            Implement two classes Doctor and Patient. Think about how instances of doctors and patients should be constructed. What general information for each of them need to be initialized, based on the instructions above?
//                
//                Create custom initializers for both the Doctor and Patient class. Use the custom initializer to signal to other coders using your classes how they are to be used.
//                    
//                    Task 2 - Visiting a Doctor
//                    A patient should be able to visit a doctor. Tip: This is an action that the patient is executing and requires an instance of a doctor to do so.
//                        
//                        The doctor instance should be able to accept a patient. In order for the doctor to accept the patient, the patient must have a valid health card. When the patient visits the doctor the doctor will ask them if they have a health card. If the answer is no, then the doctor cannot accept the patient. If they answer is yes, then the patient is accepted. The doctor should keep track of all their accepted patients. Think about which collection type is best suited to this task.
//                            
//                            Task 3 - Treating a Patient
//                            A patient can request medication from the doctor. The patient will do this by calling requestMedication on the doctor instance. Only patients previously accepted by that doctor can ask for prescriptions. In order for the doctor to create and return a prescription to the patient, the doctor needs to know what symptoms the patient is currently experiencing. This will affect what is prescribed.
//                                
//                                Suggestion: While you could keep things simple and not define any other classes to accomplish this, you may want to consider what other objects are involved in this interaction.
//                                
//                                Task 4 - Prescriptions are Shared
//                                Even though a particular doctor writes prescriptions for their patients, a patient's doctor should be able to access any prescription that is ever written for that patient. While it's true that our health care system doesn't presently work this way, it should! Anyway, once the doctor writes the prescription, before handing it the patient, the doctor should add it the collection of prescriptions written by any doctor. What type of collection is best suited to this problem?
//                                    
//                                    Tip: Since any other doctor can access these prescriptions, think about where this collection of prescriptions will be stored. As well, think about who should be able to read/change this information. In other words, should an instance of a patient be able to read/write this information? Ideally not!
//                                    
//                                    Task 5 - Modularity
//                                    Clean encapsulation of a problem makes your classes modular. That means they can be easily swapped out for other classes that solve the same problem in a different way. Your coffee maker doesn't care what type of container is placed under it, as long as it meets the requirements (i.e. large enough to hold all the coffee, and short enought to fit under the spout).
//                                        
//                                        With that in mind, find another student who has reached this step and trade Doctor and Patient classes with them. Without modifying the classes, just your main.m, how much effort is needed to adapt their classes to your interaction. Try to avoid reading the .m files and instead use the header files as "documentation" of how the objects work.    }

