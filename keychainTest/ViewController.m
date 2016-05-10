//
//  ViewController.m
//  keychainTest
//
//  Created by jimmygao on 12/11/15.
//  Copyright (c) 2015 jimmygao. All rights reserved.
//

#import "ViewController.h"
#import "SSKeychain.h"

static NSString *account = @"myaccount";
static NSString *password = @"123456";
static NSString *service = @"com.keychain.test";
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if([SSKeychain setPassword:password forService:service account:account])
    {
        NSLog(@"set success!");
    }
    
    NSLog(@"account = %@",[SSKeychain allAccounts]);
    
    NSLog(@"accountForService = %@",[SSKeychain accountsForService:service]);
    NSLog(@"passwordForService = %@",[SSKeychain passwordForService:service account:account]);
    NSLog(@"deletePasswordForService = %d",[SSKeychain deletePasswordForService:service account:account]);
    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
    
    // Update the view, if already loaded.
}

@end
