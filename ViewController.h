//
//  ViewController.h
//  clotconclave
//
//  Created by INMUBPHG2103 on 07/08/13.
//  Copyright (c) 2013 watermelon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "firstPage.h"
@interface ViewController : UIViewController
{
    IBOutlet UIButton *nextViewBtn;
}
@property (strong, nonatomic) IBOutlet UIWebView *webView;
- (IBAction)nextView:(id)sender;
@property(nonatomic,retain)IBOutlet UIButton *nextViewBtn;
@end
