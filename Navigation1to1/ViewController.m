//
//  ViewController.m
//  Navigation1to1
//
//  Created by SWUComputer on 2016. 10. 6..
//  Copyright © 2016년 student. All rights reserved.
//

#import "ViewController.h"
#import "OrderViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize pizzaChicken;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) prepareForSegue: (UIStoryboardSegue *) segue sender: (id) sender { if ([segue.identifier isEqualToString:@"toOrderView"]) {
    OrderViewController *vc = [segue destinationViewController];
    NSString *ordered = [pizzaChicken titleForSegmentAtIndex: [pizzaChicken selectedSegmentIndex]];
    vc.title = ordered;
    ordered = [ordered stringByAppendingString:@", 주문 완료"];
    // OrderViewController의 public 변수인 info의 setter 함수를 호출해 값 설정함
    vc.info = [NSString stringWithFormat:@"Thank You!! \n Menu: %@", ordered]; }
}

@end
