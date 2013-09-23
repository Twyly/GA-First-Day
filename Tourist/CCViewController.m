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


// The viewDidLoad method gets called just before our view appers on screen
- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // The creation of a CCPlace object named myPlace
    CCPlace *myPlace = [[CCPlace alloc] init];
    
    // Setting the attributes of myPlace to have it represent a physical place
    myPlace.name = @"Yosemite";
    myPlace.location = @"California";
    myPlace.image = [UIImage imageNamed:@"Yosemite.JPG"];
    
    // The instantiation of four more places, setting each one's properties
    CCPlace *secondPlace = [[CCPlace alloc] init];
    secondPlace.name = @"Bamboo Forest";
    secondPlace.location = @"Kyoto, Japan";
    secondPlace.image = [UIImage imageNamed:@"BambooForest.jpg"];
    
    CCPlace *thirdPlace = [[CCPlace alloc] init];
    thirdPlace.name = @"Amalfi Coast";
    thirdPlace.location = @"Italy";
    thirdPlace.image = [UIImage imageNamed:@"AmalfiCoast.jpg"];
    
    CCPlace *fourthPlace = [[CCPlace alloc] init];
    fourthPlace.name = @"Bow";
    fourthPlace.location = @"New Hampshire";
    fourthPlace.image = [UIImage imageNamed:@"Bow.jpg"];
    
    CCPlace *fifthPlace = [[CCPlace alloc] init];
    fifthPlace.name = @"Great Wall of China";
    fifthPlace.location = @"China";
    fifthPlace.image = [UIImage imageNamed:@"GreatWallOfChina.jpg"];
    
    //Instantiating our Array property which will hold all of our places
    self.places = [[NSArray alloc] initWithObjects:myPlace, secondPlace, thirdPlace, fourthPlace, fifthPlace, nil];
    
    

}

// The viewDidAppear method gets called right after our view comes on screen.
- (void)viewDidAppear:(BOOL)animated
{
    [self displayRandomPlace];
}


// The method that is executed when our UIBarButtonItem is pressed
- (IBAction)newPlaceButtonPressed:(UIBarButtonItem *)sender
{

    [self displayRandomPlace];
    
}

- (void)displayRandomPlace
{
    // Finding the number of places in our places array
    int numberOfPlaces = [self.places count];
    
    // A nice and appropriate way of finding an integer corresponding to a random index of our array
    int randomIndex = arc4random() % numberOfPlaces;
    NSLog(@"I have %i places and my random Index is %i", numberOfPlaces, randomIndex);
    
    // Grabbing our place out of our array
    CCPlace *placeToDisplay = [self.places objectAtIndex:randomIndex];
    
    // Changing our UI to display the random place.
    
//    self.myImageView.image = placeToDisplay.image;
//    self.nameLabel.text = placeToDisplay.name;
//    self.locationLabel.text = placeToDisplay.location;
    
    
    // Changing our UI to display the random place.  The code for this animation was found on stackoverflow.com
    // Notice that if you did not want animation, delete the block of code below and uncomment the code above
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
