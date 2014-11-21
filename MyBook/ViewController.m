//
//  ViewController.m
//  MyBook
//
//  Created by Cyrilshanway on 2014/11/21.
//  Copyright (c) 2014年 Cyrilshanway. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *memberPic;
@property (weak, nonatomic) IBOutlet UIScrollView *backgroundScrollView;
//@property (strong, nonatomic) NSMutableArray *imageArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.memberPic.layer.cornerRadius = 60.0f;
    
    self.backgroundScrollView.contentSize = CGSizeMake(320.0f, 900.0f);
    
    NSMutableArray *imageList = [NSMutableArray arrayWithCapacity:4];
    NSMutableArray *buttonList= [NSMutableArray arrayWithCapacity:4];
    NSMutableArray *imageArray2 = [NSMutableArray arrayWithObjects:
                                   @"Image0",
                                   @"Image1",
                                   @"Image2",
                                   @"Image3",
                                   @"Image4",
                                   @"Image5",
                                   nil];
    
    for (int i = 0 ; i < 6; i++) {
        
        NSInteger x = 40;
        NSInteger y1 = 90;
        NSInteger y = 0;
        NSInteger w = 40;
        NSInteger h = 100;//height
        NSInteger g = 40;//間隔
        
        if( (i % 2) == 0) {
            x = 65;
            y = y1 + 0.5*( h + g )* (i-1);
        }
        else {
            x = 220;
            y = y1 + 0.5*( h + g )* (i-2);
        }
        UIView *bgView = [[UIView alloc] initWithFrame:CGRectMake(x, y, 100, 120)];
        [bgView setBackgroundColor:[UIColor grayColor]];
        UIImageView* imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 120)];
        
        [imageView setImage:[UIImage imageNamed:[imageArray2 objectAtIndex:i]]];
        //[imageView setImage:[UIImage imageNamed:@"image0"]];
        
        //NSLog(@"%@", imageArray2[i]);
        
        
        [bgView addSubview:imageView];
        //image.backgroundColor = [UIColor grayColor];
        
        
        [imageList addObject:bgView];
        
        UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(x+5, y+5, 90, 110)];
        button.backgroundColor = [UIColor clearColor];
        button.alpha = 0.5;
        [buttonList addObject:button];
        [button setTag:i];
        
        if (i == 0) {
            //[button addTarget:self action:@selector(buttonPressed2VC:) forControlEvents:UIControlEventTouchUpInside];
            NSLog(@"ok");
        }
        
        [self.backgroundScrollView addSubview:bgView];
        [self.backgroundScrollView addSubview:button];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
