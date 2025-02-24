// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Android Management API (androidmanagement/v1)
// Description:
//   The Android Management API provides remote enterprise management of Android
//   devices and apps.
// Documentation:
//   https://developers.google.com/android/management

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

@class GTLRAndroidManagement_Command;
@class GTLRAndroidManagement_Device;
@class GTLRAndroidManagement_EnrollmentToken;
@class GTLRAndroidManagement_Enterprise;
@class GTLRAndroidManagement_Policy;
@class GTLRAndroidManagement_WebApp;
@class GTLRAndroidManagement_WebToken;

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

// ----------------------------------------------------------------------------
// Constants - For some of the query classes' properties below.

// ----------------------------------------------------------------------------
// view

/**
 *  Includes name and enterprise_display_name fields.
 *
 *  Value: "BASIC"
 */
FOUNDATION_EXTERN NSString * const kGTLRAndroidManagementViewBasic;
/**
 *  The API will default to the BASIC view for the List method.
 *
 *  Value: "ENTERPRISE_VIEW_UNSPECIFIED"
 */
FOUNDATION_EXTERN NSString * const kGTLRAndroidManagementViewEnterpriseViewUnspecified;

// ----------------------------------------------------------------------------
// wipeDataFlags

/**
 *  Preserve the factory reset protection data on the device.
 *
 *  Value: "PRESERVE_RESET_PROTECTION_DATA"
 */
FOUNDATION_EXTERN NSString * const kGTLRAndroidManagementWipeDataFlagsPreserveResetProtectionData;
/**
 *  This value is ignored.
 *
 *  Value: "WIPE_DATA_FLAG_UNSPECIFIED"
 */
FOUNDATION_EXTERN NSString * const kGTLRAndroidManagementWipeDataFlagsWipeDataFlagUnspecified;
/**
 *  Additionally wipe the device's external storage (such as SD cards).
 *
 *  Value: "WIPE_EXTERNAL_STORAGE"
 */
FOUNDATION_EXTERN NSString * const kGTLRAndroidManagementWipeDataFlagsWipeExternalStorage;

// ----------------------------------------------------------------------------
// Query Classes
//

/**
 *  Parent class for other Android Management query classes.
 */
@interface GTLRAndroidManagementQuery : GTLRQuery

/** Selector specifying which fields to include in a partial response. */
@property(nonatomic, copy, nullable) NSString *fields;

@end

/**
 *  Gets info about an application.
 *
 *  Method: androidmanagement.enterprises.applications.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAndroidManagement
 */
@interface GTLRAndroidManagementQuery_EnterprisesApplicationsGet : GTLRAndroidManagementQuery

/**
 *  The preferred language for localized application info, as a BCP47 tag (e.g.
 *  "en-US", "de"). If not specified the default language of the application
 *  will be used.
 */
@property(nonatomic, copy, nullable) NSString *languageCode;

/**
 *  The name of the application in the form
 *  enterprises/{enterpriseId}/applications/{package_name}.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRAndroidManagement_Application.
 *
 *  Gets info about an application.
 *
 *  @param name The name of the application in the form
 *    enterprises/{enterpriseId}/applications/{package_name}.
 *
 *  @return GTLRAndroidManagementQuery_EnterprisesApplicationsGet
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Creates an enterprise. This is the last step in the enterprise signup flow.
 *
 *  Method: androidmanagement.enterprises.create
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAndroidManagement
 */
@interface GTLRAndroidManagementQuery_EnterprisesCreate : GTLRAndroidManagementQuery

/**
 *  Whether the enterprise admin has seen and agreed to the managed Google Play
 *  Agreement (https://www.android.com/enterprise/terms/). Always set this to
 *  true when creating an EMM-managed enterprise. Do not create the enterprise
 *  until the admin has viewed and accepted the agreement.
 */
@property(nonatomic, assign) BOOL agreementAccepted;

