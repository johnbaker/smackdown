//
//  Web.h
//  People
//
//  Created by John Baker on 8/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Web : UIViewController<UIWebViewDelegate> {
    NSString* person;
    UIActivityIndicatorView *activity ;
}

@property(nonatomic, retain) NSString* person;


@end
