//
//  GCSCraftArduCopter.m
//  iGCS
//
//  Created by Claudio Natoli on 24/01/2015.
//
//

#import "GCSCraftArduCopter.h"

@implementation GCSCraftArduCopter

- (id<GCSCraftModel>) init:(mavlink_heartbeat_t)heartbeat {
    self = [super init];
    if (self) {
        _heartbeat = heartbeat;
    }
    return self;
}

- (void) update:(mavlink_heartbeat_t)heartbeat {
    self.heartbeat = heartbeat;
}

- (GCSCraftType) craftType {
    return ArduCopter;
}

- (uint32_t) autoMode {
    return APMCopterAuto;
}

- (uint32_t) guidedMode {
    return APMCopterGuided;
}

- (BOOL) setModeBeforeGuidedItems {
    return YES; // For 3.2+
}

@end
