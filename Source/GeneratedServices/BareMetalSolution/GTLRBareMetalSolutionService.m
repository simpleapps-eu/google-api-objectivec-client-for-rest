// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Bare Metal Solution API (baremetalsolution/v1)
// Description:
//   Provides ways to manage Bare Metal Solution hardware installed in a
//   regional extension located near a Google Cloud data center.
// Documentation:
//   https://cloud.google.com/bare-metal

#import "GTLRBareMetalSolution.h"

// ----------------------------------------------------------------------------
// Authorization scope

NSString * const kGTLRAuthScopeBareMetalSolutionCloudPlatform = @"https://www.googleapis.com/auth/cloud-platform";

// ----------------------------------------------------------------------------
//   GTLRBareMetalSolutionService
//

@implementation GTLRBareMetalSolutionService

- (instancetype)init {
  self = [super init];
  if (self) {
    // From discovery.
    self.rootURLString = @"https://baremetalsolution.googleapis.com/";
    self.batchPath = @"batch";
    self.prettyPrintQueryParameterNames = @[ @"prettyPrint" ];
  }
  return self;
}

@end
