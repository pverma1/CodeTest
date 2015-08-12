//
//  customTableViewCell.h
//  CodeTest
//
//  Created by Prachi Verma on 12/08/15.
//  Copyright (c) 2015 Prachi Verma. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface customTableViewCell : UITableViewCell
@property(nonatomic,weak)IBOutlet UIImageView *imgView;
@property(nonatomic,weak)IBOutlet UILabel *titleLbl;
@property(nonatomic,weak)IBOutlet UILabel *descLbl;

@end