/**
 *  The enterprise token appended to the callback URL. Only set this when
 *  creating a customer-managed enterprise.
 */
@property(nonatomic, copy, nullable) NSString *enterpriseToken;

/**
 *  The ID of the Google Cloud Platform project which will own the enterprise.
 */
@property(nonatomic, copy, nullable) NSString *projectId;

/**
 *  The name of the SignupUrl used to sign up for the enterprise. Only set this
 *  when creating a customer-managed enterprise.
 */
@property(nonatomic, copy, nullable) NSString *signupUrlName;

/**
 *  Fetches a @c GTLRAndroidManagement_Enterprise.
 *
 *  Creates an enterprise. This is the last step in the enterprise signup flow.
 *
 *  @param object The @c GTLRAndroidManagement_Enterprise to include in the
 *    query.
 *
 *  @return GTLRAndroidManagementQuery_EnterprisesCreate
 */
+ (instancetype)queryWithObject:(GTLRAndroidManagement_Enterprise *)object;

@end

/**
 *  Deletes an enterprise. Only available for EMM-managed enterprises.
 *
 *  Method: androidmanagement.enterprises.delete
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAndroidManagement
 */
@interface GTLRAndroidManagementQuery_EnterprisesDelete : GTLRAndroidManagementQuery

/** The name of the enterprise in the form enterprises/{enterpriseId}. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRAndroidManagement_Empty.
 *
 *  Deletes an enterprise. Only available for EMM-managed enterprises.
 *
 *  @param name The name of the enterprise in the form
 *    enterprises/{enterpriseId}.
 *
 *  @return GTLRAndroidManagementQuery_EnterprisesDelete
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Deletes a device. This operation wipes the device.
 *
 *  Method: androidmanagement.enterprises.devices.delete
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAndroidManagement
 */
@interface GTLRAndroidManagementQuery_EnterprisesDevicesDelete : GTLRAndroidManagementQuery

/**
 *  The name of the device in the form
 *  enterprises/{enterpriseId}/devices/{deviceId}.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Optional flags that control the device wiping behavior.
 *
 *  Likely values:
 *    @arg @c kGTLRAndroidManagementWipeDataFlagsWipeDataFlagUnspecified This
 *        value is ignored. (Value: "WIPE_DATA_FLAG_UNSPECIFIED")
 *    @arg @c kGTLRAndroidManagementWipeDataFlagsPreserveResetProtectionData
 *        Preserve the factory reset protection data on the device. (Value:
 *        "PRESERVE_RESET_PROTECTION_DATA")
 *    @arg @c kGTLRAndroidManagementWipeDataFlagsWipeExternalStorage
 *        Additionally wipe the device's external storage (such as SD cards).
 *        (Value: "WIPE_EXTERNAL_STORAGE")
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *wipeDataFlags;

/**
 *  Optional. A short message displayed to the user before wiping the work
 *  profile on personal devices. This has no effect on company owned devices.
 *  The maximum message length is 200 characters.
 */
@property(nonatomic, copy, nullable) NSString *wipeReasonMessage;

/**
 *  Fetches a @c GTLRAndroidManagement_Empty.
 *
 *  Deletes a device. This operation wipes the device.
 *
 *  @param name The name of the device in the form
 *    enterprises/{enterpriseId}/devices/{deviceId}.
 *
 *  @return GTLRAndroidManagementQuery_EnterprisesDevicesDelete
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Gets a device.
 *
 *  Method: androidmanagement.enterprises.devices.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAndroidManagement
 */
@interface GTLRAndroidManagementQuery_EnterprisesDevicesGet : GTLRAndroidManagementQuery

/**
 *  The name of the device in the form
 *  enterprises/{enterpriseId}/devices/{deviceId}.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRAndroidManagement_Device.
 *
 *  Gets a device.
 *
 *  @param name The name of the device in the form
 *    enterprises/{enterpriseId}/devices/{deviceId}.
 *
 *  @return GTLRAndroidManagementQuery_EnterprisesDevicesGet
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Issues a command to a device. The Operation resource returned contains a
 *  Command in its metadata field. Use the get operation method to get the
 *  status of the command.
 *
 *  Method: androidmanagement.enterprises.devices.issueCommand
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAndroidManagement
 */
