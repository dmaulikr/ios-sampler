//
//  Sound.h
//  Sampler
//
//  Created by Harry Nelken on 11/25/14.
//  Copyright (c) 2014 Harry Nelken. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Sound : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * extension;
@property (nonatomic, retain) NSString * group;
@property (nonatomic, retain) NSString * path;
-(NSURL*)getSampleURL ;

@end
