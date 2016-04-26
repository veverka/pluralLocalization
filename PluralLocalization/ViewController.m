//
//  ViewController.m
//  PluralLocalization
//
//  Created by Gurzhiy, Elena on 4/25/16.
//  Copyright © 2016 Gurzhiy, Elena. All rights reserved.
//

// Language Plural Rules
// http://www.unicode.org/cldr/charts/latest/supplemental/language_plural_rules.html

#import "ViewController.h"

@interface ViewController () <UITableViewDataSource>

@property (nonatomic, strong) IBOutlet UITableView *fancyTableView;
@property (nonatomic, strong) NSArray *numberOfDays;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


#pragma mark UITableViewDataSource
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellIdentifier"];
    
    NSUInteger numberOfMessages = indexPath.row;
    NSString *title;
    
//    //English
//    if (!numberOfMessages) {
//        title = @"You have no messages";
//    }
//    else if (numberOfMessages == 1) {
//        title = @"You have only one message";
//    }
//    else {
//        title = [NSString stringWithFormat:@"You have %ld messages", numberOfMessages];
//    }
    
//    //Czech
//    if (!numberOfMessages) { // 0
//        title = @"nemáte žádné zprávy";
//    }
//    else if (numberOfMessages == 1) { // 1
//        title = @"máte pouze jednu zprávu";
//    }
//    else if (numberOfMessages >= 2 && numberOfMessages <= 4) { // few
//        title = [NSString stringWithFormat:@"máte %ld zprávy", numberOfMessages];
//    }
//    else { // other + many
//        title = [NSString stringWithFormat:@"máte %ld zpráv", numberOfMessages];
//    }
    
    title = [NSString localizedStringWithFormat:NSLocalizedString(@"You have %ld Message(s)", nil), numberOfMessages];

    cell.textLabel.text = title;

    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 6;
}

@end
