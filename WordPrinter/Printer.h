//
//  Printer.h
//  WordPrinter
//
//  Created by Javier Xing on 2017-11-02.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Printer;

@protocol PrinterDelegate <NSObject>

@optional
-(BOOL)printUpperCase;

@required
-(int)printer:(Printer*)printer numberOfTimesToPrint:(NSString *)word;
-(BOOL)printStar;

@end

@interface Printer : NSObject
@property (nonatomic, weak) id <PrinterDelegate> delegate;

-(void)printWord:(NSString *)word;

@end

