//
//  KIStudent.h
//  BitwiseOperationsHW
//
//  Created by Ivan Kozaderov on 03.02.2018.
//  Copyright © 2018 Ivan Kozaderov. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{
  
    KIStudentSubjectTypeBiology         = 1 << 0,//1
    KIStudentSubjectTypeMath            = 1 << 1,//2
    KIStudentSubjectTypeDevelopment     = 1 << 2,//4
    KIStudentSubjectTypeEngineering     = 1 << 3,//8
    KIStudentSubjectTypeArt             = 1 << 4,//16
    KIStudentSubjectTypePhycology       = 1 << 5,//32
    KIStudentSubjectTypeAnatomy         = 1 << 6 //64
    
} KIStudentSubjectType;

@interface KIStudent : NSObject

@property(assign,nonatomic) KIStudentSubjectType subjectType;

- (NSString*) answerByType:(KIStudentSubjectType) type;



@end
