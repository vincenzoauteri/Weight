//
//  weightModel.m
//  Weight
//
//  Created by Vincenzo Auteri on 9/29/13.
//  Copyright (c) 2013 Vincenzo Auteri. All rights reserved.
//

#import "weightModel.h"

@implementation weightModel
- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 3;
}

- (NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 10;
}
@end
