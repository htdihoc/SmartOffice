//
//  SurveyListModel.h
//  SmartOffice
//
//  Created by Vu Van Tiep on 4/18/17.
//  Copyright © 2017 Nguyen Thanh Huy. All rights reserved.
//

#import "SOBaseModel.h"

@interface SurveyListModel : SOBaseModel

@property (assign, nonatomic) NSInteger surveyId;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *code;
@property (strong, nonatomic) NSString *content;
@property (assign, nonatomic) NSInteger startDate;
@property (assign, nonatomic) NSInteger endDate;
@property (strong, nonatomic) NSString *url;
@property (nonatomic) BOOL isRequireLogin;
@property (nonatomic) BOOL status;

@end
