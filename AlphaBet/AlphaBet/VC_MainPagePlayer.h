//
//  VC_MainPagePlayer.h
//  AlphaBet
//
//  Created by LucChelsea on 1/11/16.
//  Copyright © 2016 LucChelsea. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface VC_MainPagePlayer : UIViewController <UICollectionViewDelegate , UICollectionViewDataSource>

// Khai báo trong ngoặc {} này có nghĩa là biến private _collectionView = self.collectionView khi đc khai báo như là @property.

@property (strong, nonatomic) UICollectionView* collectionView; // giờ nó mới bao gồm _colletionView với self.collectionView nè oker


@end
