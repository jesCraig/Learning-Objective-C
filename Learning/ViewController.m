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
    //randomize the images at top of screen
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

- (IBAction)greyButton:(id)sender {
}

- (void)viewDidLoad
{
    red = 0.0/255.0;
    green = 0.0/255.0;
    blue = 0.0/255.0;
    brush = 10.0;
    opacity = 1.0;
    
    [super viewDidLoad];
}

//Drawing Code------------------------------------------------------------------------------------------------------------
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    mouseSwiped = NO;
    UITouch *touch = [touches anyObject];
    lastPoint = [touch locationInView:self.view];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    
    mouseSwiped = YES;
    UITouch *touch = [touches anyObject];
    CGPoint currentPoint = [touch locationInView:self.view];
    
    UIGraphicsBeginImageContext(self.view.frame.size);
    [self.tempView.image drawInRect:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    CGContextMoveToPoint(UIGraphicsGetCurrentContext(), lastPoint.x, lastPoint.y);
    CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), currentPoint.x, currentPoint.y);
    CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapRound);
    CGContextSetLineWidth(UIGraphicsGetCurrentContext(), brush );
    CGContextSetRGBStrokeColor(UIGraphicsGetCurrentContext(), red, green, blue, 1.0);
    CGContextSetBlendMode(UIGraphicsGetCurrentContext(),kCGBlendModeNormal);
    
    CGContextStrokePath(UIGraphicsGetCurrentContext());
    self.tempView.image = UIGraphicsGetImageFromCurrentImageContext();
    [self.tempView setAlpha:opacity];
    UIGraphicsEndImageContext();
    
    lastPoint = currentPoint;
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    
    if(!mouseSwiped) {
        UIGraphicsBeginImageContext(self.view.frame.size);
        [self.tempView.image drawInRect:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
        CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapRound);
        CGContextSetLineWidth(UIGraphicsGetCurrentContext(), brush);
        CGContextSetRGBStrokeColor(UIGraphicsGetCurrentContext(), red, green, blue, opacity);
        CGContextMoveToPoint(UIGraphicsGetCurrentContext(), lastPoint.x, lastPoint.y);
        CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), lastPoint.x, lastPoint.y);
        CGContextStrokePath(UIGraphicsGetCurrentContext());
        CGContextFlush(UIGraphicsGetCurrentContext());
        self.tempView.image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
    }
    
    UIGraphicsBeginImageContext(self.mainView.frame.size);
    [self.mainView.image drawInRect:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) blendMode:kCGBlendModeNormal alpha:1.0];
    [self.tempView.image drawInRect:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) blendMode:kCGBlendModeNormal alpha:opacity];
    self.mainView.image = UIGraphicsGetImageFromCurrentImageContext();
    self.tempView.image = nil;
    UIGraphicsEndImageContext();
}





- (IBAction)pencilPressed:(id)sender {
        
        UIButton * PressedButton = (UIButton*)sender;
        
        switch(PressedButton.tag)
        {
            case 0:
                red = 0.0/255.0;
                green = 0.0/255.0;
                blue = 0.0/255.0;
                break;
            case 1:
                red = 105.0/255.0;
                green = 105.0/255.0;
                blue = 105.0/255.0;
                break;
            case 2:
                red = 255.0/255.0;
                green = 0.0/255.0;
                blue = 0.0/255.0;
                break;
            case 3:
                red = 0.0/255.0;
                green = 0.0/255.0;
                blue = 255.0/255.0;
                break;
            case 4:
                red = 102.0/255.0;
                green = 204.0/255.0;
                blue = 0.0/255.0;
                break;
            case 5:
                red = 102.0/255.0;
                green = 255.0/255.0;
                blue = 0.0/255.0;
                break;
            case 6:
                red = 51.0/255.0;
                green = 204.0/255.0;
                blue = 255.0/255.0;
                break;
            case 7:
                red = 160.0/255.0;
                green = 82.0/255.0;
                blue = 45.0/255.0;
                break;
            case 8:
                red = 255.0/255.0;
                green = 102.0/255.0;
                blue = 0.0/255.0;
                break;
            case 9:
                red = 255.0/255.0;
                green = 255.0/255.0;
                blue = 0.0/255.0;
                break;
        }
}

- (IBAction)eraserPressed:(id)sender {
    self.mainView.image = nil;
}

- (IBAction)resetPressed:(id)sender {
    red = 255.0/255.0;
    green = 255.0/255.0;
    blue = 255.0/255.0;
    opacity = 1.0;
}
// End Drawing Code------------------------------------------------------------------------------------------------------------









- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
