//
//  DetailViewController.h
//  CodeTest
//
//  Created by Prachi Verma on 11/08/15.
//  Copyright (c) 2015 Prachi Verma. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSDictionary *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UILabel *titleDescriptionLabel;


@end

