//
//  CCViewController.h
//  Tourist
//
//  Created by Teddy Wyly on 9/21/13.
//  Copyright (c) 2013 Teddy Wyly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CCViewController : UIViewController

// The properties that represent our UI elements of our ViewController
@property (weak, nonatomic) IBOutlet UIImageView *myImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *locationLabel;

// A container to hold various CCPlace objects that we will create
@property (strong, nonatomic) NSArray *places; // Of CCPlace Objects

@end
