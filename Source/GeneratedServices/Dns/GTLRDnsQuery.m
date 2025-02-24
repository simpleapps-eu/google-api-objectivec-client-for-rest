// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud DNS API (dns/v1)
// Documentation:
//   https://cloud.google.com/dns/docs

#import "GTLRDnsQuery.h"

#import "GTLRDnsObjects.h"

// ----------------------------------------------------------------------------
// Constants

// sortBy
NSString * const kGTLRDnsSortByChangeSequence = @"changeSequence";
NSString * const kGTLRDnsSortById             = @"id";
NSString * const kGTLRDnsSortByStartTime      = @"startTime";

// ----------------------------------------------------------------------------
// Query Classes
//

@implementation GTLRDnsQuery

@dynamic fields;

@end

@implementation GTLRDnsQuery_ChangesCreate

@dynamic clientOperationId, managedZone, project;

+ (instancetype)queryWithObject:(GTLRDns_Change *)object
                        project:(NSString *)project
                    managedZone:(NSString *)managedZone {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[
    @"managedZone", @"project"
  ];
  NSString *pathURITemplate = @"dns/v1/projects/{project}/managedZones/{managedZone}/changes";
  GTLRDnsQuery_ChangesCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.managedZone = managedZone;
  query.expectedObjectClass = [GTLRDns_Change class];
  query.loggingName = @"dns.changes.create";
  return query;
}

@end

@implementation GTLRDnsQuery_ChangesGet

@dynamic changeId, clientOperationId, managedZone, project;

+ (instancetype)queryWithProject:(NSString *)project
                     managedZone:(NSString *)managedZone
                        changeId:(NSString *)changeId {
  NSArray *pathParams = @[
    @"changeId", @"managedZone", @"project"
  ];
  NSString *pathURITemplate = @"dns/v1/projects/{project}/managedZones/{managedZone}/changes/{changeId}";
  GTLRDnsQuery_ChangesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.managedZone = managedZone;
  query.changeId = changeId;
  query.expectedObjectClass = [GTLRDns_Change class];
  query.loggingName = @"dns.changes.get";
  return query;
}

@end

@implementation GTLRDnsQuery_ChangesList

@dynamic managedZone, maxResults, pageToken, project, sortBy, sortOrder;

+ (instancetype)queryWithProject:(NSString *)project
                     managedZone:(NSString *)managedZone {
  NSArray *pathParams = @[
    @"managedZone", @"project"
  ];
  NSString *pathURITemplate = @"dns/v1/projects/{project}/managedZones/{managedZone}/changes";
  GTLRDnsQuery_ChangesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.managedZone = managedZone;
  query.expectedObjectClass = [GTLRDns_ChangesListResponse class];
  query.loggingName = @"dns.changes.list";
  return query;
}

@end

@implementation GTLRDnsQuery_DnsKeysGet

@dynamic clientOperationId, digestType, dnsKeyId, managedZone, project;

+ (instancetype)queryWithProject:(NSString *)project
                     managedZone:(NSString *)managedZone
                        dnsKeyId:(NSString *)dnsKeyId {
  NSArray *pathParams = @[
    @"dnsKeyId", @"managedZone", @"project"
  ];
  NSString *pathURITemplate = @"dns/v1/projects/{project}/managedZones/{managedZone}/dnsKeys/{dnsKeyId}";
  GTLRDnsQuery_DnsKeysGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.managedZone = managedZone;
  query.dnsKeyId = dnsKeyId;
  query.expectedObjectClass = [GTLRDns_DnsKey class];
  query.loggingName = @"dns.dnsKeys.get";
  return query;
}

@end

@implementation GTLRDnsQuery_DnsKeysList

@dynamic digestType, managedZone, maxResults, pageToken, project;

+ (instancetype)queryWithProject:(NSString *)project
                     managedZone:(NSString *)managedZone {
  NSArray *pathParams = @[
    @"managedZone", @"project"
  ];
  NSString *pathURITemplate = @"dns/v1/projects/{project}/managedZones/{managedZone}/dnsKeys";
  GTLRDnsQuery_DnsKeysList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.managedZone = managedZone;
  query.expectedObjectClass = [GTLRDns_DnsKeysListResponse class];
  query.loggingName = @"dns.dnsKeys.list";
  return query;
}

