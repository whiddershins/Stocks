//
//  ForeignStockHolding.h
//  Stocks
//
//  Created by James Calhoun on 1/7/14.
//  Copyright (c) 2014 James Calhoun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

@interface ForeignStockHolding : StockHolding
{
    float conversionRate;
}
@property float conversionRate;

@end
