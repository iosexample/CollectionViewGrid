//
//  ViewController.m
//  CL
//
//  Created by Donly Chan on 15/7/8.
//  Copyright (c) 2015年 Donly Chan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

static NSString * const reuseIdentifier = @"CategoryItemCell";

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    
    layout.minimumInteritemSpacing = -1.f/[[UIScreen mainScreen] scale];
    layout.minimumLineSpacing = -1.f/[[UIScreen mainScreen] scale];

    [self.collectionView setCollectionViewLayout:layout];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 19;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    cell.backgroundColor = [UIColor grayColor];
    cell.layer.borderWidth = 1.f/[[UIScreen mainScreen] scale];
    return cell;
}

#pragma mark <UICollectionViewDelegate>
- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout*)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat SCREEN_WIDTH = CGRectGetWidth([[UIScreen mainScreen] bounds]);
    CGFloat width = ceilf((SCREEN_WIDTH)/3.f), height = width;
    // because 320/3 < 107 + 107 + 107, there was 1 pix margin after 2nd colomn
    return CGSizeMake(width, height);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsMake(0, 0, 0, 0);
}

@end
