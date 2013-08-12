//
//  QuestionsVideo.m
//  clotconclave
//
//  Created by INMUBPHG2103 on 08/08/13.
//  Copyright (c) 2013 watermelon. All rights reserved.
//

#import "QuestionsVideo.h"

@interface QuestionsVideo ()

@end

@implementation QuestionsVideo
@synthesize relyAsiaResultBtn;
@synthesize drPaulDorianBtn;
@synthesize FAQsBtn;
@synthesize web;
@synthesize sendQueryBtn;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    web.scrollView.bounces=NO;
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sendQuery:(id)sender {
    
    //    sendQuery *sendQueryObj=[[sendQuery alloc]init];
    //    [self.navigationController pushViewController:sendQueryObj animated:NO];
    // Email Subject
    NSString *emailTitle = @"Clot Conclave";
    // Email Content
    //    NSString *messageBody = @"iOS programming is so fun!";
    // To address
    NSArray *toRecipents = [NSArray arrayWithObject:@"medical.query.mum@boehringer-ingelheim.com"];
    
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate = self;
    [mc setSubject:emailTitle];
    //    [mc setMessageBody:messageBody isHTML:NO];
    [mc setToRecipients:toRecipents];
    
    // Present mail view controller on screen
    [self presentViewController:mc animated:YES completion:NULL];
    
}

- (IBAction)backAction:(id)sender {
    
    Faqs *FaqsObj=[[Faqs alloc]init];
    [self.navigationController pushViewController:FaqsObj animated:NO];

}
- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail sent");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail sent failure: %@", [error localizedDescription]);
            break;
        default:
            break;
    }
    
    // Close the Mail Interface
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (IBAction)relyAsiaResult:(id)sender {
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Test Alert" message:@"relyAsiaResult" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
}

- (IBAction)drPaulDorian:(id)sender {
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Test Alert" message:@"drPaulDorian" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
}

- (IBAction)FAQs:(id)sender {
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Test Alert" message:@"FAQs" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
    
}

@end