@interface GTLRAndroidManagementQuery_EnterprisesDevicesIssueCommand : GTLRAndroidManagementQuery

/**
 *  The name of the device in the form
 *  enterprises/{enterpriseId}/devices/{deviceId}.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRAndroidManagement_Operation.
 *
 *  Issues a command to a device. The Operation resource returned contains a
 *  Command in its metadata field. Use the get operation method to get the
 *  status of the command.
 *
 *  @param object The @c GTLRAndroidManagement_Command to include in the query.
 *  @param name The name of the device in the form
 *    enterprises/{enterpriseId}/devices/{deviceId}.
 *
 *  @return GTLRAndroidManagementQuery_EnterprisesDevicesIssueCommand
 */
+ (instancetype)queryWithObject:(GTLRAndroidManagement_Command *)object
                           name:(NSString *)name;

@end

/**
 *  Lists devices for a given enterprise.
 *
 *  Method: androidmanagement.enterprises.devices.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAndroidManagement
 */
@interface GTLRAndroidManagementQuery_EnterprisesDevicesList : GTLRAndroidManagementQuery

/**
 *  The requested page size. The actual page size may be fixed to a min or max
 *  value.
 */
@property(nonatomic, assign) NSInteger pageSize;

/** A token identifying a page of results returned by the server. */
@property(nonatomic, copy, nullable) NSString *pageToken;

/** The name of the enterprise in the form enterprises/{enterpriseId}. */
@property(nonatomic, copy, nullable) NSString *parent;

/**
 *  Fetches a @c GTLRAndroidManagement_ListDevicesResponse.
 *
 *  Lists devices for a given enterprise.
 *
 *  @param parent The name of the enterprise in the form
 *    enterprises/{enterpriseId}.
 *
 *  @return GTLRAndroidManagementQuery_EnterprisesDevicesList
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)queryWithParent:(NSString *)parent;

@end

/**
 *  Starts asynchronous cancellation on a long-running operation. The server
 *  makes a best effort to cancel the operation, but success is not guaranteed.
 *  If the server doesn't support this method, it returns
 *  google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation or
 *  other methods to check whether the cancellation succeeded or whether the
 *  operation completed despite cancellation. On successful cancellation, the
 *  operation is not deleted; instead, it becomes an operation with an
 *  Operation.error value with a google.rpc.Status.code of 1, corresponding to
 *  Code.CANCELLED.
 *
 *  Method: androidmanagement.enterprises.devices.operations.cancel
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAndroidManagement
 */
@interface GTLRAndroidManagementQuery_EnterprisesDevicesOperationsCancel : GTLRAndroidManagementQuery

/** The name of the operation resource to be cancelled. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRAndroidManagement_Empty.
 *
 *  Starts asynchronous cancellation on a long-running operation. The server
 *  makes a best effort to cancel the operation, but success is not guaranteed.
 *  If the server doesn't support this method, it returns
 *  google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation or
 *  other methods to check whether the cancellation succeeded or whether the
 *  operation completed despite cancellation. On successful cancellation, the
 *  operation is not deleted; instead, it becomes an operation with an
 *  Operation.error value with a google.rpc.Status.code of 1, corresponding to
 *  Code.CANCELLED.
 *
 *  @param name The name of the operation resource to be cancelled.
 *
 *  @return GTLRAndroidManagementQuery_EnterprisesDevicesOperationsCancel
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Deletes a long-running operation. This method indicates that the client is
 *  no longer interested in the operation result. It does not cancel the
 *  operation. If the server doesn't support this method, it returns
 *  google.rpc.Code.UNIMPLEMENTED.
 *
 *  Method: androidmanagement.enterprises.devices.operations.delete
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAndroidManagement
 */
