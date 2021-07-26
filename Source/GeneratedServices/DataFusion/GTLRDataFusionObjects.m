// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud Data Fusion API (datafusion/v1)
// Description:
//   Cloud Data Fusion is a fully-managed, cloud native, enterprise data
//   integration service for quickly building and managing data pipelines. It
//   provides a graphical interface to increase time efficiency and reduce
//   complexity, and allows business users, developers, and data scientists to
//   easily and reliably build scalable data integration solutions to cleanse,
//   prepare, blend, transfer and transform data without having to wrestle with
//   infrastructure.
// Documentation:
//   https://cloud.google.com/data-fusion/docs

#import "GTLRDataFusionObjects.h"

// ----------------------------------------------------------------------------
// Constants

// GTLRDataFusion_Accelerator.acceleratorType
NSString * const kGTLRDataFusion_Accelerator_AcceleratorType_AcceleratorTypeUnspecified = @"ACCELERATOR_TYPE_UNSPECIFIED";
NSString * const kGTLRDataFusion_Accelerator_AcceleratorType_CcaiInsights = @"CCAI_INSIGHTS";
NSString * const kGTLRDataFusion_Accelerator_AcceleratorType_Cdc = @"CDC";
NSString * const kGTLRDataFusion_Accelerator_AcceleratorType_Healthcare = @"HEALTHCARE";

// GTLRDataFusion_Accelerator.state
NSString * const kGTLRDataFusion_Accelerator_State_Disabled    = @"DISABLED";
NSString * const kGTLRDataFusion_Accelerator_State_Enabled     = @"ENABLED";
NSString * const kGTLRDataFusion_Accelerator_State_StateUnspecified = @"STATE_UNSPECIFIED";
NSString * const kGTLRDataFusion_Accelerator_State_Unknown     = @"UNKNOWN";

// GTLRDataFusion_AuditLogConfig.logType
NSString * const kGTLRDataFusion_AuditLogConfig_LogType_AdminRead = @"ADMIN_READ";
NSString * const kGTLRDataFusion_AuditLogConfig_LogType_DataRead = @"DATA_READ";
NSString * const kGTLRDataFusion_AuditLogConfig_LogType_DataWrite = @"DATA_WRITE";
NSString * const kGTLRDataFusion_AuditLogConfig_LogType_LogTypeUnspecified = @"LOG_TYPE_UNSPECIFIED";

// GTLRDataFusion_Instance.state
NSString * const kGTLRDataFusion_Instance_State_Active         = @"ACTIVE";
NSString * const kGTLRDataFusion_Instance_State_AutoUpdating   = @"AUTO_UPDATING";
NSString * const kGTLRDataFusion_Instance_State_AutoUpgrading  = @"AUTO_UPGRADING";
NSString * const kGTLRDataFusion_Instance_State_Creating       = @"CREATING";
NSString * const kGTLRDataFusion_Instance_State_Deleting       = @"DELETING";
NSString * const kGTLRDataFusion_Instance_State_Failed         = @"FAILED";
NSString * const kGTLRDataFusion_Instance_State_Restarting     = @"RESTARTING";
NSString * const kGTLRDataFusion_Instance_State_StateUnspecified = @"STATE_UNSPECIFIED";
NSString * const kGTLRDataFusion_Instance_State_Updating       = @"UPDATING";
NSString * const kGTLRDataFusion_Instance_State_Upgrading      = @"UPGRADING";

// GTLRDataFusion_Instance.type
NSString * const kGTLRDataFusion_Instance_Type_Basic           = @"BASIC";
NSString * const kGTLRDataFusion_Instance_Type_Developer       = @"DEVELOPER";
NSString * const kGTLRDataFusion_Instance_Type_Enterprise      = @"ENTERPRISE";
NSString * const kGTLRDataFusion_Instance_Type_TypeUnspecified = @"TYPE_UNSPECIFIED";

// ----------------------------------------------------------------------------
//
//   GTLRDataFusion_Accelerator
//

@implementation GTLRDataFusion_Accelerator
@dynamic acceleratorType, state;
@end


// ----------------------------------------------------------------------------
//
//   GTLRDataFusion_AuditConfig
//

