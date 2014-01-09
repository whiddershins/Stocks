//
//  StockHolding.h
//  Stocks
//
//  Created by James Calhoun on 1/6/14.
//  Copyright (c) 2014 James Calhoun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StockHolding : NSObject

{
    // we have three variables
    float purchaseSharePrice;
    float currentSharePrice;
    int numberOfShares;
}

// will be able to set the values of these variables with the following accessor methods
@property float purchaseSharePrice;
@property float currentSharePrice;
@property int numberOfShares;


// these should be the methods to return floats for the cost and value calulations:
- (float)costInDollars; // purchaseSharePrice * numberOfShares
- (float)valueInDollars; // currentSharePrice * numberOfShares

//add yourself to the portfolio, mister stock
- (void)addToPortfolio:(NSMutableArray *)portfolio;


@end
