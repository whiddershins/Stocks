//
//  StockHolding.m
//  Stocks
//
//  Created by James Calhoun on 1/6/14.
//  Copyright (c) 2014 James Calhoun. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

@synthesize purchaseSharePrice, currentSharePrice, numberOfShares;

- (float)costInDollars
{
    int n = [self numberOfShares];
    return [self purchaseSharePrice] * n;
}
- (float)valueInDollars
{
    int n = [self numberOfShares];
    return [self currentSharePrice] * n;
}

- (void)addToPortfolio:(NSMutableArray *)portfolio{
    
    [portfolio addObject: self];
}

- (NSString *)description
{
    return [NSString stringWithFormat: @"stock (%f,%f,%d) originally cost %f and now has a value of %f", [self currentSharePrice], [self purchaseSharePrice], [self numberOfShares], [self costInDollars], [self valueInDollars]];
}

@end
