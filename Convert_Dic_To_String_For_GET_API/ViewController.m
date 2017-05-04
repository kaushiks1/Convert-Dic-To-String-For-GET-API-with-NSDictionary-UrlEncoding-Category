//
//  ViewController.m
//  Convert_Dic_To_String_For_GET_API
//
//  Created by SILICON on 30/07/16.
//  Copyright © 2016 Apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
//    http://shagunn.info/cherishws/webservices/userRegistration?key=28c15c0b405c1f7a107133edf5504367&name=Rohan%20Kadam&mobile_no=8451821411&email_id=rohank989@gmail.com&password=1234&mode=R
    
    
    NSDictionary *dictionaryNew = @{@"key": @"28c15c0b405c1f7a107133edf5504367",
                                    @"name": @"Rohan Kadam",
                                    @"mobile_no": @"8451821411",
                                    @"email_id": @"rohank989@gmail.com",
                                    @"password": @"1234",
                                    @"mode": @"R",};
    
    NSLog(@"%@",dictionaryNew);
    NSLog(@"%@",[dictionaryNew urlEncodedString]);
    
    
    NSString *stringURLForGetResponce = [NSString stringWithFormat:@"%@%@",@"http://shagunn.info/cherishws/webservices/userRegistration?",[dictionaryNew urlEncodedString]];
    NSLog(@"%@",stringURLForGetResponce);
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
