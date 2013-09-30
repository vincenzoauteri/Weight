//
//  weightViewController.m
//  Weight
//
//  Created by Vincenzo Auteri on 9/29/13.
//  Copyright (c) 2013 Vincenzo Auteri. All rights reserved.
//

#import "weightViewController.h"
#import "weightModel.h"

@interface weightViewController ()
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *weightPicker;
@property (strong,nonatomic) weightModel *weightModelInstance;

@end

@implementation weightViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
   
    

    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
	// Do any additional setup after loading the view, typically from a nib.
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:0];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:[NSDateFormatter dateFormatFromTemplate:@"YYYYMMMd" options:0 locale:[NSLocale currentLocale]]];
    
    NSString *dateString = [dateFormatter stringFromDate:date];
    self.dateLabel.text = dateString;
    self.weightModelInstance =  [[weightModel alloc] init];
    [self.weightPicker setDelegate:self];
    [self.weightPicker setDataSource:self.weightModelInstance];
    [self.weightPicker reloadAllComponents];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma UIViewControllerDelegate

- (CGFloat) pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
            NSLog(@"height for component ");
    return 50.0;
}

- (CGFloat) pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component
{
        NSLog(@"width for component ");
    return 100.0;
}
- (NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    NSString *title;
    title = [@"" stringByAppendingFormat:@"%d",row];
    
    return title;

}

@end
