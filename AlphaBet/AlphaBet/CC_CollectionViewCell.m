//
//  CC_CollectionViewCell.m
//  AlphaBet
//
//  Created by admin on 1/12/16.
//  Copyright © 2016 LucChelsea. All rights reserved.
//

#import "CC_CollectionViewCell.h"
#import "AlphaBet-Swift.h"
@interface CC_CollectionViewCell()
@property (strong,nonatomic)SpringImageView* hinh ;
@property (strong,nonatomic)NSMutableArray* shakeStyle;
@end

@implementation CC_CollectionViewCell


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
//        //hinh = [[UIImage alloc]init];
//        SpringButton* spellButton = [[SpringButton alloc]initWithFrame:self.bounds];
//        [spellButton setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@" ,data2 ]] forState:UIControlStateNormal];
//        [self addSubview:spellButton];
//        [spellButton addTarget:self action:@selector(tap) forControlEvents:UIControlEventTouchUpInside];
//        
        _hinh = [[SpringImageView alloc]initWithFrame:self.bounds];
        [self addSubview:_hinh];
        singleTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap)];
        [self addGestureRecognizer:singleTap];
       
        _shakeStyle = [NSMutableArray new];
        [_shakeStyle addObject:@"shake"];
        [_shakeStyle addObject:@"pop"];
        [_shakeStyle addObject:@"morph"];
        [_shakeStyle addObject:@"squeeze"];
        [_shakeStyle addObject:@"wobble"];
        [_shakeStyle addObject:@"swing"];
        [_shakeStyle addObject:@"flipX"];
        [_shakeStyle addObject:@"zoomIn"];
    }
    return self;
}


-(void)tap {
    NSInteger i = arc4random() % [_shakeStyle count];
    NSString* style = [_shakeStyle objectAtIndex:i];
    _hinh.animation = [NSString stringWithFormat:@"%@" , style];
    _hinh.curve = @"spring";
    _hinh.duration = 1.0;
    [_hinh animate];
    NSLog(@"Say %@" , _data);
    //play Sound
    //NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%@" , _data] ofType:@"wav"];
    NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:@"Z" ofType:@"wav"];
    NSURL *soundFileURL = [NSURL fileURLWithPath:soundFilePath];
    _player = [[AVAudioPlayer alloc] initWithContentsOfURL:soundFileURL error:nil];
    _player.numberOfLoops = 0;
    [_player play];
   
}

-(void)setData:(NSString*)data
{
    _data = data;
    [_hinh setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@" , data]]];
    
}
@end
