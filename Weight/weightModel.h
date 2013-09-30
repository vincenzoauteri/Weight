//
//  weightModel.h
//  Weight
//
//  Created by Vincenzo Auteri on 9/29/13.
//  Copyright (c) 2013 Vincenzo Auteri. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface weightModel : NSObject <UIPickerViewDataSource>
- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView;
- (NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component;

@end
