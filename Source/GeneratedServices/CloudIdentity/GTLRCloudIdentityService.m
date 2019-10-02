// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud Identity API (cloudidentity/v1)
// Description:
//   API for provisioning and managing identity resources.
// Documentation:
//   https://cloud.google.com/identity/

#import "GTLRCloudIdentity.h"

// ----------------------------------------------------------------------------
// Authorization scopes

NSString * const kGTLRAuthScopeCloudIdentityCloudIdentityGroups = @"https://www.googleapis.com/auth/cloud-identity.groups";
NSString * const kGTLRAuthScopeCloudIdentityCloudIdentityGroupsReadonly = @"https://www.googleapis.com/auth/cloud-identity.groups.readonly";
NSString * const kGTLRAuthScopeCloudIdentityCloudPlatform      = @"https://www.googleapis.com/auth/cloud-platform";

// ----------------------------------------------------------------------------
//   GTLRCloudIdentityService
//

@implementation GTLRCloudIdentityService

- (instancetype)init {
  self = [super init];
  if (self) {
    // From discovery.
    self.rootURLString = @"https://cloudidentity.googleapis.com/";
    self.batchPath = @"batch";
    self.prettyPrintQueryParameterNames = @[ @"prettyPrint" ];
  }
  return self;
}

@end