@end

@implementation GTLRDnsQuery_ManagedZoneOperationsGet

@dynamic clientOperationId, managedZone, operation, project;

+ (instancetype)queryWithProject:(NSString *)project
                     managedZone:(NSString *)managedZone
                       operation:(NSString *)operation {
  NSArray *pathParams = @[
    @"managedZone", @"operation", @"project"
  ];
  NSString *pathURITemplate = @"dns/v1/projects/{project}/managedZones/{managedZone}/operations/{operation}";
  GTLRDnsQuery_ManagedZoneOperationsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.managedZone = managedZone;
  query.operation = operation;
  query.expectedObjectClass = [GTLRDns_Operation class];
  query.loggingName = @"dns.managedZoneOperations.get";
  return query;
}

@end

@implementation GTLRDnsQuery_ManagedZoneOperationsList

@dynamic managedZone, maxResults, pageToken, project, sortBy;

+ (instancetype)queryWithProject:(NSString *)project
                     managedZone:(NSString *)managedZone {
  NSArray *pathParams = @[
    @"managedZone", @"project"
  ];
  NSString *pathURITemplate = @"dns/v1/projects/{project}/managedZones/{managedZone}/operations";
  GTLRDnsQuery_ManagedZoneOperationsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.managedZone = managedZone;
  query.expectedObjectClass = [GTLRDns_ManagedZoneOperationsListResponse class];
  query.loggingName = @"dns.managedZoneOperations.list";
  return query;
}

@end

@implementation GTLRDnsQuery_ManagedZonesCreate

@dynamic clientOperationId, project;

+ (instancetype)queryWithObject:(GTLRDns_ManagedZone *)object
                        project:(NSString *)project {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"project" ];
  NSString *pathURITemplate = @"dns/v1/projects/{project}/managedZones";
  GTLRDnsQuery_ManagedZonesCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.expectedObjectClass = [GTLRDns_ManagedZone class];
  query.loggingName = @"dns.managedZones.create";
  return query;
}

@end

@implementation GTLRDnsQuery_ManagedZonesDelete

@dynamic clientOperationId, managedZone, project;

+ (instancetype)queryWithProject:(NSString *)project
                     managedZone:(NSString *)managedZone {
  NSArray *pathParams = @[
    @"managedZone", @"project"
  ];
  NSString *pathURITemplate = @"dns/v1/projects/{project}/managedZones/{managedZone}";
  GTLRDnsQuery_ManagedZonesDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.project = project;
  query.managedZone = managedZone;
  query.loggingName = @"dns.managedZones.delete";
  return query;
}

@end

@implementation GTLRDnsQuery_ManagedZonesGet

@dynamic clientOperationId, managedZone, project;

+ (instancetype)queryWithProject:(NSString *)project
                     managedZone:(NSString *)managedZone {
  NSArray *pathParams = @[
    @"managedZone", @"project"
  ];
  NSString *pathURITemplate = @"dns/v1/projects/{project}/managedZones/{managedZone}";
  GTLRDnsQuery_ManagedZonesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.managedZone = managedZone;
  query.expectedObjectClass = [GTLRDns_ManagedZone class];
  query.loggingName = @"dns.managedZones.get";
  return query;
}

@end

@implementation GTLRDnsQuery_ManagedZonesList

@dynamic dnsName, maxResults, pageToken, project;

+ (instancetype)queryWithProject:(NSString *)project {
  NSArray *pathParams = @[ @"project" ];
  NSString *pathURITemplate = @"dns/v1/projects/{project}/managedZones";
  GTLRDnsQuery_ManagedZonesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.expectedObjectClass = [GTLRDns_ManagedZonesListResponse class];
  query.loggingName = @"dns.managedZones.list";
  return query;
}

@end

@implementation GTLRDnsQuery_ManagedZonesPatch

@dynamic clientOperationId, managedZone, project;

+ (instancetype)queryWithObject:(GTLRDns_ManagedZone *)object
                        project:(NSString *)project
                    managedZone:(NSString *)managedZone {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[
    @"managedZone", @"project"
  ];
  NSString *pathURITemplate = @"dns/v1/projects/{project}/managedZones/{managedZone}";
  GTLRDnsQuery_ManagedZonesPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.managedZone = managedZone;
  query.expectedObjectClass = [GTLRDns_Operation class];
  query.loggingName = @"dns.managedZones.patch";
  return query;
}

