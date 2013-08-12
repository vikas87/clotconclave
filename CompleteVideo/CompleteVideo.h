//
//  CompleteVideo.h
//  clotconclave
//
//  Created by INMUBPHG2103 on 08/08/13.
//  Copyright (c) 2013 watermelon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "firstPage.h"
#import <MessageUI/MessageUI.h>
@interface CompleteVideo : UIViewController<MFMailComposeViewControllerDelegate>
{
    IBOutlet UIWebView *web;
    IBOutlet UIButton *relyAsiaResultBtn;
    IBOutlet UIButton *drPaulDorianBtn;
    IBOutlet UIButton *FAQsBtn;
    IBOutlet UIButton *sendQueryBtn;
    IBOutlet UIButton *backBtn;
}
@property(nonatomic,retain)IBOutlet UIWebView *web;
@property(nonatomic,retain)IBOutlet UIButton *relyAsiaResultBtn;
@property(nonatomic,retain)IBOutlet UIButton *drPaulDorianBtn;
@property(nonatomic,retain)IBOutlet UIButton *FAQsBtn;
@property(nonatomic,retain)IBOutlet UIButton *sendQueryBtn;
@property(nonatomic,retain)IBOutlet UIButton *backBtn;

- (IBAction)relyAsiaResult:(id)sender;
- (IBAction)drPaulDorian:(id)sender;
- (IBAction)FAQs:(id)sender;
- (IBAction)sendQuery:(id)sender;
- (IBAction)backAction:(id)sender;
@end
