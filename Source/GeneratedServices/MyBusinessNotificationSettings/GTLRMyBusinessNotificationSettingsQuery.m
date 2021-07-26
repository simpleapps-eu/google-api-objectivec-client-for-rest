// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   My Business Notifications API (mybusinessnotifications/v1)
// Description:
//   The My Business Notification Settings API enables managing notification
//   settings for business accounts.
// Documentation:
//   https://developers.google.com/my-business/

#import "GTLRMyBusinessNotificationSettingsQuery.h"

#import "GTLRMyBusinessNotificationSettingsObjects.h"

@implementation GTLRMyBusinessNotificationSettingsQuery

@dynamic fields;

@end

@implementation GTLRMyBusinessNotificationSettingsQuery_AccountsGetNotificationSetting

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRMyBusinessNotificationSettingsQuery_AccountsGetNotificationSetting *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRMyBusinessNotificationSettings_NotificationSetting class];
  query.loggingName = @"mybusinessnotifications.accounts.getNotificationSetting";
  return query;
}

@end

@implementation GTLRMyBusinessNotificationSettingsQuery_AccountsUpdateNotificationSetting

@dynamic name, updateMask;

+ (instancetype)queryWithObject:(GTLRMyBusinessNotificationSettings_NotificationSetting *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRMyBusinessNotificationSettingsQuery_AccountsUpdateNotificationSetting *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRMyBusinessNotificationSettings_NotificationSetting class];
  query.loggingName = @"mybusinessnotifications.accounts.updateNotificationSetting";
  return query;
}

@end
