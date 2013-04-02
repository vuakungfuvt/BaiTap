//
//  ViewController.m
//  DemoImage
//
//  Created by ThanhTung on 4/1/13.
//  Copyright (c) 2013 THANHTUNG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.dem = 47;
    self.view.backgroundColor = [UIColor whiteColor];
    UIImage *macBookAir = [UIImage imageNamed:@"campFire01.gif"];
    self.myImageView = [[UIImageView alloc] initWithImage:macBookAir];
    self.myImageView.image = [UIImage imageNamed:@"IMG_0047.JPG"];
    self.myImageView.center = self.view.center;
    if(!self._timer) {
        self._timer = [NSTimer scheduledTimerWithTimeInterval:0.2
                                                       target:self
                                                     selector:@selector(print:)
                                                     userInfo:nil
                                                      repeats:YES];
    } else {
        [self._timer invalidate];
        self._timer=nil;
    }
    
    [self.view addSubview:self.myImageView];
}
- (void) print:(UIImageView*)paramSender{
    self.dem++;
    NSString *str;
    NSMutableString *myString = [NSMutableString string];
    
    str = [NSString stringWithFormat:@"%d",self.dem]; //%d or %i both is ok.
    
    [myString appendString:str];
    NSString *imageName;
    imageName = [NSString stringWithFormat:@"IMG_00%@.JPG",str];
    self.myImageView.image = [UIImage imageNamed:imageName];
    if (self.dem == 52) {
        self.dem = 46;
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
