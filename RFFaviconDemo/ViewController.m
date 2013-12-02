//
//  ViewController.m
//  RFFaviconDemo
//
//  Created by Ricardo Funk on 12/2/13.
//  Copyright (c) 2013 Ricardo Funk. All rights reserved.
//

#import "ViewController.h"
#import "RFFavicon.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *websiteTextfield;
@property (strong, nonatomic) IBOutlet UIImageView *icon;
@property (weak, nonatomic) UIImage *iconImage;
- (IBAction)goPressed:(id)sender;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goPressed:(id)sender {
    
    //We call our getIcon method and we provide the website address.
    self.icon.image = [RFFavicon getIcon:self.websiteTextfield.text];
}
@end
