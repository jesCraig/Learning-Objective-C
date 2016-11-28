//
//  ViewController.m
//  Learning
//
//  Created by Jessica Craig on 8/28/16.
//  Copyright © 2016 Jessica Craig. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController


NSMutableArray *imagesArray;
NSMutableArray *numberArray;

- (void)viewDidLoad
{
    
    red = 0.0/255.0;
    green = 0.0/255.0;
    blue = 0.0/255.0;
    brush = 10.0;
    opacity = 1.0;
    
    
    imagesArray = [NSMutableArray arrayWithObjects:
                   @"blackCard.png", @"blueCard.png",
                   @"brownCard.png", @"greenCard.png",
                   @"yellowCard.png", @"orangeCard.png",
                   @"pinkCard.png", @"purpleCard.png",
                   @"redCard.png", @"whiteCard.png", nil];
    
    numberArray = [NSMutableArray arrayWithObjects:
                  @"1Number", @"2Number",
                  @"3Number", @"4Number",
                  @"5Number", nil];
    
    
    [super viewDidLoad];
    
    int randomImgNum = arc4random_uniform(10);
    self.colorImageView.image = [UIImage imageNamed: [imagesArray objectAtIndex: randomImgNum]];
    int numRandom = arc4random_uniform(5);
    self.numberImageView.image = [UIImage imageNamed: [numberArray objectAtIndex: numRandom]];
    
}

- (IBAction)numberButtonPressed:(id)sender{
    
    UIButton * numberButtonPressed = (UIButton*)sender;
    int randomImgNumber = arc4random_uniform(5);
    
    NSString *imgName = [NSString stringWithString:numberArray[numberButtonPressed.tag]];
    NSString *nameArrayObject = [NSString stringWithString:numberArray[randomImgNumber]];
    
    NSLog(@"%@", imgName);
    NSLog(@"%@", nameArrayObject);
    
    self.numberImageView.image = [UIImage imageNamed:[numberArray objectAtIndex: randomImgNumber]];
}


UIImageView *numberImageView;

/*-(void)randomizeImages{
    int randomImgNum = arc4random_uniform(10);
   
    NSString *nameArrayObject = [NSString stringWithString:imagesArray[randomImgNum]];
    NSLog(@"%@", nameArrayObject);
    
    self.colorImageView.image = [UIImage imageNamed:[imagesArray objectAtIndex: randomImgNum]];

}
*/

- (IBAction)colorButtonPressed:(id)sender {
    
    
    UIButton * colorButtonPressed = (UIButton*)sender;
    int randomImgNum = arc4random_uniform(10);
    
    NSString *name = [NSString stringWithString:imagesArray[colorButtonPressed.tag]];
    NSString *nameArrayObject = [NSString stringWithString:imagesArray[randomImgNum]];
    NSString *splat = @"Splat Name";
    NSString *cardColor = @"Card Color";
    
        NSLog(@"%@", splat);
        NSLog(@"%@", name);
        NSLog(@"%@", cardColor);
        NSLog(@"%@", nameArrayObject);

    
    
    
   if(nameArrayObject == name){
      
        self.colorImageView.image = [UIImage imageNamed: @"smileyFace.jpg"];
    }
    
    else if(name != nameArrayObject)
        //[self randomizeImages];
        self.colorImageView.image = [UIImage imageNamed:[imagesArray objectAtIndex: randomImgNum]];
    
    
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
    red = 255.0/255.0;
    green = 255.0/255.0;
    blue = 255.0/255.0;
    opacity = 1.0;
}

- (IBAction)resetPressed:(id)sender {
    self.mainView.image = nil;
}
// End Drawing Code------------------------------------------------------------------------------------------------------------


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
