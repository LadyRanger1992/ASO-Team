//
//  CC_CollectionViewCell.h
//  AlphaBet
//
//  Created by admin on 1/12/16.
//  Copyright © 2016 LucChelsea. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

@interface CC_CollectionViewCell : UICollectionViewCell
{
    //khai bao hinh va tapGesture
   // UIImageView* hinh;
    UITapGestureRecognizer* singleTap;
    NSString* data2;
}
@property (strong, nonatomic) NSString* data;
@property (strong, nonatomic) AVAudioPlayer* player;
@end
