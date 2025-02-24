// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Policy Analyzer API (policyanalyzer/v1)
// Documentation:
//   https://www.google.com

#if SWIFT_PACKAGE || GTLR_USE_MODULAR_IMPORT
  @import GoogleAPIClientForRESTCore;
#elif GTLR_BUILT_AS_FRAMEWORK
  #import "GTLR/GTLRQuery.h"
#else
  #import "GTLRQuery.h"
#endif

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

/**
 *  Parent class for other Policy Analyzer query classes.
 */
@interface GTLRPolicyAnalyzerQuery : GTLRQuery

/** Selector specifying which fields to include in a partial response. */
@property(nonatomic, copy, nullable) NSString *fields;

@end

/**
 *  Queries policy activities on Google Cloud resources.
 *
 *  Method: policyanalyzer.projects.locations.activityTypes.activities.query
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopePolicyAnalyzerCloudPlatform
 */
@interface GTLRPolicyAnalyzerQuery_ProjectsLocationsActivityTypesActivitiesQuery : GTLRPolicyAnalyzerQuery

/**
 *  Optional. Filter expression to restrict the activities returned. For
 *  serviceAccountLastAuthentication activities, supported filters are: -
 *  `activities.full_resource_name {=} [STRING]` - `activities.fullResourceName
 *  {=} [STRING]` where `[STRING]` is the full resource name of the service
 *  account. For serviceAccountKeyLastAuthentication activities, supported
 *  filters are: - `activities.full_resource_name {=} [STRING]` -
 *  `activities.fullResourceName {=} [STRING]` where `[STRING]` is the full
 *  resource name of the service account key.
 */
@property(nonatomic, copy, nullable) NSString *filter;

/**
 *  Optional. The maximum number of results to return from this request. Max
 *  limit is 1000. Non-positive values are ignored. The presence of
 *  `nextPageToken` in the response indicates that more results might be
 *  available.
 */
@property(nonatomic, assign) NSInteger pageSize;

/**
 *  Optional. If present, then retrieve the next batch of results from the
 *  preceding call to this method. `pageToken` must be the value of
 *  `nextPageToken` from the previous response. The values of other method
 *  parameters should be identical to those in the previous call.
 */
@property(nonatomic, copy, nullable) NSString *pageToken;

/**
 *  Required. The container resource on which to execute the request. Acceptable
 *  formats:
 *  `projects/[PROJECT_ID|PROJECT_NUMBER]/locations/[LOCATION]/activityTypes/[ACTIVITY_TYPE]`
 *  LOCATION here refers to Google Cloud Locations:
 *  https://cloud.google.com/about/locations/
 */
@property(nonatomic, copy, nullable) NSString *parent;

/**
 *  Fetches a @c
 *  GTLRPolicyAnalyzer_GoogleCloudPolicyanalyzerV1QueryActivityResponse.
 *
 *  Queries policy activities on Google Cloud resources.
 *
 *  @param parent Required. The container resource on which to execute the
 *    request. Acceptable formats:
 *    `projects/[PROJECT_ID|PROJECT_NUMBER]/locations/[LOCATION]/activityTypes/[ACTIVITY_TYPE]`
 *    LOCATION here refers to Google Cloud Locations:
 *    https://cloud.google.com/about/locations/
 *
 *  @return GTLRPolicyAnalyzerQuery_ProjectsLocationsActivityTypesActivitiesQuery
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)queryWithParent:(NSString *)parent;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop
