//
//  VC_MainPagePlayer.m
//  AlphaBet
//
//  Created by LucChelsea on 1/11/16.
//  Copyright © 2016 LucChelsea. All rights reserved.
//

#import "VC_MainPagePlayer.h"
#import "VC_NavController.h"
#import "CC_CollectionViewCell.h"
#import "AlphaBet-Swift.h"

@interface VC_MainPagePlayer ()
{
    NSMutableArray* _data;
}

@end

@implementation VC_MainPagePlayer

-(void)loadView
{
    [super loadView];
}
- (void)viewDidLoad {
   [super viewDidLoad];
    VC_mainBG = [[UIImageView alloc]initWithFrame:self.view.frame];
    [VC_mainBG setImage:[UIImage imageNamed:@"board"]];
    [self.view addSubview: VC_mainBG];
    //[self.view setBackgroundColor:[UIColor grayColor]];
    
/* 
    TEST FIRST VC ========
    label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    label.text = @"Hello";
    [self.view addSubview:label];
*/
    SpringButton* backButton = [[SpringButton alloc]initWithFrame:CGRectMake(150,680, 30, 30)];
    [backButton setImage:[UIImage imageNamed:@"play"] forState:UIControlStateNormal];
    [self.view addSubview:backButton];
    [backButton addTarget:self action:@selector(backToHome) forControlEvents:UIControlEventTouchUpInside];
    
    
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
    [_data addObject:@"Song"];
    
    //Create CollectionView
    UICollectionViewFlowLayout *flowLayout=[[UICollectionViewFlowLayout alloc] init];
    flowLayout.itemSize = CGSizeMake(105, 105);
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
    
    _collectionView=[[UICollectionView alloc] initWithFrame:CGRectMake(100, 100, 850, 500) collectionViewLayout:flowLayout]; // dung hong? chính xác rồi . Neu anh de collectionView123 thoi ko _ thi sao. Thì không đc
    [_collectionView setDataSource:self]; // vẫn fails . OK
    [_collectionView setDelegate:self];
    
    [_collectionView registerClass:[CC_CollectionViewCell class] forCellWithReuseIdentifier:@"cellIdentifier"]; // thằng collectionView ở đây khác thằng _collectionView. Chú ý thằng này vẫn không phải là thằng của mình nhá . OK , anh de Properties nhu ben .h co anh huong gi hong? hay de ben .m dc r
    
    [_collectionView setBackgroundColor:[UIColor clearColor]];
    
    [self.view addSubview:_collectionView];
    
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [[self.navigationController navigationBar] setHidden:YES];
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

-(CC_CollectionViewCell*)collectionView:(UICollectionView*)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    CC_CollectionViewCell* cell = [_collectionView dequeueReusableCellWithReuseIdentifier:@"cellIdentifier" forIndexPath:indexPath];
    //cell.backgroundColor = [UIColor grayColor];
    //CongThuc tinh indexPath section*3 (3 la số cột trong view)
   // NSUInteger index = (indexPath.section*3)+indexPath.row;
    [cell setData:[_data objectAtIndex:indexPath.row]];
    return cell;
}
-(void)backToHome{
    VC_NavController* nav = [VC_NavController sharedInstance];
    [[nav navigationBar] setHidden:YES];
    nav.navigationBar.barTintColor = [UIColor orangeColor];
    [nav popToRootViewControllerAnimated:YES];
}


@end
