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
    }
    return self;
}

-(void)tap {
    NSLog(@"ABC");
}

-(void)setData:(NSString*)data
{
    _data = data;
    [hinh setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@" , data]]];
    
}
@end
