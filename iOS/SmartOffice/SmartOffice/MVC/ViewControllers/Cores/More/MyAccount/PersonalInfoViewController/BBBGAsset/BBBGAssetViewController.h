//
//  BBBGAssetViewController.h
//  SmartOffice
//
//  Created by Vu Van Tiep on 4/27/17.
//  Copyright © 2017 Nguyen Thanh Huy. All rights reserved.
//

#import "TTNS_BaseVC.h"
#import "SOSearchBarView.h"

@interface BBBGAssetViewController : TTNS_BaseVC

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *height_asset_name_view;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *height_refuse_view;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *height_button_view;

@property (weak, nonatomic) IBOutlet SOSearchBarView *search_view;
@property (strong, nonatomic) NSString *id_BBBG_detail;
@property (assign, nonatomic) NSInteger isStatus;

@end
