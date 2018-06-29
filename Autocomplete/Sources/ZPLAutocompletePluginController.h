//
//  ZPLAutocompletePluginController.h
//  Autocomplete
//
//  Created by Yigitcan Yurtsever on 29.06.2018.
//  Copyright © 2018 Zeplin, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZPLAutocompletePluginController : NSObject

@property (assign, nonatomic, getter=isEnabled) BOOL enabled;

+ (instancetype)sharedController;

@end