@interface GTLRAndroidManagementQuery_EnterprisesDevicesOperationsDelete : GTLRAndroidManagementQuery

/** The name of the operation resource to be deleted. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRAndroidManagement_Empty.
 *
 *  Deletes a long-running operation. This method indicates that the client is
 *  no longer interested in the operation result. It does not cancel the
 *  operation. If the server doesn't support this method, it returns
 *  google.rpc.Code.UNIMPLEMENTED.
 *
 *  @param name The name of the operation resource to be deleted.
 *
 *  @return GTLRAndroidManagementQuery_EnterprisesDevicesOperationsDelete
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Gets the latest state of a long-running operation. Clients can use this
 *  method to poll the operation result at intervals as recommended by the API
 *  service.
 *
 *  Method: androidmanagement.enterprises.devices.operations.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAndroidManagement
 */
@interface GTLRAndroidManagementQuery_EnterprisesDevicesOperationsGet : GTLRAndroidManagementQuery

/** The name of the operation resource. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRAndroidManagement_Operation.
 *
 *  Gets the latest state of a long-running operation. Clients can use this
 *  method to poll the operation result at intervals as recommended by the API
 *  service.
 *
 *  @param name The name of the operation resource.
 *
 *  @return GTLRAndroidManagementQuery_EnterprisesDevicesOperationsGet
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Lists operations that match the specified filter in the request. If the
 *  server doesn't support this method, it returns UNIMPLEMENTED.NOTE: the name
 *  binding allows API services to override the binding to use different
 *  resource name schemes, such as users/ * /operations. To override the
 *  binding, API services can add a binding such as "/v1/{name=users/
 *  *}/operations" to their service configuration. For backwards compatibility,
 *  the default name includes the operations collection id, however overriding
 *  users must ensure the name binding is the parent resource, without the
 *  operations collection id.
 *
 *  Method: androidmanagement.enterprises.devices.operations.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAndroidManagement
 */
@interface GTLRAndroidManagementQuery_EnterprisesDevicesOperationsList : GTLRAndroidManagementQuery

/** The standard list filter. */
@property(nonatomic, copy, nullable) NSString *filter;

/** The name of the operation's parent resource. */
@property(nonatomic, copy, nullable) NSString *name;

/** The standard list page size. */
@property(nonatomic, assign) NSInteger pageSize;

/** The standard list page token. */
@property(nonatomic, copy, nullable) NSString *pageToken;

/**
 *  Fetches a @c GTLRAndroidManagement_ListOperationsResponse.
 *
 *  Lists operations that match the specified filter in the request. If the
 *  server doesn't support this method, it returns UNIMPLEMENTED.NOTE: the name
 *  binding allows API services to override the binding to use different
 *  resource name schemes, such as users/ * /operations. To override the
 *  binding, API services can add a binding such as "/v1/{name=users/
 *  *}/operations" to their service configuration. For backwards compatibility,
 *  the default name includes the operations collection id, however overriding
 *  users must ensure the name binding is the parent resource, without the
 *  operations collection id.
 *
 *  @param name The name of the operation's parent resource.
 *
 *  @return GTLRAndroidManagementQuery_EnterprisesDevicesOperationsList
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Updates a device.
 *
 *  Method: androidmanagement.enterprises.devices.patch
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAndroidManagement
 */
@interface GTLRAndroidManagementQuery_EnterprisesDevicesPatch : GTLRAndroidManagementQuery

/**
 *  The name of the device in the form
 *  enterprises/{enterpriseId}/devices/{deviceId}.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  The field mask indicating the fields to update. If not set, all modifiable
 *  fields will be modified.
 *
 *  String format is a comma-separated list of fields.
 */
@property(nonatomic, copy, nullable) NSString *updateMask;