@end

@implementation GTLRDnsQuery_ManagedZonesUpdate

@dynamic clientOperationId, managedZone, project;

+ (instancetype)queryWithObject:(GTLRDns_ManagedZone *)object
                        project:(NSString *)project
                    managedZone:(NSString *)managedZone {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[
    @"managedZone", @"project"
  ];
  NSString *pathURITemplate = @"dns/v1/projects/{project}/managedZones/{managedZone}";
  GTLRDnsQuery_ManagedZonesUpdate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.managedZone = managedZone;
  query.expectedObjectClass = [GTLRDns_Operation class];
  query.loggingName = @"dns.managedZones.update";
  return query;
}

@end

@implementation GTLRDnsQuery_PoliciesCreate

@dynamic clientOperationId, project;

+ (instancetype)queryWithObject:(GTLRDns_Policy *)object
                        project:(NSString *)project {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"project" ];
  NSString *pathURITemplate = @"dns/v1/projects/{project}/policies";
  GTLRDnsQuery_PoliciesCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.expectedObjectClass = [GTLRDns_Policy class];
  query.loggingName = @"dns.policies.create";
  return query;
}

@end

@implementation GTLRDnsQuery_PoliciesDelete

@dynamic clientOperationId, policy, project;

+ (instancetype)queryWithProject:(NSString *)project
                          policy:(NSString *)policy {
  NSArray *pathParams = @[
    @"policy", @"project"
  ];
  NSString *pathURITemplate = @"dns/v1/projects/{project}/policies/{policy}";
  GTLRDnsQuery_PoliciesDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.project = project;
  query.policy = policy;
  query.loggingName = @"dns.policies.delete";
  return query;
}

@end

@implementation GTLRDnsQuery_PoliciesGet

@dynamic clientOperationId, policy, project;

+ (instancetype)queryWithProject:(NSString *)project
                          policy:(NSString *)policy {
  NSArray *pathParams = @[
    @"policy", @"project"
  ];
  NSString *pathURITemplate = @"dns/v1/projects/{project}/policies/{policy}";
  GTLRDnsQuery_PoliciesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.policy = policy;
  query.expectedObjectClass = [GTLRDns_Policy class];
  query.loggingName = @"dns.policies.get";
  return query;
}

@end

@implementation GTLRDnsQuery_PoliciesList

@dynamic maxResults, pageToken, project;

+ (instancetype)queryWithProject:(NSString *)project {
  NSArray *pathParams = @[ @"project" ];
  NSString *pathURITemplate = @"dns/v1/projects/{project}/policies";
  GTLRDnsQuery_PoliciesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.expectedObjectClass = [GTLRDns_PoliciesListResponse class];
  query.loggingName = @"dns.policies.list";
  return query;
}

@end

@implementation GTLRDnsQuery_PoliciesPatch

@dynamic clientOperationId, policy, project;

+ (instancetype)queryWithObject:(GTLRDns_Policy *)object
                        project:(NSString *)project
                         policy:(NSString *)policy {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[
    @"policy", @"project"
  ];
  NSString *pathURITemplate = @"dns/v1/projects/{project}/policies/{policy}";
  GTLRDnsQuery_PoliciesPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.policy = policy;
  query.expectedObjectClass = [GTLRDns_PoliciesPatchResponse class];
  query.loggingName = @"dns.policies.patch";
  return query;
}

@end

@implementation GTLRDnsQuery_PoliciesUpdate

@dynamic clientOperationId, policy, project;

+ (instancetype)queryWithObject:(GTLRDns_Policy *)object
                        project:(NSString *)project
                         policy:(NSString *)policy {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[
    @"policy", @"project"
  ];
  NSString *pathURITemplate = @"dns/v1/projects/{project}/policies/{policy}";
  GTLRDnsQuery_PoliciesUpdate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.policy = policy;
  query.expectedObjectClass = [GTLRDns_PoliciesUpdateResponse class];
  query.loggingName = @"dns.policies.update";
  return query;
}

@end

@implementation GTLRDnsQuery_ProjectsGet

@dynamic clientOperationId, project;

