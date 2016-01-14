//
//  Patient.h
//  Patient_Doctor
//
//  Created by Kerry Toonen on 2016-01-14.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Patient : NSObject

//Properties


@property (nonatomic, strong)NSString *patientNameInput;
@property (nonatomic, strong)NSString *patientAgeInput;
@property (nonatomic, strong)NSString *symptom1Input;
@property (nonatomic, strong)NSString *symptom2Input;
@property (nonatomic, strong)NSString *symptom3Input;
@property (nonatomic, strong)NSMutableArray *symptomList;


//Instances

-(void)visitTheDoctor;

//Initializer



@end
