//
//  PeopleAppDelegate.h
//  People
//
//  Created by John Baker on 8/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PeopleAppDelegate : NSObject <UIApplicationDelegate> {
    NSMutableArray* people;
    NSString* docPath;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;
@property (nonatomic, retain) NSMutableArray* people;
@property (nonatomic, retain) NSString* docPath;

@end
