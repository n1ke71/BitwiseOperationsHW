//
//  AppDelegate.m
//  BitwiseOperationsHW
//
//  Created by Ivan Kozaderov on 03.02.2018.
//  Copyright © 2018 Ivan Kozaderov. All rights reserved.
//

#import "AppDelegate.h"
#import "KIStudent.h"

//#define PUPIL
//#define STUDENT
//#define MASTER
#define SUPERMAN
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.


#pragma - mark  PUPIL
   

    
    NSMutableArray* array = [NSMutableArray array];
    
    for (int i = 0; i < 10; i++) {
        
          KIStudent*student = [[KIStudent alloc]init];
          student.subjectType = pow(2, arc4random_uniform(7));
          #ifdef PUPIL
          NSLog(@"%@ ",student.description);
          #endif
          [array addObject:student];
    }
    

#pragma - mark STUDENT
    
#ifdef STUDENT
    
    NSMutableArray * tech = [NSMutableArray array];
    NSMutableArray * hum  = [NSMutableArray array];
    NSUInteger counter = 0;
    
    for (KIStudent* student in array) {
        
        if (student.subjectType & ( KIStudentSubjectTypeBiology   | KIStudentSubjectTypeArt |
                                    KIStudentSubjectTypePhycology | KIStudentSubjectTypeAnatomy)) {
           
            [hum addObject:student];
            
#ifdef MASTER
            
            if (student.subjectType & KIStudentSubjectTypeBiology) {
                student.subjectType = student.subjectType >>1 ; //using if student has only one subject (else student.subjectType & 0x1)
                NSLog(@"Subject Biology Canceled");
            }
#endif
            
        }
        else if (student.subjectType & ( KIStudentSubjectTypeMath | KIStudentSubjectTypeDevelopment |
                                         KIStudentSubjectTypeEngineering)){
            
            [tech addObject:student];
            
        if (student.subjectType & KIStudentSubjectTypeDevelopment) NSLog(@"Number of developers=%lu",++counter);
                
            
        }
    }
    
#endif
    
#ifdef SUPERMAN
 
    NSUInteger number = arc4random();
    NSUInteger staticNumber = number;
    NSLog(@"decimal number\n%lu",number);
    NSMutableArray* mArray = [NSMutableArray array];
    NSUInteger binNumber = 0;
    NSUInteger n = 0;

    while(staticNumber != binNumber){
        
        NSUInteger bin = number % 2;
        NSString*string = [NSString stringWithFormat:@"%@",bin ? @"1":@"0"];
        //NSLog(@"bin=%lu",bin);
        binNumber |= bin<<n++;
        NSUInteger dec = number / 2;
        number = dec;
        [mArray addObject:string];
       
    }
    NSMutableString* result = [[NSMutableString alloc]init];
    
    for (int j = [mArray count] - 1; j >= 0; j--) {
        
        NSString* string = [mArray objectAtIndex:j];
        result = (NSMutableString*) [result stringByAppendingString:string];

    }
    NSLog(@"binary number\n%@",result);
    
#endif
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
