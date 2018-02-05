//
//  KIStudent.m
//  BitwiseOperationsHW
//
//  Created by Ivan Kozaderov on 03.02.2018.
//  Copyright © 2018 Ivan Kozaderov. All rights reserved.
//

#import "KIStudent.h"

@implementation KIStudent

- (NSString*) answerByType:(KIStudentSubjectType) type {
    return self.subjectType & type ? @"yes" : @"no";
}

- (NSString*) description {
    
    return [NSString stringWithFormat:  @"Student studies:\n"
            "biology = %@\n"
            "math = %@\n"
            "development = %@\n"
            "engineering = %@\n"
            "art = %@\n"
            "phycology = %@\n"
            "anatomy = %@",
            [self answerByType:KIStudentSubjectTypeBiology],
            [self answerByType:KIStudentSubjectTypeMath],
            [self answerByType:KIStudentSubjectTypeDevelopment],
            [self answerByType:KIStudentSubjectTypeEngineering],
            [self answerByType:KIStudentSubjectTypeArt],
            [self answerByType:KIStudentSubjectTypePhycology],
            [self answerByType:KIStudentSubjectTypeAnatomy]];
    
}

@end
