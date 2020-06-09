//
//  LSITip.m
//  Tips
//
//  Created by Patrick Millet on 6/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LSITip.h"

@implementation LSITip


- (instancetype)initWithName:(NSString *)name
                       total:(double)total
               tipPercentage:(double) tipPercentage
                  splitCount:(int)splitCount

{
    if (self = [super init]) {
        _name = name;
        _total = total;
        _tipPercentage = tipPercentage;
        _splitCount = splitCount;
        
        // RULE: always use _propertyName for assignments and init/dealloc/setter/getter
        // This helps prevent side effects like syncing a half initalized object to firebase
    }
    return self;
}
@end
