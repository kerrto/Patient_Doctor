//
//  Doctor.h
//  Patient_Doctor
//
//  Created by Kerry Toonen on 2016-01-14.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PatientList.h"

@interface Doctor : NSObject

//Properties

@property (nonatomic, strong) NSString *doctorName;

@property (nonatomic, strong) NSString *specialization;

@property (nonatomic, strong) NSMutableArray *list;

//Variables

-(void)checkHealthcard;
-(void)acceptPatient;

@end