/**
 *  Fetches a @c GTLRAndroidManagement_Device.
 *
 *  Updates a device.
 *
 *  @param object The @c GTLRAndroidManagement_Device to include in the query.
 *  @param name The name of the device in the form
 *    enterprises/{enterpriseId}/devices/{deviceId}.
 *
 *  @return GTLRAndroidManagementQuery_EnterprisesDevicesPatch
 */
+ (instancetype)queryWithObject:(GTLRAndroidManagement_Device *)object
                           name:(NSString *)name;

@end

/**
 *  Creates an enrollment token for a given enterprise.
 *
 *  Method: androidmanagement.enterprises.enrollmentTokens.create
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAndroidManagement
 */
@interface GTLRAndroidManagementQuery_EnterprisesEnrollmentTokensCreate : GTLRAndroidManagementQuery

/** The name of the enterprise in the form enterprises/{enterpriseId}. */
@property(nonatomic, copy, nullable) NSString *parent;

/**
 *  Fetches a @c GTLRAndroidManagement_EnrollmentToken.
 *
 *  Creates an enrollment token for a given enterprise.
 *
 *  @param object The @c GTLRAndroidManagement_EnrollmentToken to include in the
 *    query.
 *  @param parent The name of the enterprise in the form
 *    enterprises/{enterpriseId}.
 *
 *  @return GTLRAndroidManagementQuery_EnterprisesEnrollmentTokensCreate
 */
+ (instancetype)queryWithObject:(GTLRAndroidManagement_EnrollmentToken *)object
                         parent:(NSString *)parent;

@end

/**
 *  Deletes an enrollment token. This operation invalidates the token,
 *  preventing its future use.
 *
 *  Method: androidmanagement.enterprises.enrollmentTokens.delete
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAndroidManagement
 */
@interface GTLRAndroidManagementQuery_EnterprisesEnrollmentTokensDelete : GTLRAndroidManagementQuery

/**
 *  The name of the enrollment token in the form
 *  enterprises/{enterpriseId}/enrollmentTokens/{enrollmentTokenId}.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRAndroidManagement_Empty.
 *
 *  Deletes an enrollment token. This operation invalidates the token,
 *  preventing its future use.
 *
 *  @param name The name of the enrollment token in the form
 *    enterprises/{enterpriseId}/enrollmentTokens/{enrollmentTokenId}.
 *
 *  @return GTLRAndroidManagementQuery_EnterprisesEnrollmentTokensDelete
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Gets an enterprise.
 *
 *  Method: androidmanagement.enterprises.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAndroidManagement
 */
@interface GTLRAndroidManagementQuery_EnterprisesGet : GTLRAndroidManagementQuery

/** The name of the enterprise in the form enterprises/{enterpriseId}. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRAndroidManagement_Enterprise.
 *
 *  Gets an enterprise.
 *
 *  @param name The name of the enterprise in the form
 *    enterprises/{enterpriseId}.
 *
 *  @return GTLRAndroidManagementQuery_EnterprisesGet
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Lists EMM-managed enterprises. Only BASIC fields are returned.
 *
 *  Method: androidmanagement.enterprises.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAndroidManagement
 */
@interface GTLRAndroidManagementQuery_EnterprisesList : GTLRAndroidManagementQuery

/**
 *  The requested page size. The actual page size may be fixed to a min or max
 *  value.
 */
@property(nonatomic, assign) NSInteger pageSize;

/** A token identifying a page of results returned by the server. */
@property(nonatomic, copy, nullable) NSString *pageToken;

/** Required. The Cloud project ID of the EMM managing the enterprises. */
@property(nonatomic, copy, nullable) NSString *projectId;

/**
 *  Specifies which Enterprise fields to return. This method only supports
 *  BASIC.
 *
 *  Likely values:
 *    @arg @c kGTLRAndroidManagementViewEnterpriseViewUnspecified The API will
 *        default to the BASIC view for the List method. (Value:
 *        "ENTERPRISE_VIEW_UNSPECIFIED")
 *    @arg @c kGTLRAndroidManagementViewBasic Includes name and
 *        enterprise_display_name fields. (Value: "BASIC")
 */
