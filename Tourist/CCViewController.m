//
//  CCViewController.m
//  Tourist
//
//  Created by Teddy Wyly on 9/21/13.
//  Copyright (c) 2013 Teddy Wyly. All rights reserved.
//

#import "CCViewController.h"
#import "CCPlace.h"

@interface CCViewController ()

@end

@implementation CCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    CCPlace *myPlace = [[CCPlace alloc] init];
    myPlace.name = @"Yosemite";
    myPlace.location = @"California, USA";
    myPlace.image = [UIImage imageNamed:@"Yosemite.JPG"];
    
    CCPlace *secondPlace = [[CCPlace alloc] init];
    secondPlace.name = @"Bamboo Forest";
    secondPlace.location = @"Kyoto, Japan";
    secondPlace.image = [UIImage imageNamed:@"BambooForest.jpg"];
    
    CCPlace *thirdPlace = [[CCPlace alloc] init];
    thirdPlace.name = @"AmalfiCoast";
    thirdPlace.location = @"Italy";
    thirdPlace.image = [UIImage imageNamed:@"AmalfiCoast.jpg"];
    
    self.places = [[NSMutableArray alloc] initWithObjects:myPlace, secondPlace, thirdPlace, nil];
    
    

}

- (void)viewDidAppear:(BOOL)animated
{
    [self displayRandomPlace];
}


- (IBAction)newPlaceButtonPressed:(UIBarButtonItem *)sender
{

    [self displayRandomPlace];
    
}

- (void)displayRandomPlace
{
    int numberOfPlaces = [self.places count];
    int randomIndex = arc4random() % numberOfPlaces;
    NSLog(@"I have %i places and my random Index is %i", numberOfPlaces, randomIndex);
    
    CCPlace *placeToDisplay = [self.places objectAtIndex:randomIndex];
    
    [UIView transitionWithView:self.view
                      duration:2.0f
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        self.myImageView.image = placeToDisplay.image;
                        self.nameLabel.text = placeToDisplay.name;
                        self.locationLabel.text = placeToDisplay.location;
                    } completion:nil];
}


@end
