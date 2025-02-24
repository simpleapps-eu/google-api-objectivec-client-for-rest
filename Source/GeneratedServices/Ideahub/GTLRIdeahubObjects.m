// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Idea Hub API (ideahub/v1beta)
// Documentation:
//   https://console.cloud.google.com/apis/library/ideahub.googleapis.com

#import "GTLRIdeahubObjects.h"

// ----------------------------------------------------------------------------
// Constants

// GTLRIdeahub_GoogleSearchIdeahubV1betaIdeaActivity.type
NSString * const kGTLRIdeahub_GoogleSearchIdeahubV1betaIdeaActivity_Type_PostDeleted = @"POST_DELETED";
NSString * const kGTLRIdeahub_GoogleSearchIdeahubV1betaIdeaActivity_Type_PostDrafted = @"POST_DRAFTED";
NSString * const kGTLRIdeahub_GoogleSearchIdeahubV1betaIdeaActivity_Type_PostPublished = @"POST_PUBLISHED";
NSString * const kGTLRIdeahub_GoogleSearchIdeahubV1betaIdeaActivity_Type_PostUnpublished = @"POST_UNPUBLISHED";
NSString * const kGTLRIdeahub_GoogleSearchIdeahubV1betaIdeaActivity_Type_TypeUnspecified = @"TYPE_UNSPECIFIED";

// ----------------------------------------------------------------------------
//
//   GTLRIdeahub_GoogleSearchIdeahubV1betaAvailableLocale
//

@implementation GTLRIdeahub_GoogleSearchIdeahubV1betaAvailableLocale
@dynamic locale, name;
@end


// ----------------------------------------------------------------------------
//
//   GTLRIdeahub_GoogleSearchIdeahubV1betaIdea
//

@implementation GTLRIdeahub_GoogleSearchIdeahubV1betaIdea
@dynamic name, text, topics;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"topics" : [GTLRIdeahub_GoogleSearchIdeahubV1betaTopic class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRIdeahub_GoogleSearchIdeahubV1betaIdeaActivity
//

@implementation GTLRIdeahub_GoogleSearchIdeahubV1betaIdeaActivity
@dynamic ideas, name, topics, type, uri;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"ideas" : [NSString class],
    @"topics" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRIdeahub_GoogleSearchIdeahubV1betaIdeaState
//

@implementation GTLRIdeahub_GoogleSearchIdeahubV1betaIdeaState
@dynamic dismissed, name, saved;
@end


// ----------------------------------------------------------------------------
//
//   GTLRIdeahub_GoogleSearchIdeahubV1betaListAvailableLocalesResponse
//

@implementation GTLRIdeahub_GoogleSearchIdeahubV1betaListAvailableLocalesResponse
@dynamic availableLocales, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"availableLocales" : [GTLRIdeahub_GoogleSearchIdeahubV1betaAvailableLocale class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"availableLocales";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRIdeahub_GoogleSearchIdeahubV1betaListIdeasResponse
//

@implementation GTLRIdeahub_GoogleSearchIdeahubV1betaListIdeasResponse
@dynamic ideas, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"ideas" : [GTLRIdeahub_GoogleSearchIdeahubV1betaIdea class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"ideas";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRIdeahub_GoogleSearchIdeahubV1betaTopic
//

@implementation GTLRIdeahub_GoogleSearchIdeahubV1betaTopic
@dynamic displayName, mid, name;
@end


// ----------------------------------------------------------------------------
//
//   GTLRIdeahub_GoogleSearchIdeahubV1betaTopicState
//

@implementation GTLRIdeahub_GoogleSearchIdeahubV1betaTopicState
@dynamic dismissed, name, saved;
@end
