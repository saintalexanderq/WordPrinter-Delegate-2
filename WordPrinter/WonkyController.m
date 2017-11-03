//
//  WonkyController.m
//  WordPrinter
//
//  Created by Cory Alder on 2016-05-05.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "WonkyController.h"

@implementation WonkyController

-(int)printer:(Printer *)printer numberOfTimesToPrint:(NSString *)text {
    return 10;
}
-(BOOL)printStar{
    return YES;
}
-(BOOL)printUpperCase{
    return YES;
}

@end