@implementation GTLRDataFusion_AuditConfig
@dynamic auditLogConfigs, service;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"auditLogConfigs" : [GTLRDataFusion_AuditLogConfig class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDataFusion_AuditLogConfig
//

@implementation GTLRDataFusion_AuditLogConfig
@dynamic exemptedMembers, logType;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"exemptedMembers" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDataFusion_Binding
//

@implementation GTLRDataFusion_Binding
@dynamic condition, members, role;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"members" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDataFusion_CancelOperationRequest
//

@implementation GTLRDataFusion_CancelOperationRequest
@end


// ----------------------------------------------------------------------------
//
//   GTLRDataFusion_CryptoKeyConfig
//

@implementation GTLRDataFusion_CryptoKeyConfig
@dynamic keyReference;
@end


// ----------------------------------------------------------------------------
//
//   GTLRDataFusion_Empty
//

@implementation GTLRDataFusion_Empty
@end


// ----------------------------------------------------------------------------
//
//   GTLRDataFusion_Expr
//

@implementation GTLRDataFusion_Expr
@dynamic descriptionProperty, expression, location, title;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDataFusion_Instance
//

@implementation GTLRDataFusion_Instance
@dynamic accelerators, apiEndpoint, availableVersion, createTime,
         cryptoKeyConfig, dataprocServiceAccount, descriptionProperty,
         displayName, enableRbac, enableStackdriverLogging,
         enableStackdriverMonitoring, gcsBucket, labels, name, networkConfig,
         options, p4ServiceAccount, privateInstance, serviceAccount,
         serviceEndpoint, state, stateMessage, tenantProjectId, type,
         updateTime, version, zoneProperty;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  NSDictionary<NSString *, NSString *> *map = @{
    @"descriptionProperty" : @"description",
    @"zoneProperty" : @"zone"
  };
  return map;
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"accelerators" : [GTLRDataFusion_Accelerator class],
    @"availableVersion" : [GTLRDataFusion_Version class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDataFusion_Instance_Labels
//

@implementation GTLRDataFusion_Instance_Labels

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDataFusion_Instance_Options
//

@implementation GTLRDataFusion_Instance_Options

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDataFusion_ListAvailableVersionsResponse
//

@implementation GTLRDataFusion_ListAvailableVersionsResponse
@dynamic availableVersions, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"availableVersions" : [GTLRDataFusion_Version class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"availableVersions";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDataFusion_ListInstancesResponse
//

@implementation GTLRDataFusion_ListInstancesResponse
@dynamic instances, nextPageToken, unreachable;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"instances" : [GTLRDataFusion_Instance class],
    @"unreachable" : [NSString class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"instances";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDataFusion_ListLocationsResponse
//

@implementation GTLRDataFusion_ListLocationsResponse
@dynamic locations, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"locations" : [GTLRDataFusion_Location class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"locations";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDataFusion_ListOperationsResponse
//

@implementation GTLRDataFusion_ListOperationsResponse
@dynamic nextPageToken, operations;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"operations" : [GTLRDataFusion_Operation class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"operations";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDataFusion_Location
//

@implementation GTLRDataFusion_Location
@dynamic displayName, labels, locationId, metadata, name;
@end


// ----------------------------------------------------------------------------
//
//   GTLRDataFusion_Location_Labels
//

@implementation GTLRDataFusion_Location_Labels

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDataFusion_Location_Metadata
//

@implementation GTLRDataFusion_Location_Metadata

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDataFusion_NetworkConfig
//

@implementation GTLRDataFusion_NetworkConfig
@dynamic ipAllocation, network;
@end


// ----------------------------------------------------------------------------
//
//   GTLRDataFusion_Operation
//

@implementation GTLRDataFusion_Operation
@dynamic done, error, metadata, name, response;
@end


// ----------------------------------------------------------------------------
//
//   GTLRDataFusion_Operation_Metadata
//

@implementation GTLRDataFusion_Operation_Metadata

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDataFusion_Operation_Response
//

@implementation GTLRDataFusion_Operation_Response

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDataFusion_OperationMetadata
//

@implementation GTLRDataFusion_OperationMetadata
@dynamic additionalStatus, apiVersion, createTime, endTime,
         requestedCancellation, statusDetail, target, verb;
@end


// ----------------------------------------------------------------------------
//
//   GTLRDataFusion_OperationMetadata_AdditionalStatus
//

@implementation GTLRDataFusion_OperationMetadata_AdditionalStatus

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDataFusion_Policy
//

@implementation GTLRDataFusion_Policy
@dynamic auditConfigs, bindings, ETag, version;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"ETag" : @"etag" };
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"auditConfigs" : [GTLRDataFusion_AuditConfig class],
    @"bindings" : [GTLRDataFusion_Binding class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDataFusion_RestartInstanceRequest
//

@implementation GTLRDataFusion_RestartInstanceRequest
@end


// ----------------------------------------------------------------------------
//
//   GTLRDataFusion_SetIamPolicyRequest
//

@implementation GTLRDataFusion_SetIamPolicyRequest
@dynamic policy, updateMask;
@end


// ----------------------------------------------------------------------------
//
//   GTLRDataFusion_Status
//

@implementation GTLRDataFusion_Status
@dynamic code, details, message;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"details" : [GTLRDataFusion_Status_Details_Item class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDataFusion_Status_Details_Item
//

@implementation GTLRDataFusion_Status_Details_Item

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDataFusion_TestIamPermissionsRequest
//

@implementation GTLRDataFusion_TestIamPermissionsRequest
@dynamic permissions;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"permissions" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDataFusion_TestIamPermissionsResponse
//

@implementation GTLRDataFusion_TestIamPermissionsResponse
@dynamic permissions;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"permissions" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDataFusion_Version
//

@implementation GTLRDataFusion_Version
@dynamic availableFeatures, defaultVersion, versionNumber;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"availableFeatures" : [NSString class]
  };
  return map;
}

@end
