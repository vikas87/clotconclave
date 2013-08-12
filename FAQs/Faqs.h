//
//  Faqs.h
//  clotconclave
//
//  Created by INMUBPHG2103 on 08/08/13.
//  Copyright (c) 2013 watermelon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import "QuestionsVideo.h"

@interface Faqs : UIViewController<MFMailComposeViewControllerDelegate>
{
    IBOutlet UIButton *question1Btn;
    IBOutlet UIButton *question2Btn;
    IBOutlet UIButton *question3Btn;
    IBOutlet UIButton *question4Btn;
    IBOutlet UIButton *question5Btn;
    IBOutlet UIButton *question6Btn;
    IBOutlet UIButton *question7Btn;
    IBOutlet UIButton *question8Btn;
    IBOutlet UIButton *question9Btn;
    
    IBOutlet UIWebView *web;
    IBOutlet UIButton *relyAsiaResultBtn;
    IBOutlet UIButton *drPaulDorianBtn;
    IBOutlet UIButton *FAQsBtn;
    IBOutlet UIButton *sendQueryBtn;
}
@property(nonatomic,retain)IBOutlet UIWebView *web;
@property(nonatomic,retain)IBOutlet UIButton *relyAsiaResultBtn;
@property(nonatomic,retain)IBOutlet UIButton *drPaulDorianBtn;
@property(nonatomic,retain)IBOutlet UIButton *FAQsBtn;
@property(nonatomic,retain)IBOutlet UIButton *sendQueryBtn;


- (IBAction)Questions1:(id)sender;
- (IBAction)Questions2:(id)sender;
- (IBAction)Questions3:(id)sender;
- (IBAction)Questions4:(id)sender;
- (IBAction)Questions5:(id)sender;
- (IBAction)Questions6:(id)sender;
- (IBAction)Questions7:(id)sender;
- (IBAction)Questions8:(id)sender;
- (IBAction)Questions9:(id)sender;

- (IBAction)relyAsiaResult:(id)sender;
- (IBAction)drPaulDorian:(id)sender;
- (IBAction)FAQs:(id)sender;
- (IBAction)sendQuery:(id)sender;
@end
