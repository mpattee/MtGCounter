//
//  MtGCounterAppDelegate.h
//  MtGCounter
//
//  Created by Mike Pattee on 1/29/11.
//  Copyright 2011 Cordax Software LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MtGCounterViewController;

@interface MtGCounterAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MtGCounterViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MtGCounterViewController *viewController;

@end

