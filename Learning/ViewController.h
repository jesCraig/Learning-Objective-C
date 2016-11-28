//
//  ViewController.h
//  Learning
//
//  Created by Jessica Craig on 8/28/16.
//  Copyright © 2016 Jessica Craig. All rights reserved.
//

#import <UIKit/UIKit.h>

int myImgCount;

//Drawing-------------------
@interface ViewController : UIViewController {
    
        
    CGPoint lastPoint;
    CGFloat red;
    CGFloat green;
    CGFloat blue;
    CGFloat brush;
    CGFloat opacity;
    BOOL mouseSwiped;
}


@property (weak, nonatomic) IBOutlet UIImageView *mainView;
@property (weak, nonatomic) IBOutlet UIImageView *tempView;

- (IBAction)pencilPressed:(id)sender;
- (IBAction)eraserPressed:(id)sender;
- (IBAction)resetPressed:(id)sender;

//End Drawing ---------------------



//Color matching
- (IBAction)colorButtonPressed:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *colorImageView;

//Number Matching-------------------

- (IBAction)numberButtonPressed:(id)sender;


@property (weak, nonatomic) IBOutlet
    UIImageView *numberImageView;

@end

