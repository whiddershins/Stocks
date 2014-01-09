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
        
        // now you can do stuff to everything in the array with a for ... in loop
        
        for (StockHolding *stock in allCurrentStocks){ //this will just set everyone to the same thing!
            [stock setCurrentSharePrice:4.5];
            [stock setPurchaseSharePrice:2.3];
            [stock setNumberOfShares:19];
        }
        
        // if you had 2 arrays you could do some kinda fancy map/filter kinda thing but for now I think you just set em all manually
        // I would make a big setter that sets em all setCurrentSharePrice: andPurchasePrice: andNumberOFShares:
        
        [stockHolding01 setCurrentSharePrice:4.5];
        [stockHolding01 setPurchaseSharePrice:2.3];
        [stockHolding01 setNumberOfShares:40];
        [stockHolding02 setCurrentSharePrice:2.5];
        [stockHolding02 setPurchaseSharePrice:3.3];
        [stockHolding02 setNumberOfShares:20];
        [stockHolding03 setCurrentSharePrice:7.9];
        [stockHolding03 setPurchaseSharePrice:1.3];
        [stockHolding03 setNumberOfShares:10];
        [stockHolding04 setCurrentSharePrice:5.5];
        [stockHolding04 setPurchaseSharePrice:2.1];
        [stockHolding04 setNumberOfShares:22];
        [stockHolding05 setCurrentSharePrice:3.7];
        [stockHolding05 setPurchaseSharePrice:12.3];
        [stockHolding05 setNumberOfShares:3];
       
        for (StockHolding *stock in sarthPortfolio){
            NSLog(@"stock (%f,%f,%d) originally cost %f and now has a value of %f and the array is", [stock currentSharePrice], [stock purchaseSharePrice], [stock numberOfShares], [stock costInDollars], [stock valueInDollars]);
        }
        
        
        //but you should be able to override "description" in NSObject classes I think
        
        for (StockHolding *stock in allCurrentStocks){
            NSLog(@"%@",stock);
        }
        
        
//        // create an instance of StockHolding
//        StockHolding *stockholding = [[StockHolding alloc] init];
//        
//        // give a value to this instance variable
//        [stockholding setCurrentSharePrice:4.5];
//        [stockholding setPurchaseSharePrice:2.3];
//        [stockholding setNumberOfShares:40];
//        
//        // calculate value
//        NSLog(@"stock (%f,%f,%d) originally cost %f and now has a value of %f and the array is", [stockholding currentSharePrice], [stockholding purchaseSharePrice], [stockholding numberOfShares], [stockholding costInDollars], [stockholding valueInDollars]);
        
    }
    return 0;
}

