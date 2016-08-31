//
//  ViewController.m
//  Learning
//
//  Created by Jessica Craig on 8/28/16.
//  Copyright © 2016 Jessica Craig. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end



@implementation ViewController

//to match the two the image in the imageView and the color at the bottom of the screen
//set a variable to each picture and to the corresponding color...then compare that with each other
-(IBAction)randomize:(id)sender{
    int randomimages = rand()% 10;
    switch (randomimages) {
        case 0:
            imageView.image = [UIImage imageNamed:@"brownCard"];
            break;
        case 1:
            imageView.image = [UIImage imageNamed:@"redCard"];
            break;
        case 2:
            imageView.image = [UIImage imageNamed:@"orangeCard"];
            break;
        case 3:
            imageView.image = [UIImage imageNamed:@"blackCard"];
            break;
        case 4:
            imageView.image = [UIImage imageNamed:@"whiteCard"];
            break;
        case 5:
            imageView.image = [UIImage imageNamed:@"purpleCard"];
            break;
        case 6:
            imageView.image = [UIImage imageNamed:@"greenCard"];
            break;
        case 7:
            imageView.image = [UIImage imageNamed:@"blueCard"];
            break;
        case 8:
            imageView.image = [UIImage imageNamed:@"pinkCard"];
            break;
        case 9:
            imageView.image = [UIImage imageNamed:@"yellowCard"];
            break;
      
    }

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}







- (IBAction)whiteButton:(id)sender forEvent:(UIEvent *)event {
}
- (IBAction)pinkButton:(id)sender forEvent:(UIEvent *)event {
}
- (IBAction)blackButton:(id)sender forEvent:(UIEvent *)event {
}
- (IBAction)greenButton:(id)sender forEvent:(UIEvent *)event {
}
- (IBAction)purpleButton:(id)sender forEvent:(UIEvent *)event {
}
- (IBAction)yellowButton:(id)sender forEvent:(UIEvent *)event {
}
- (IBAction)blueButton:(id)sender forEvent:(UIEvent *)event {
}

- (IBAction)redButton:(id)sender forEvent:(UIEvent *)event {
}
- (IBAction)orangeButton:(id)sender forEvent:(UIEvent *)event {
}
- (IBAction)brownButton:(id)sender forEvent:(UIEvent *)event {
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
