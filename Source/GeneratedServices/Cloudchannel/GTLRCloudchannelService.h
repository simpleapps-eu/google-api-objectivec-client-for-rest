// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud Channel API (cloudchannel/v1)
// Description:
//   The Cloud Channel API enables Google Cloud partners to have a single
//   unified resale platform and APIs across all of Google Cloud including GCP,
//   Workspace, Maps and Chrome.
// Documentation:
//   https://cloud.google.com/channel

#if SWIFT_PACKAGE || GTLR_USE_MODULAR_IMPORT
  @import GoogleAPIClientForRESTCore;
#elif GTLR_BUILT_AS_FRAMEWORK
  #import "GTLR/GTLRService.h"
#else
  #import "GTLRService.h"
#endif

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

// ----------------------------------------------------------------------------
// Authorization scope

/**
 *  Authorization scope: Manage users on your domain
 *
 *  Value "https://www.googleapis.com/auth/apps.order"
 */
FOUNDATION_EXTERN NSString * const kGTLRAuthScopeCloudchannelAppsOrder;

// ----------------------------------------------------------------------------
//   GTLRCloudchannelService
//

/**
 *  Service for executing Cloud Channel API queries.
 *
 *  The Cloud Channel API enables Google Cloud partners to have a single unified
 *  resale platform and APIs across all of Google Cloud including GCP,
 *  Workspace, Maps and Chrome.
 */
@interface GTLRCloudchannelService : GTLRService

// No new methods

// Clients should create a standard query with any of the class methods in
// GTLRCloudchannelQuery.h. The query can the be sent with GTLRService's execute
// methods,
//
//   - (GTLRServiceTicket *)executeQuery:(GTLRQuery *)query
//                     completionHandler:(void (^)(GTLRServiceTicket *ticket,
//                                                 id object, NSError *error))handler;
// or
//   - (GTLRServiceTicket *)executeQuery:(GTLRQuery *)query
//                              delegate:(id)delegate
//                     didFinishSelector:(SEL)finishedSelector;
//
// where finishedSelector has a signature of:
//
//   - (void)serviceTicket:(GTLRServiceTicket *)ticket
//      finishedWithObject:(id)object
//                   error:(NSError *)error;
//
// The object passed to the completion handler or delegate method
// is a subclass of GTLRObject, determined by the query method executed.

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop
