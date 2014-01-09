//
//  ForeignStockHolding.m
//  Stocks
//
//  Created by James Calhoun on 1/7/14.
//  Copyright (c) 2014 James Calhoun. All rights reserved.
//

#import "ForeignStockHolding.h"

@implementation ForeignStockHolding
@synthesize conversionRate;

- (float)costInDollars
{
    float convertedCost = [super costInDollars];
    return convertedCost * 0.5;
}
- (float)valueInDollars
{
    float convertedCost = [super valueInDollars];
    return convertedCost * 0.5;
}

@end
