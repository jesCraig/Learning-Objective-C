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
      
    } //not going to work for what i want

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    imagesArray = [[NSMutableArray alloc] initWithObjects:@"yellowCard",@"pinkCard",@"blueCard",nil];
}







- (IBAction)whiteButton:(id)sender {
}


- (IBAction)pinkButton:(id)sender {
}
- (IBAction)blackButton:(id)sender {
}
- (IBAction)greenButton:(id)sender {
}
- (IBAction)purpleButton:(id)sender {
}
- (IBAction)yellowButton:(id)sender {
}
- (IBAction)blueButton:(id)sender {
}

- (IBAction)redButton:(id)sender {
}
- (IBAction)orangeButton:(id)sender {
}
- (IBAction)brownButton:(id)sender {
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
