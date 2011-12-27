#import "MTDirectionsParser.h"

@interface MTDirectionsParser ()

@property (nonatomic, strong, readwrite) id data;
@property (nonatomic, assign, readwrite) CLLocationCoordinate2D fromCoordinate;
@property (nonatomic, assign, readwrite) CLLocationCoordinate2D toCoordinate;

@end

@implementation MTDirectionsParser

@synthesize data = data_;
@synthesize fromCoordinate = fromCoordinate_;
@synthesize toCoordinate = toCoordinate_;

////////////////////////////////////////////////////////////////////////
#pragma mark - Lifecycle
////////////////////////////////////////////////////////////////////////

- (id)initWithFromCoordinate:(CLLocationCoordinate2D)fromCoordinate toCoordinate:(CLLocationCoordinate2D)toCoordinate data:(id)data {
    if ((self = [super init])) {
        fromCoordinate_ = fromCoordinate;
        toCoordinate_ = toCoordinate;
        data_ = data;
    }
    
    return self;
}

////////////////////////////////////////////////////////////////////////
#pragma mark - MTDirectionsParser
////////////////////////////////////////////////////////////////////////

- (void)parseWithCompletion:(mt_direction_block)completion {
    [self doesNotRecognizeSelector:_cmd];
}

@end
