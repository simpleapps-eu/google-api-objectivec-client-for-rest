// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Google Keep API (keep/v1)
// Description:
//   This API is an enterprise-only API used to create and manage the Keep notes
//   within your domain, including resolving issues identified by CASB software.
// Documentation:
//   https://developers.google.com/keep/api

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
 *  Authorization scope: See, edit, create and permanently delete all your
 *  Google Keep data
 *
 *  Value "https://www.googleapis.com/auth/keep"
 */
FOUNDATION_EXTERN NSString * const kGTLRAuthScopeKeep;
/**
 *  Authorization scope: View all your Google Keep data
 *
 *  Value "https://www.googleapis.com/auth/keep.readonly"
 */
FOUNDATION_EXTERN NSString * const kGTLRAuthScopeKeepReadonly;

// ----------------------------------------------------------------------------
//   GTLRKeepService
//

/**
 *  Service for executing Google Keep API queries.
 *
 *  This API is an enterprise-only API used to create and manage the Keep notes
 *  within your domain, including resolving issues identified by CASB software.
 */
@interface GTLRKeepService : GTLRService

// No new methods

// Clients should create a standard query with any of the class methods in
// GTLRKeepQuery.h. The query can the be sent with GTLRService's execute
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
