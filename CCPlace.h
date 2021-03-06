//
//  CCPlace.h
//  Tourist
//
//  Created by Teddy Wyly on 9/21/13.
//  Copyright (c) 2013 Teddy Wyly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CCPlace : NSObject

// These are the public properties that are accessible to other classes that import CCPlace.h

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *location;
@property (strong, nonatomic) UIImage *image;

@end
