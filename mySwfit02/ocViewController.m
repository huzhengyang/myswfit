//
//  ocViewController.m
//  mySwfit02
//
//  Created by kadis on 2021/9/18.
//

#import "ocViewController.h"
#import "mySwfit02-Swift.h"
@interface ocViewController ()

@end

@implementation ocViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Car * c = [[Car alloc] init];
    c.num = 1;
    
    [c test];
    [c testnew];
}

-(void)test
{
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
