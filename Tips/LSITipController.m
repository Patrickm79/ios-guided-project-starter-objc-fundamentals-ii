//
//  LSITipController.m
//  Tips
//
//  Created by Patrick Millet on 6/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LSITipController.h"

// Class Extension (private properies / methods)
@interface LSITipController ()

// readwrite by default
@property (nonatomic) NSMutableArray *internalTips;

@end

@implementation LSITipController

- (instancetype)init
{
    self = [super init];
    if (self) {
        // all properties and instance variables defailt to nil or 0 or 0.0
        // Objc will clear the memory when you allocate
        _internalTips = [[NSMutableArray alloc] init];
    }
    return self;
}

// Make our getter a computed property to return a readonly, immutable array of tips
- (NSArray<LSITip *> *)tips {
    return [self.internalTips copy]; // NSMutableArray -> NSArray
}

- (void)addTip:(LSITip *)tip
{
    // Rule 2: Always use self.propertyName to set/get outside of your init/dealloc/setters
    [self.internalTips addObject:tip];
}

@end
