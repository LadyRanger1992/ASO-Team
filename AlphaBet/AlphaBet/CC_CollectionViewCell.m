//
//  CC_CollectionViewCell.m
//  AlphaBet
//
//  Created by admin on 1/12/16.
//  Copyright © 2016 LucChelsea. All rights reserved.
//

#import "CC_CollectionViewCell.h"

@implementation CC_CollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        hinh = [[UIImageView alloc]initWithFrame:self.bounds];
        [self addSubview:hinh];
        singleTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap)];
        [self addGestureRecognizer:singleTap];
    }
    return self;
}

-(void)tap {
    NSLog([NSString stringWithFormat:@"Say %@" , _data]);
    //play Sound
    NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%@" , _data] ofType:@"wav"];
    NSURL *soundFileURL = [NSURL fileURLWithPath:soundFilePath];
    _player = [[AVAudioPlayer alloc] initWithContentsOfURL:soundFileURL error:nil];
    _player.numberOfLoops = 0;
    [_player play];
   
}

-(void)setData:(NSString*)data
{
    _data = data;
    [hinh setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@" , data]]];
    
}
@end
