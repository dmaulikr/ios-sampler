//
//  Sound.m
//  Sampler
//
//  Created by Harry Nelken on 11/25/14.
//  Copyright (c) 2014 Harry Nelken. All rights reserved.
//

#import "Sound.h"


@implementation Sound

@dynamic name;
@dynamic extension;
@dynamic group;
@dynamic path;

-(NSURL*)getSampleURL {
    if (self.path != NULL) {
        return [NSURL fileURLWithPath:self.path];
    }
    return [[NSBundle mainBundle] URLForResource:self.name withExtension:self.extension];
}

@end
