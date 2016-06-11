//
//  ViewController.m
//  SVNDemo
//
//  Created by Saturncube on 10/06/16.
//  Copyright © 2016 Saturncube. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnPlayAction:(id)sender {
    
    NSURL *url   = [NSURL URLWithString:txtUrl.text];
    player = [[MPMoviePlayerController alloc] initWithContentURL:url];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(moviePlayBackDidFinish) name:MPMoviePlayerPlaybackDidFinishNotification object:player];
    
    player.controlStyle   = MPMovieControlStyleDefault;
    player.shouldAutoplay = YES;
    [self.view addSubview:player.view];
    [player setFullscreen:YES animated:YES];
}


- (void)moviePlayBackDidFinish{
    [self dismissViewControllerAnimated:player.view completion:NULL];
}


@end
