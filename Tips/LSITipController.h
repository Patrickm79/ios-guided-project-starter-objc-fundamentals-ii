//
//  LSITipController.h
//  Tips
//
//  Created by Patrick Millet on 6/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

// Forward class declaration (improves build times, refer between two files, prevents compilation cycle)
@class LSITip;

NS_ASSUME_NONNULL_BEGIN

@interface LSITipController : NSObject

// lightweight generics make the NSArray have only LSITip objects

// property attributes ( * = default)
// nonatmoic, atomic(default)
// readwrite(default), readonly

@property (nonatomic, readonly) NSArray<LSITip *> *tips;

- (void)addTip:(LSITip *)tip;

@end

NS_ASSUME_NONNULL_END
