//
//  ViewController.m
//  djinniExample
//
//  Created by Syed Haris Ali on 10/15/15.
//  Copyright © 2015 Skycatch. All rights reserved.
//

#import "ViewController.h"
#import <objc/SKYSong.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    SKYSong *song = [SKYSong songWithTitle:@"Hello World" artist:@"Haris Ali"];
    NSLog(@"song: %@", song);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