@property(nonatomic, copy, nullable) NSString *view;

/**
 *  Fetches a @c GTLRAndroidManagement_ListEnterprisesResponse.
 *
 *  Lists EMM-managed enterprises. Only BASIC fields are returned.
 *
 *  @return GTLRAndroidManagementQuery_EnterprisesList
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)query;

@end

/**
 *  Updates an enterprise.
 *
 *  Method: androidmanagement.enterprises.patch
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAndroidManagement
 */
@interface GTLRAndroidManagementQuery_EnterprisesPatch : GTLRAndroidManagementQuery

/** The name of the enterprise in the form enterprises/{enterpriseId}. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  The field mask indicating the fields to update. If not set, all modifiable
 *  fields will be modified.
 *
 *  String format is a comma-separated list of fields.
 */
@property(nonatomic, copy, nullable) NSString *updateMask;

/**
 *  Fetches a @c GTLRAndroidManagement_Enterprise.
 *
 *  Updates an enterprise.
 *
 *  @param object The @c GTLRAndroidManagement_Enterprise to include in the
 *    query.
 *  @param name The name of the enterprise in the form
 *    enterprises/{enterpriseId}.
 *
 *  @return GTLRAndroidManagementQuery_EnterprisesPatch
 */
+ (instancetype)queryWithObject:(GTLRAndroidManagement_Enterprise *)object
                           name:(NSString *)name;

@end

/**
 *  Deletes a policy. This operation is only permitted if no devices are
 *  currently referencing the policy.
 *
 *  Method: androidmanagement.enterprises.policies.delete
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAndroidManagement
 */
@interface GTLRAndroidManagementQuery_EnterprisesPoliciesDelete : GTLRAndroidManagementQuery

/**
 *  The name of the policy in the form
 *  enterprises/{enterpriseId}/policies/{policyId}.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRAndroidManagement_Empty.
 *
 *  Deletes a policy. This operation is only permitted if no devices are
 *  currently referencing the policy.
 *
 *  @param name The name of the policy in the form
 *    enterprises/{enterpriseId}/policies/{policyId}.
 *
 *  @return GTLRAndroidManagementQuery_EnterprisesPoliciesDelete
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Gets a policy.
 *
 *  Method: androidmanagement.enterprises.policies.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAndroidManagement
 */
@interface GTLRAndroidManagementQuery_EnterprisesPoliciesGet : GTLRAndroidManagementQuery

/**
 *  The name of the policy in the form
 *  enterprises/{enterpriseId}/policies/{policyId}.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRAndroidManagement_Policy.
 *
 *  Gets a policy.
 *
 *  @param name The name of the policy in the form
 *    enterprises/{enterpriseId}/policies/{policyId}.
 *
 *  @return GTLRAndroidManagementQuery_EnterprisesPoliciesGet
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Lists policies for a given enterprise.
 *
 *  Method: androidmanagement.enterprises.policies.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAndroidManagement
 */
@interface GTLRAndroidManagementQuery_EnterprisesPoliciesList : GTLRAndroidManagementQuery

/**
 *  The requested page size. The actual page size may be fixed to a min or max
 *  value.
 */
@property(nonatomic, assign) NSInteger pageSize;

/** A token identifying a page of results returned by the server. */
@property(nonatomic, copy, nullable) NSString *pageToken;

/** The name of the enterprise in the form enterprises/{enterpriseId}. */
@property(nonatomic, copy, nullable) NSString *parent;

