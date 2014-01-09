//
//  main.m
//  Stocks
//
//  Created by James Calhoun on 1/6/14.
//  Copyright (c) 2014 James Calhoun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"
#import "ForeignStockHolding.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //create 3 new stocks
        
        StockHolding *stockHolding01 = [[StockHolding alloc] init];
        StockHolding *stockHolding02 = [[StockHolding alloc] init];
        StockHolding *stockHolding03 = [[StockHolding alloc] init];
        
        // create 2 foreign stocks
        
        ForeignStockHolding *stockHolding04 = [[ForeignStockHolding alloc] init];
        ForeignStockHolding *stockHolding05 = [[ForeignStockHolding alloc] init];
        
        //create an array of stocks
        
        NSMutableArray *allCurrentStocks = [[NSMutableArray alloc] init];
        
        //this is the way to do it all in main
        
        [allCurrentStocks addObject: stockHolding01];
        [allCurrentStocks addObject: stockHolding02];
        [allCurrentStocks addObject: stockHolding03];
        [allCurrentStocks addObject: stockHolding04];
        [allCurrentStocks addObject: stockHolding05];

        //But if you implement a new method in StockHolding you can do this
        
        NSMutableArray *sarthPortfolio = [[NSMutableArray alloc] init];
        
        [stockHolding01 addToPortfolio:sarthPortfolio];
        [stockHolding02 addToPortfolio:sarthPortfolio];
        [stockHolding03 addToPortfolio:sarthPortfolio];
        [stockHolding04 addToPortfolio:sarthPortfolio];
        [stockHolding05 addToPortfolio:sarthPortfolio];
        
        //which is cool and trippy, you pass a pointer to the array in to the stock object, which then acts upon the array by adding itself to it
        
        
        
        // create an instance of StockHolding
        StockHolding *stockholding = [[StockHolding alloc] init];
        
        // give a value to this instance variable
        [stockholding setCurrentSharePrice:4.5];
        [stockholding setPurchaseSharePrice:2.3];
        [stockholding setNumberOfShares:40];
        
        // calculate value
        NSLog(@"stock (%f,%f,%d) originally cost %f and now has a value of %f and the array is", [stockholding currentSharePrice], [stockholding purchaseSharePrice], [stockholding numberOfShares], [stockholding costInDollars], [stockholding valueInDollars]);
        
    }
    return 0;
}

