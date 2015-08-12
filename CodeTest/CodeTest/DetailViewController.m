//
//  DetailViewController.m
//  CodeTest
//
//  Created by Prachi Verma on 11/08/15.
//  Copyright (c) 2015 Prachi Verma. All rights reserved.
//

#import "DetailViewController.h"
#import "UIImageView+AFNetworking.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailDescriptionLabel.text = self.detailItem[@"description"];
        self.titleDescriptionLabel.text = self.detailItem[@"title"];
        NSURLRequest *urlReq = [NSURLRequest requestWithURL:[NSURL URLWithString:self.detailItem[@"image"]] cachePolicy:NSURLRequestReturnCacheDataElseLoad timeoutInterval:10.0];
        [self.imgView setImageWithURLRequest:urlReq
                            placeholderImage:[UIImage imageNamed:@"images"]
                                     success:nil
                                     failure:nil];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
