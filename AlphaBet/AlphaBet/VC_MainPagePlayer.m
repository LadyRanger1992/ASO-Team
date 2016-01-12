//
//  VC_MainPagePlayer.m
//  AlphaBet
//
//  Created by LucChelsea on 1/11/16.
//  Copyright © 2016 LucChelsea. All rights reserved.
//

#import "VC_MainPagePlayer.h"
#import "CC_CollectionViewCell.h"

@interface VC_MainPagePlayer ()
{
    UICollectionView* _collectionView;
    NSMutableArray* _data;
}

@end

@implementation VC_MainPagePlayer

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    /* TEST FIRST VC ========
    label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    label.text = @"Hello";
    [self.view addSubview:label];
     */
    
    //Create Data Array
    _data = [NSMutableArray new];
    [_data addObject:@"A"];
    [_data addObject:@"B"];
    [_data addObject:@"C"];
    [_data addObject:@"D"];
    [_data addObject:@"E"];
    [_data addObject:@"F"];
    [_data addObject:@"G"];
    [_data addObject:@"H"];
    [_data addObject:@"I"];
    [_data addObject:@"J"];
    [_data addObject:@"K"];
    [_data addObject:@"L"];
    [_data addObject:@"M"];
    [_data addObject:@"N"];
    [_data addObject:@"O"];
    [_data addObject:@"P"];
    [_data addObject:@"Q"];
    [_data addObject:@"R"];
    [_data addObject:@"S"];
    [_data addObject:@"T"];
    [_data addObject:@"U"];
    [_data addObject:@"V"];
    [_data addObject:@"W"];
    [_data addObject:@"X"];
    [_data addObject:@"Y"];
    [_data addObject:@"Z"];
    
    //Create CollectionView
    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc]init];
    flowLayout.itemSize = CGSizeMake(100, 100);
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
    //tao ID
    [_collectionView registerClass:[CC_CollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    
    
    
    collectionView = [[UICollectionView alloc]initWithFrame:self.view.frame collectionViewLayout:flowLayout ];
    [collectionView setDataSource:self];
    [collectionView setDelegate:self];
    [self.view addSubview:collectionView];
    
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _data.count;
}

//Tao IndexPath

- (CC_CollectionViewCell *)collectionView:(UICollectionView *)collectionView2 cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CC_CollectionViewCell* cell = [collectionView2 dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
  
    cell.backgroundColor = [UIColor greenColor];
    //CongThuc tinh indexPath section*3 (3 la số cột trong view)
    NSUInteger index = (indexPath.section*2)+indexPath.row;
    [cell setData:[_data objectAtIndex:index]];
    return cell;

}


/*
-(CC_CollectionViewCell*)collectionView:(UICollectionView*)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    
    CC_CollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath ];
    cell.backgroundColor = [UIColor greenColor];
    //CongThuc tinh indexPath section*3 (3 la số cột trong view)
    NSUInteger index = (indexPath.section*3)+indexPath.row;
    [cell setData:[_data objectAtIndex:index]];
    return cell;
 }
     */
     


@end