/**
 *  Fetches a @c GTLRAndroidManagement_ListPoliciesResponse.
 *
 *  Lists policies for a given enterprise.
 *
 *  @param parent The name of the enterprise in the form
 *    enterprises/{enterpriseId}.
 *
 *  @return GTLRAndroidManagementQuery_EnterprisesPoliciesList
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)queryWithParent:(NSString *)parent;

@end

/**
 *  Updates or creates a policy.
 *
 *  Method: androidmanagement.enterprises.policies.patch
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAndroidManagement
 */
@interface GTLRAndroidManagementQuery_EnterprisesPoliciesPatch : GTLRAndroidManagementQuery

/**
 *  The name of the policy in the form
 *  enterprises/{enterpriseId}/policies/{policyId}.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  The field mask indicating the fields to update. If not set, all modifiable
 *  fields will be modified.
 *
 *  String format is a comma-separated list of fields.
 */
@property(nonatomic, copy, nullable) NSString *updateMask;

/**
 *  Fetches a @c GTLRAndroidManagement_Policy.
 *
 *  Updates or creates a policy.
 *
 *  @param object The @c GTLRAndroidManagement_Policy to include in the query.
 *  @param name The name of the policy in the form
 *    enterprises/{enterpriseId}/policies/{policyId}.
 *
 *  @return GTLRAndroidManagementQuery_EnterprisesPoliciesPatch
 */
+ (instancetype)queryWithObject:(GTLRAndroidManagement_Policy *)object
                           name:(NSString *)name;

@end

/**
 *  Creates a web app.
 *
 *  Method: androidmanagement.enterprises.webApps.create
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAndroidManagement
 */
@interface GTLRAndroidManagementQuery_EnterprisesWebAppsCreate : GTLRAndroidManagementQuery

/** The name of the enterprise in the form enterprises/{enterpriseId}. */
@property(nonatomic, copy, nullable) NSString *parent;

/**
 *  Fetches a @c GTLRAndroidManagement_WebApp.
 *
 *  Creates a web app.
 *
 *  @param object The @c GTLRAndroidManagement_WebApp to include in the query.
 *  @param parent The name of the enterprise in the form
 *    enterprises/{enterpriseId}.
 *
 *  @return GTLRAndroidManagementQuery_EnterprisesWebAppsCreate
 */
+ (instancetype)queryWithObject:(GTLRAndroidManagement_WebApp *)object
                         parent:(NSString *)parent;

@end

/**
 *  Deletes a web app.
 *
 *  Method: androidmanagement.enterprises.webApps.delete
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAndroidManagement
 */
@interface GTLRAndroidManagementQuery_EnterprisesWebAppsDelete : GTLRAndroidManagementQuery

/**
 *  The name of the web app in the form
 *  enterprises/{enterpriseId}/webApps/{packageName}.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRAndroidManagement_Empty.
 *
 *  Deletes a web app.
 *
 *  @param name The name of the web app in the form
 *    enterprises/{enterpriseId}/webApps/{packageName}.
 *
 *  @return GTLRAndroidManagementQuery_EnterprisesWebAppsDelete
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Gets a web app.
 *
 *  Method: androidmanagement.enterprises.webApps.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAndroidManagement
 */
@interface GTLRAndroidManagementQuery_EnterprisesWebAppsGet : GTLRAndroidManagementQuery

/**
 *  The name of the web app in the form
 *  enterprises/{enterpriseId}/webApp/{packageName}.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRAndroidManagement_WebApp.
 *
 *  Gets a web app.
 *
 *  @param name The name of the web app in the form
 *    enterprises/{enterpriseId}/webApp/{packageName}.
 *
 *  @return GTLRAndroidManagementQuery_EnterprisesWebAppsGet
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Lists web apps for a given enterprise.
 *
 *  Method: androidmanagement.enterprises.webApps.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAndroidManagement
 */
@interface GTLRAndroidManagementQuery_EnterprisesWebAppsList : GTLRAndroidManagementQuery

/**
 *  The requested page size. The actual page size may be fixed to a min or max
 *  value.
 */
@property(nonatomic, assign) NSInteger pageSize;

