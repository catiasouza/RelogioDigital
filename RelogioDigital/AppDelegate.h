//
//  AppDelegate.h
//  RelogioDigital
//
//  Created by Cátia Souza on 13/04/20.
//  Copyright © 2020 Cátia Souza. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentCloudKitContainer *persistentContainer;

- (void)saveContext;


@end

