//
//  ViewController.h
//  SVNDemo
//
//  Created by Saturncube on 10/06/16.
//  Copyright © 2016 Saturncube. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController : UIViewController {
    IBOutlet UITextField *txtUrl;
    
    MPMoviePlayerController *player;
}

- (IBAction)btnPlayAction:(id)sender;

@end

