//
//  ViewController.h
//  Learning
//
//  Created by Jessica Craig on 8/28/16.
//  Copyright © 2016 Jessica Craig. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UIImageView *imageView;
    NSMutableArray *imagesArray;
    
        
    CGPoint lastPoint;
    CGFloat red;
    CGFloat green;
    CGFloat blue;
    CGFloat brush;
    CGFloat opacity;
    BOOL mouseSwiped;
}


-(IBAction)randomize:(id)sender;


- (IBAction)whiteButton:(id)sender;
- (IBAction)pinkButton:(id)sender;
- (IBAction)blackButton:(id)sender;
- (IBAction)greenButton:(id)sender;
- (IBAction)purpleButton:(id)sender;
- (IBAction)yellowButton:(id)sender;
- (IBAction)blueButton:(id)sender;
- (IBAction)redButton:(id)sender;
- (IBAction)orangeButton:(id)sender;
- (IBAction)brownButton:(id)sender;
- (IBAction)greyButton:(id)sender;

@property (weak, nonatomic) IBOutlet UIImageView *mainView;
@property (weak, nonatomic) IBOutlet UIImageView *tempView;

- (IBAction)pencilPressed:(id)sender;
- (IBAction)eraserPressed:(id)sender;
- (IBAction)resetPressed:(id)sender;


@end

