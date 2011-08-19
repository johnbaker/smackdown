//
//  Add.m
//  People
//
//  Created by John Baker on 8/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Add.h"

@implementation Add

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Add Person";
    self.navigationItem.rightBarButtonItem = [[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(dismiss)] autorelease];
    // Do any additional setup after loading the view from its nib.
}

-(void)dismiss {
    [self dismissModalViewControllerAnimated:YES];
}

-(void)viewDidAppear:(BOOL)animated {
    [person becomeFirstResponder];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if([textField.text length] > 0) {
        [DEL.people addObject:textField.text];
    }
    
    [self dismiss];
    return YES;
}

@end
