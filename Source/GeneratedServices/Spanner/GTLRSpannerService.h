// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud Spanner API (spanner/v1)
// Description:
//   Cloud Spanner is a managed, mission-critical, globally consistent and
//   scalable relational database service.
// Documentation:
//   https://cloud.google.com/spanner/

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
// Authorization scopes

/**
 *  Authorization scope: Administer your Spanner databases
 *
 *  Value "https://www.googleapis.com/auth/spanner.admin"
 */
FOUNDATION_EXTERN NSString * const kGTLRAuthScopeSpannerAdmin;
/**
 *  Authorization scope: See, edit, configure, and delete your Google Cloud data
 *  and see the email address for your Google Account.
 *
 *  Value "https://www.googleapis.com/auth/cloud-platform"
 */
FOUNDATION_EXTERN NSString * const kGTLRAuthScopeSpannerCloudPlatform;
/**
 *  Authorization scope: View and manage the contents of your Spanner databases
 *
 *  Value "https://www.googleapis.com/auth/spanner.data"
 */
FOUNDATION_EXTERN NSString * const kGTLRAuthScopeSpannerData;

// ----------------------------------------------------------------------------
//   GTLRSpannerService
//

/**
 *  Service for executing Cloud Spanner API queries.
 *
 *  Cloud Spanner is a managed, mission-critical, globally consistent and
 *  scalable relational database service.
 */
@interface GTLRSpannerService : GTLRService

// No new methods

// Clients should create a standard query with any of the class methods in
// GTLRSpannerQuery.h. The query can the be sent with GTLRService's execute
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