/** A token identifying a page of results returned by the server. */
@property(nonatomic, copy, nullable) NSString *pageToken;

/** The name of the enterprise in the form enterprises/{enterpriseId}. */
@property(nonatomic, copy, nullable) NSString *parent;

/**
 *  Fetches a @c GTLRAndroidManagement_ListWebAppsResponse.
 *
 *  Lists web apps for a given enterprise.
 *
 *  @param parent The name of the enterprise in the form
 *    enterprises/{enterpriseId}.
 *
 *  @return GTLRAndroidManagementQuery_EnterprisesWebAppsList
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)queryWithParent:(NSString *)parent;

@end

/**
 *  Updates a web app.
 *
 *  Method: androidmanagement.enterprises.webApps.patch
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAndroidManagement
 */
@interface GTLRAndroidManagementQuery_EnterprisesWebAppsPatch : GTLRAndroidManagementQuery

/**
 *  The name of the web app in the form
 *  enterprises/{enterpriseId}/webApps/{packageName}.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  The field mask indicating the fields to update. If not set, all modifiable
 *  fields will be modified.
 *
 *  String format is a comma-separated list of fields.
 */
@property(nonatomic, copy, nullable) NSString *updateMask;

/**
 *  Fetches a @c GTLRAndroidManagement_WebApp.
 *
 *  Updates a web app.
 *
 *  @param object The @c GTLRAndroidManagement_WebApp to include in the query.
 *  @param name The name of the web app in the form
 *    enterprises/{enterpriseId}/webApps/{packageName}.
 *
 *  @return GTLRAndroidManagementQuery_EnterprisesWebAppsPatch
 */
+ (instancetype)queryWithObject:(GTLRAndroidManagement_WebApp *)object
                           name:(NSString *)name;

@end

/**
 *  Creates a web token to access an embeddable managed Google Play web UI for a
 *  given enterprise.
 *
 *  Method: androidmanagement.enterprises.webTokens.create
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAndroidManagement
 */
@interface GTLRAndroidManagementQuery_EnterprisesWebTokensCreate : GTLRAndroidManagementQuery

/** The name of the enterprise in the form enterprises/{enterpriseId}. */
@property(nonatomic, copy, nullable) NSString *parent;

/**
 *  Fetches a @c GTLRAndroidManagement_WebToken.
 *
 *  Creates a web token to access an embeddable managed Google Play web UI for a
 *  given enterprise.
 *
 *  @param object The @c GTLRAndroidManagement_WebToken to include in the query.
 *  @param parent The name of the enterprise in the form
 *    enterprises/{enterpriseId}.
 *
 *  @return GTLRAndroidManagementQuery_EnterprisesWebTokensCreate
 */
+ (instancetype)queryWithObject:(GTLRAndroidManagement_WebToken *)object
                         parent:(NSString *)parent;

@end

/**
 *  Creates an enterprise signup URL.
 *
 *  Method: androidmanagement.signupUrls.create
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeAndroidManagement
 */
@interface GTLRAndroidManagementQuery_SignupUrlsCreate : GTLRAndroidManagementQuery

/**
 *  The callback URL that the admin will be redirected to after successfully
 *  creating an enterprise. Before redirecting there the system will add a query
 *  parameter to this URL named enterpriseToken which will contain an opaque
 *  token to be used for the create enterprise request. The URL will be parsed
 *  then reformatted in order to add the enterpriseToken parameter, so there may
 *  be some minor formatting changes.
 */
@property(nonatomic, copy, nullable) NSString *callbackUrl;

/**
 *  The ID of the Google Cloud Platform project which will own the enterprise.
 */
@property(nonatomic, copy, nullable) NSString *projectId;

/**
 *  Fetches a @c GTLRAndroidManagement_SignupUrl.
 *
 *  Creates an enterprise signup URL.
 *
 *  @return GTLRAndroidManagementQuery_SignupUrlsCreate
 */
+ (instancetype)query;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop
