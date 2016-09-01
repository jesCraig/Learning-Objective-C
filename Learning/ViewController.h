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

@end