+ (instancetype)queryWithProject:(NSString *)project {
  NSArray *pathParams = @[ @"project" ];
  NSString *pathURITemplate = @"dns/v1/projects/{project}";
  GTLRDnsQuery_ProjectsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.expectedObjectClass = [GTLRDns_Project class];
  query.loggingName = @"dns.projects.get";
  return query;
}

@end

@implementation GTLRDnsQuery_ResourceRecordSetsCreate

@dynamic clientOperationId, managedZone, project;

+ (instancetype)queryWithObject:(GTLRDns_ResourceRecordSet *)object
                        project:(NSString *)project
                    managedZone:(NSString *)managedZone {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[
    @"managedZone", @"project"
  ];
  NSString *pathURITemplate = @"dns/v1/projects/{project}/managedZones/{managedZone}/rrsets";
  GTLRDnsQuery_ResourceRecordSetsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.managedZone = managedZone;
  query.expectedObjectClass = [GTLRDns_ResourceRecordSet class];
  query.loggingName = @"dns.resourceRecordSets.create";
  return query;
}

@end

@implementation GTLRDnsQuery_ResourceRecordSetsDelete

@dynamic clientOperationId, managedZone, name, project, type;

+ (instancetype)queryWithProject:(NSString *)project
                     managedZone:(NSString *)managedZone
                            name:(NSString *)name
                            type:(NSString *)type {
  NSArray *pathParams = @[
    @"managedZone", @"name", @"project", @"type"
  ];
  NSString *pathURITemplate = @"dns/v1/projects/{project}/managedZones/{managedZone}/rrsets/{name}/{type}";
  GTLRDnsQuery_ResourceRecordSetsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.project = project;
  query.managedZone = managedZone;
  query.name = name;
  query.type = type;
  query.expectedObjectClass = [GTLRDns_ResourceRecordSetsDeleteResponse class];
  query.loggingName = @"dns.resourceRecordSets.delete";
  return query;
}

@end

@implementation GTLRDnsQuery_ResourceRecordSetsGet

@dynamic clientOperationId, managedZone, name, project, type;

+ (instancetype)queryWithProject:(NSString *)project
                     managedZone:(NSString *)managedZone
                            name:(NSString *)name
                            type:(NSString *)type {
  NSArray *pathParams = @[
    @"managedZone", @"name", @"project", @"type"
  ];
  NSString *pathURITemplate = @"dns/v1/projects/{project}/managedZones/{managedZone}/rrsets/{name}/{type}";
  GTLRDnsQuery_ResourceRecordSetsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.managedZone = managedZone;
  query.name = name;
  query.type = type;
  query.expectedObjectClass = [GTLRDns_ResourceRecordSet class];
  query.loggingName = @"dns.resourceRecordSets.get";
  return query;
}

@end

@implementation GTLRDnsQuery_ResourceRecordSetsList

@dynamic managedZone, maxResults, name, pageToken, project, type;

+ (instancetype)queryWithProject:(NSString *)project
                     managedZone:(NSString *)managedZone {
  NSArray *pathParams = @[
    @"managedZone", @"project"
  ];
  NSString *pathURITemplate = @"dns/v1/projects/{project}/managedZones/{managedZone}/rrsets";
  GTLRDnsQuery_ResourceRecordSetsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.managedZone = managedZone;
  query.expectedObjectClass = [GTLRDns_ResourceRecordSetsListResponse class];
  query.loggingName = @"dns.resourceRecordSets.list";
  return query;
}

@end

@implementation GTLRDnsQuery_ResourceRecordSetsPatch

@dynamic clientOperationId, managedZone, name, project, type;

+ (instancetype)queryWithObject:(GTLRDns_ResourceRecordSet *)object
                        project:(NSString *)project
                    managedZone:(NSString *)managedZone
                           name:(NSString *)name
                           type:(NSString *)type {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[
    @"managedZone", @"name", @"project", @"type"
  ];
  NSString *pathURITemplate = @"dns/v1/projects/{project}/managedZones/{managedZone}/rrsets/{name}/{type}";
  GTLRDnsQuery_ResourceRecordSetsPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.managedZone = managedZone;
  query.name = name;
  query.type = type;
  query.expectedObjectClass = [GTLRDns_ResourceRecordSet class];
  query.loggingName = @"dns.resourceRecordSets.patch";
  return query;
}

@end
