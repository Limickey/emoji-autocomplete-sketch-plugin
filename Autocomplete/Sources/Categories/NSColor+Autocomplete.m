//
//  NSColor+Autocomplete.m
//  Autocomplete
//
//  Created by K. Berk Cebi on 7/9/18.
//  Copyright © 2018 Zeplin, Inc.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

#import "NSColor+Autocomplete.h"

#import "ZPLTheme.h"

@implementation NSColor (Autocomplete)

+ (NSColor *)zpl_backgroundColor {
    NSObject<ZPLTheme> *theme = [self zpl_currentTheme];
    if (!theme) {
        return nil;
    }

    return [theme layerListBackgroundColor];
}

+ (NSColor *)zpl_selectionColor {
    NSObject<ZPLTheme> *theme = [self zpl_currentTheme];
    if (!theme) {
        return [NSColor colorWithDeviceRed:105.0f / 255.0f green:155.0f / 255.0f blue:228.0f / 255.0f alpha:1.0f];
    }

    return [theme inspectorAccentColor];
}

+ (NSColor *)zpl_textColor {
    NSObject<ZPLTheme> *theme = [self zpl_currentTheme];
    if (!theme) {
        return nil;
    }

    return [theme inspectorLabelTextColor];
}

#pragma mark - Private

+ (NSObject<ZPLTheme> *)zpl_currentTheme {
    Class themeClass = NSClassFromString(ZPLThemeClassName);
    if (!themeClass) {
        return nil;
    }

    return [themeClass sharedTheme];
}

@end
