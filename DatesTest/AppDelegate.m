//
//  AppDelegate.m
//  DatesTest
//
//  Created by Emk on 8/17/17.
//  Copyright © 2017 Emk. All rights reserved.
//

#import "AppDelegate.h"
#import "ESStudent.h"

@interface AppDelegate ()

@property (strong, nonatomic) NSDate* currentDate;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    /*
    NSMutableArray* studentsArray = [NSMutableArray array];
    
    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    
    for (NSInteger i = 0; i < 30; i++) {
        ESStudent* student = [[ESStudent alloc] init];
        NSDate* date = [NSDate dateWithTimeIntervalSince1970:arc4random() % 946080000];
        student.dateOfBirth = date;
        [studentsArray addObject:student];
    }
    
//    for (ESStudent* student in studentsArray) {
//        
//        NSLog(@"%@", [dateFormatter stringFromDate:student.dateOfBirth]);
//        
//    }
    
    NSArray* sortedArray = [studentsArray sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        
        ESStudent* stud1 = (ESStudent*) obj1;
        ESStudent* stud2 = (ESStudent*) obj2;
        
        return [stud2.dateOfBirth compare:stud1.dateOfBirth];
    }];
    
//    for (ESStudent* student in sortedArray) {
//        NSLog(@"%@", [dateFormatter stringFromDate:student.dateOfBirth]);
//    }
    
    NSArray* lastNameArray = [NSArray arrayWithObjects:@"Shafigin", @"Onisenko", @"Lapin", @"Arzymbaev", @"Tairov", @"Trefilov", @"Usubaliev", nil];
    NSArray* nameArray = [NSArray arrayWithObjects:@"Emil", @"Maxim", @"Sasha", @"Nurbek", @"Chika", @"Kirill", @"Kuba", nil];
    
    studentsArray = [NSMutableArray new];
    
    for (ESStudent* student in sortedArray) {
        student.name = [nameArray objectAtIndex:arc4random() % [nameArray count]];
        student.lastName = [lastNameArray objectAtIndex:arc4random() % [lastNameArray count]];
        
//        NSLog(@"Student %@ %@", student.lastName, student.name);
        
        [studentsArray addObject:student];
    }
    
    NSArray* sortedArray2 = [studentsArray sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        
        ESStudent* stud1 = (ESStudent*) obj1;
        ESStudent* stud2 = (ESStudent*) obj2;
        
        if ([stud1.lastName isEqualToString:stud2.lastName])
        {
            return [stud1.name compare:stud2.name];
        } else if ([stud1.name isEqualToString:stud2.name]) {
            return [stud1.dateOfBirth compare:stud2.dateOfBirth];
        } else {
            return [stud1.lastName compare:stud2.lastName];
        }
        
    }];
    
    self.currentDate = [NSDate dateWithTimeIntervalSince1970:0];
    
    NSMutableDictionary* dictionary = [[NSMutableDictionary alloc] init];
    
    for (ESStudent* student in sortedArray2) {
//        NSLog(@"%@\t%@\t%@", student.lastName, student.name, [dateFormatter stringFromDate:student.dateOfBirth]);
        
        [dictionary setObject:student forKey:student.dateOfBirth];
    }
    
    //NSTimer* timer = [NSTimer scheduledTimerWithTimeInterval:0.5f target:self selector:@selector(nextDayAndCongrats:) userInfo:dictionary repeats:YES];
    
    NSDate* youngManDt = [[sortedArray objectAtIndex:0] dateOfBirth];
    NSDate* oldManDt = [[sortedArray objectAtIndex:[sortedArray count] - 1] dateOfBirth];
    
    
    NSCalendar* calendar = [NSCalendar currentCalendar];
    
    NSDateComponents* components = [calendar components:NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay fromDate:oldManDt toDate:youngManDt options:0];
    
    
    NSLog(@"%@", components);
    
    for (ESStudent* student in sortedArray) {
        NSLog(@"%@", student.dateOfBirth);
    }
    */
    
    NSCalendar* calendar = [NSCalendar currentCalendar];
    
    NSDateComponents
    
    
    
    return YES;
}
/*
- (void) nextDayAndCongrats:(NSTimer*) timer {
    
    self.currentDate = [NSDate dateWithTimeInterval:86400 sinceDate:self.currentDate];
    
    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"MM/dd"];
    
    NSLog(@"%@", [dateFormatter stringFromDate:self.currentDate]);
    
    for (NSDate* studentDate in [timer.userInfo allKeys])
    {
        if ([[dateFormatter stringFromDate:self.currentDate] isEqualToString:[dateFormatter stringFromDate:studentDate]])
        {
            NSLog(@"Congratulations!!! %@ %@", [[timer.userInfo objectForKey:studentDate] lastName], [[timer.userInfo objectForKey:studentDate] name]);
        }
    }
}*/

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
