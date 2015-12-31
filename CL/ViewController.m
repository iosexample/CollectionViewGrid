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
    
    CGFloat SCREEN_WIDTH = CGRectGetWidth([[UIScreen mainScreen] bounds]);
    CGFloat width = (SCREEN_WIDTH - 3*(1.f/[[UIScreen mainScreen] scale]))/3.f;
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    
    layout.minimumInteritemSpacing = 1.f/[[UIScreen mainScreen] scale];
    layout.minimumLineSpacing = 1.f/[[UIScreen mainScreen] scale];
    layout.itemSize = CGSizeMake(width, width);
    [self.collectionView setCollectionViewLayout:layout];
}

- (BOOL)prefersStatusBarHidden {
    return TRUE;
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
    return cell;
}

#pragma mark <UICollectionViewDelegate>
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsMake(0, 0, 0, 0);
}

@end
