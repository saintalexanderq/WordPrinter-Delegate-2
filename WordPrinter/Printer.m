//
//  Printer.m
//  WordPrinter
//
//  Created by Javier Xing on 2017-11-02.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Printer.h"

@interface Printer()

@property (nonatomic, strong) NSString* printerWord;

@end

@implementation Printer

//printer:(Printer*)printer numberOfTimesToPrint:(NSString *)word;

-(void)printWord:(NSString *)word{
    int numOfPrints = [self.delegate printer:self numberOfTimesToPrint:self.printerWord];
    if ([self.delegate respondsToSelector:@selector(printUpperCase)]){
        if ([self.delegate printUpperCase]) {
        word = [word uppercaseString];
        }
    }

        if([self.delegate printStar]){
            for (int i = 0; i<numOfPrints; i++) {
                NSLog(@"✮%@✮", word);
            }
    }
    else{
        for (int i = 0; i<numOfPrints; i++) {
            NSLog(@"%@", word);
            }
        
    }
}


@end

