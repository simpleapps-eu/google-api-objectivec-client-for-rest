// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   My Business Notifications API (mybusinessnotifications/v1)
// Description:
//   The My Business Notification Settings API enables managing notification
//   settings for business accounts.
// Documentation:
//   https://developers.google.com/my-business/

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

@class GTLRMyBusinessNotificationSettings_NotificationSetting;

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

/**
 *  Parent class for other My Business Notification Settings query classes.
 */
@interface GTLRMyBusinessNotificationSettingsQuery : GTLRQuery

/** Selector specifying which fields to include in a partial response. */
@property(nonatomic, copy, nullable) NSString *fields;

@end

/**
 *  Returns the pubsub notification settings for the account.
 *
 *  Method: mybusinessnotifications.accounts.getNotificationSetting
 */
@interface GTLRMyBusinessNotificationSettingsQuery_AccountsGetNotificationSetting : GTLRMyBusinessNotificationSettingsQuery

/**
 *  Required. The resource name of the notification setting we are trying to
 *  fetch.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRMyBusinessNotificationSettings_NotificationSetting.
 *
 *  Returns the pubsub notification settings for the account.
 *
 *  @param name Required. The resource name of the notification setting we are
 *    trying to fetch.
 *
 *  @return GTLRMyBusinessNotificationSettingsQuery_AccountsGetNotificationSetting
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Sets the pubsub notification setting for the account informing Google which
 *  topic to send pubsub notifications for. Use the notification_types field
 *  within notification_setting to manipulate the events an account wants to
 *  subscribe to. An account will only have one notification setting resource,
 *  and only one pubsub topic can be set. To delete the setting, update with an
 *  empty notification_types
 *
 *  Method: mybusinessnotifications.accounts.updateNotificationSetting
 */
@interface GTLRMyBusinessNotificationSettingsQuery_AccountsUpdateNotificationSetting : GTLRMyBusinessNotificationSettingsQuery

/**
 *  Required. The resource name this setting is for. This is of the form
 *  `accounts/{account_id}/notifications/setting`.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Required. The specific fields that should be updated. The only editable
 *  field is notification_setting.
 *
 *  String format is a comma-separated list of fields.
 */
@property(nonatomic, copy, nullable) NSString *updateMask;

/**
 *  Fetches a @c GTLRMyBusinessNotificationSettings_NotificationSetting.
 *
 *  Sets the pubsub notification setting for the account informing Google which
 *  topic to send pubsub notifications for. Use the notification_types field
 *  within notification_setting to manipulate the events an account wants to
 *  subscribe to. An account will only have one notification setting resource,
 *  and only one pubsub topic can be set. To delete the setting, update with an
 *  empty notification_types
 *
 *  @param object The @c GTLRMyBusinessNotificationSettings_NotificationSetting
 *    to include in the query.
 *  @param name Required. The resource name this setting is for. This is of the
 *    form `accounts/{account_id}/notifications/setting`.
 *
 *  @return GTLRMyBusinessNotificationSettingsQuery_AccountsUpdateNotificationSetting
 */
+ (instancetype)queryWithObject:(GTLRMyBusinessNotificationSettings_NotificationSetting *)object
                           name:(NSString *)name;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop
