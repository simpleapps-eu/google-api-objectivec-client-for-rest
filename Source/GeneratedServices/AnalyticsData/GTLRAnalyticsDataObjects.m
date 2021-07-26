// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Google Analytics Data API (analyticsdata/v1beta)
// Description:
//   Accesses report data in Google Analytics.
// Documentation:
//   https://developers.google.com/analytics/devguides/reporting/data/v1/

#import "GTLRAnalyticsDataObjects.h"

// ----------------------------------------------------------------------------
// Constants

// GTLRAnalyticsData_CohortsRange.granularity
NSString * const kGTLRAnalyticsData_CohortsRange_Granularity_Daily = @"DAILY";
NSString * const kGTLRAnalyticsData_CohortsRange_Granularity_GranularityUnspecified = @"GRANULARITY_UNSPECIFIED";
NSString * const kGTLRAnalyticsData_CohortsRange_Granularity_Monthly = @"MONTHLY";
NSString * const kGTLRAnalyticsData_CohortsRange_Granularity_Weekly = @"WEEKLY";

// GTLRAnalyticsData_DimensionOrderBy.orderType
NSString * const kGTLRAnalyticsData_DimensionOrderBy_OrderType_Alphanumeric = @"ALPHANUMERIC";
NSString * const kGTLRAnalyticsData_DimensionOrderBy_OrderType_CaseInsensitiveAlphanumeric = @"CASE_INSENSITIVE_ALPHANUMERIC";
NSString * const kGTLRAnalyticsData_DimensionOrderBy_OrderType_Numeric = @"NUMERIC";
NSString * const kGTLRAnalyticsData_DimensionOrderBy_OrderType_OrderTypeUnspecified = @"ORDER_TYPE_UNSPECIFIED";

// GTLRAnalyticsData_MetricHeader.type
NSString * const kGTLRAnalyticsData_MetricHeader_Type_MetricTypeUnspecified = @"METRIC_TYPE_UNSPECIFIED";
NSString * const kGTLRAnalyticsData_MetricHeader_Type_TypeCurrency = @"TYPE_CURRENCY";
NSString * const kGTLRAnalyticsData_MetricHeader_Type_TypeFeet = @"TYPE_FEET";
NSString * const kGTLRAnalyticsData_MetricHeader_Type_TypeFloat = @"TYPE_FLOAT";
NSString * const kGTLRAnalyticsData_MetricHeader_Type_TypeHours = @"TYPE_HOURS";
NSString * const kGTLRAnalyticsData_MetricHeader_Type_TypeInteger = @"TYPE_INTEGER";
NSString * const kGTLRAnalyticsData_MetricHeader_Type_TypeKilometers = @"TYPE_KILOMETERS";
NSString * const kGTLRAnalyticsData_MetricHeader_Type_TypeMeters = @"TYPE_METERS";
NSString * const kGTLRAnalyticsData_MetricHeader_Type_TypeMiles = @"TYPE_MILES";
NSString * const kGTLRAnalyticsData_MetricHeader_Type_TypeMilliseconds = @"TYPE_MILLISECONDS";
NSString * const kGTLRAnalyticsData_MetricHeader_Type_TypeMinutes = @"TYPE_MINUTES";
NSString * const kGTLRAnalyticsData_MetricHeader_Type_TypeSeconds = @"TYPE_SECONDS";
NSString * const kGTLRAnalyticsData_MetricHeader_Type_TypeStandard = @"TYPE_STANDARD";

// GTLRAnalyticsData_MetricMetadata.type
NSString * const kGTLRAnalyticsData_MetricMetadata_Type_MetricTypeUnspecified = @"METRIC_TYPE_UNSPECIFIED";
NSString * const kGTLRAnalyticsData_MetricMetadata_Type_TypeCurrency = @"TYPE_CURRENCY";
NSString * const kGTLRAnalyticsData_MetricMetadata_Type_TypeFeet = @"TYPE_FEET";
NSString * const kGTLRAnalyticsData_MetricMetadata_Type_TypeFloat = @"TYPE_FLOAT";
NSString * const kGTLRAnalyticsData_MetricMetadata_Type_TypeHours = @"TYPE_HOURS";
NSString * const kGTLRAnalyticsData_MetricMetadata_Type_TypeInteger = @"TYPE_INTEGER";
NSString * const kGTLRAnalyticsData_MetricMetadata_Type_TypeKilometers = @"TYPE_KILOMETERS";
NSString * const kGTLRAnalyticsData_MetricMetadata_Type_TypeMeters = @"TYPE_METERS";
NSString * const kGTLRAnalyticsData_MetricMetadata_Type_TypeMiles = @"TYPE_MILES";
NSString * const kGTLRAnalyticsData_MetricMetadata_Type_TypeMilliseconds = @"TYPE_MILLISECONDS";
NSString * const kGTLRAnalyticsData_MetricMetadata_Type_TypeMinutes = @"TYPE_MINUTES";
NSString * const kGTLRAnalyticsData_MetricMetadata_Type_TypeSeconds = @"TYPE_SECONDS";
NSString * const kGTLRAnalyticsData_MetricMetadata_Type_TypeStandard = @"TYPE_STANDARD";

// GTLRAnalyticsData_NumericFilter.operation
NSString * const kGTLRAnalyticsData_NumericFilter_Operation_Equal = @"EQUAL";
NSString * const kGTLRAnalyticsData_NumericFilter_Operation_GreaterThan = @"GREATER_THAN";
NSString * const kGTLRAnalyticsData_NumericFilter_Operation_GreaterThanOrEqual = @"GREATER_THAN_OR_EQUAL";
NSString * const kGTLRAnalyticsData_NumericFilter_Operation_LessThan = @"LESS_THAN";
NSString * const kGTLRAnalyticsData_NumericFilter_Operation_LessThanOrEqual = @"LESS_THAN_OR_EQUAL";
NSString * const kGTLRAnalyticsData_NumericFilter_Operation_OperationUnspecified = @"OPERATION_UNSPECIFIED";

// GTLRAnalyticsData_Pivot.metricAggregations
NSString * const kGTLRAnalyticsData_Pivot_MetricAggregations_Count = @"COUNT";
NSString * const kGTLRAnalyticsData_Pivot_MetricAggregations_Maximum = @"MAXIMUM";
NSString * const kGTLRAnalyticsData_Pivot_MetricAggregations_MetricAggregationUnspecified = @"METRIC_AGGREGATION_UNSPECIFIED";
NSString * const kGTLRAnalyticsData_Pivot_MetricAggregations_Minimum = @"MINIMUM";
NSString * const kGTLRAnalyticsData_Pivot_MetricAggregations_Total = @"TOTAL";

// GTLRAnalyticsData_RunRealtimeReportRequest.metricAggregations
NSString * const kGTLRAnalyticsData_RunRealtimeReportRequest_MetricAggregations_Count = @"COUNT";
NSString * const kGTLRAnalyticsData_RunRealtimeReportRequest_MetricAggregations_Maximum = @"MAXIMUM";
NSString * const kGTLRAnalyticsData_RunRealtimeReportRequest_MetricAggregations_MetricAggregationUnspecified = @"METRIC_AGGREGATION_UNSPECIFIED";
NSString * const kGTLRAnalyticsData_RunRealtimeReportRequest_MetricAggregations_Minimum = @"MINIMUM";
NSString * const kGTLRAnalyticsData_RunRealtimeReportRequest_MetricAggregations_Total = @"TOTAL";

// GTLRAnalyticsData_RunReportRequest.metricAggregations
NSString * const kGTLRAnalyticsData_RunReportRequest_MetricAggregations_Count = @"COUNT";
NSString * const kGTLRAnalyticsData_RunReportRequest_MetricAggregations_Maximum = @"MAXIMUM";
NSString * const kGTLRAnalyticsData_RunReportRequest_MetricAggregations_MetricAggregationUnspecified = @"METRIC_AGGREGATION_UNSPECIFIED";
NSString * const kGTLRAnalyticsData_RunReportRequest_MetricAggregations_Minimum = @"MINIMUM";
NSString * const kGTLRAnalyticsData_RunReportRequest_MetricAggregations_Total = @"TOTAL";

// GTLRAnalyticsData_StringFilter.matchType
NSString * const kGTLRAnalyticsData_StringFilter_MatchType_BeginsWith = @"BEGINS_WITH";
NSString * const kGTLRAnalyticsData_StringFilter_MatchType_Contains = @"CONTAINS";
NSString * const kGTLRAnalyticsData_StringFilter_MatchType_EndsWith = @"ENDS_WITH";
NSString * const kGTLRAnalyticsData_StringFilter_MatchType_Exact = @"EXACT";
NSString * const kGTLRAnalyticsData_StringFilter_MatchType_FullRegexp = @"FULL_REGEXP";
NSString * const kGTLRAnalyticsData_StringFilter_MatchType_MatchTypeUnspecified = @"MATCH_TYPE_UNSPECIFIED";
NSString * const kGTLRAnalyticsData_StringFilter_MatchType_PartialRegexp = @"PARTIAL_REGEXP";

// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_BatchRunPivotReportsRequest
//

@implementation GTLRAnalyticsData_BatchRunPivotReportsRequest
@dynamic requests;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"requests" : [GTLRAnalyticsData_RunPivotReportRequest class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_BatchRunPivotReportsResponse
//

@implementation GTLRAnalyticsData_BatchRunPivotReportsResponse
@dynamic kind, pivotReports;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"pivotReports" : [GTLRAnalyticsData_RunPivotReportResponse class]
  };
  return map;
}

+ (BOOL)isKindValidForClassRegistry {
  // This class has a "kind" property that doesn't appear to be usable to
  // determine what type of object was encoded in the JSON.
  return NO;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_BatchRunReportsRequest
//

@implementation GTLRAnalyticsData_BatchRunReportsRequest
@dynamic requests;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"requests" : [GTLRAnalyticsData_RunReportRequest class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_BatchRunReportsResponse
//

@implementation GTLRAnalyticsData_BatchRunReportsResponse
@dynamic kind, reports;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"reports" : [GTLRAnalyticsData_RunReportResponse class]
  };
  return map;
}

+ (BOOL)isKindValidForClassRegistry {
  // This class has a "kind" property that doesn't appear to be usable to
  // determine what type of object was encoded in the JSON.
  return NO;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_BetweenFilter
//

@implementation GTLRAnalyticsData_BetweenFilter
@dynamic fromValue, toValue;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_CaseExpression
//

@implementation GTLRAnalyticsData_CaseExpression
@dynamic dimensionName;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_Cohort
//

@implementation GTLRAnalyticsData_Cohort
@dynamic dateRange, dimension, name;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_CohortReportSettings
//

@implementation GTLRAnalyticsData_CohortReportSettings
@dynamic accumulate;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_CohortSpec
//

@implementation GTLRAnalyticsData_CohortSpec
@dynamic cohortReportSettings, cohorts, cohortsRange;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"cohorts" : [GTLRAnalyticsData_Cohort class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_CohortsRange
//

@implementation GTLRAnalyticsData_CohortsRange
@dynamic endOffset, granularity, startOffset;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_ConcatenateExpression
//

@implementation GTLRAnalyticsData_ConcatenateExpression
@dynamic delimiter, dimensionNames;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"dimensionNames" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_DateRange
//

@implementation GTLRAnalyticsData_DateRange
@dynamic endDate, name, startDate;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_Dimension
//

@implementation GTLRAnalyticsData_Dimension
@dynamic dimensionExpression, name;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_DimensionExpression
//

@implementation GTLRAnalyticsData_DimensionExpression
@dynamic concatenate, lowerCase, upperCase;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_DimensionHeader
//

@implementation GTLRAnalyticsData_DimensionHeader
@dynamic name;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_DimensionMetadata
//

@implementation GTLRAnalyticsData_DimensionMetadata
@dynamic apiName, customDefinition, deprecatedApiNames, descriptionProperty,
         uiName;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"deprecatedApiNames" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_DimensionOrderBy
//

@implementation GTLRAnalyticsData_DimensionOrderBy
@dynamic dimensionName, orderType;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_DimensionValue
//

@implementation GTLRAnalyticsData_DimensionValue
@dynamic value;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_Filter
//

@implementation GTLRAnalyticsData_Filter
@dynamic betweenFilter, fieldName, inListFilter, numericFilter, stringFilter;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_FilterExpression
//

@implementation GTLRAnalyticsData_FilterExpression
@dynamic andGroup, filter, notExpression, orGroup;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_FilterExpressionList
//

@implementation GTLRAnalyticsData_FilterExpressionList
@dynamic expressions;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"expressions" : [GTLRAnalyticsData_FilterExpression class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_InListFilter
//

@implementation GTLRAnalyticsData_InListFilter
@dynamic caseSensitive, values;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"values" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_Metadata
//

@implementation GTLRAnalyticsData_Metadata
@dynamic dimensions, metrics, name;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"dimensions" : [GTLRAnalyticsData_DimensionMetadata class],
    @"metrics" : [GTLRAnalyticsData_MetricMetadata class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_Metric
//

@implementation GTLRAnalyticsData_Metric
@dynamic expression, invisible, name;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_MetricHeader
//

@implementation GTLRAnalyticsData_MetricHeader
@dynamic name, type;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_MetricMetadata
//

@implementation GTLRAnalyticsData_MetricMetadata
@dynamic apiName, customDefinition, deprecatedApiNames, descriptionProperty,
         expression, type, uiName;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"deprecatedApiNames" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_MetricOrderBy
//

@implementation GTLRAnalyticsData_MetricOrderBy
@dynamic metricName;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_MetricValue
//

@implementation GTLRAnalyticsData_MetricValue
@dynamic value;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_MinuteRange
//

@implementation GTLRAnalyticsData_MinuteRange
@dynamic endMinutesAgo, name, startMinutesAgo;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_NumericFilter
//

@implementation GTLRAnalyticsData_NumericFilter
@dynamic operation, value;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_NumericValue
//

@implementation GTLRAnalyticsData_NumericValue
@dynamic doubleValue, int64Value;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_OrderBy
//

@implementation GTLRAnalyticsData_OrderBy
@dynamic desc, dimension, metric, pivot;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_Pivot
//

@implementation GTLRAnalyticsData_Pivot
@dynamic fieldNames, limit, metricAggregations, offset, orderBys;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"fieldNames" : [NSString class],
    @"metricAggregations" : [NSString class],
    @"orderBys" : [GTLRAnalyticsData_OrderBy class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_PivotDimensionHeader
//

@implementation GTLRAnalyticsData_PivotDimensionHeader
@dynamic dimensionValues;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"dimensionValues" : [GTLRAnalyticsData_DimensionValue class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_PivotHeader
//

@implementation GTLRAnalyticsData_PivotHeader
@dynamic pivotDimensionHeaders, rowCount;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"pivotDimensionHeaders" : [GTLRAnalyticsData_PivotDimensionHeader class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_PivotOrderBy
//

@implementation GTLRAnalyticsData_PivotOrderBy
@dynamic metricName, pivotSelections;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"pivotSelections" : [GTLRAnalyticsData_PivotSelection class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_PivotSelection
//

@implementation GTLRAnalyticsData_PivotSelection
@dynamic dimensionName, dimensionValue;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_PropertyQuota
//

@implementation GTLRAnalyticsData_PropertyQuota
@dynamic concurrentRequests, potentiallyThresholdedRequestsPerHour,
         serverErrorsPerProjectPerHour, tokensPerDay, tokensPerHour;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_QuotaStatus
//

@implementation GTLRAnalyticsData_QuotaStatus
@dynamic consumed, remaining;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_ResponseMetaData
//

@implementation GTLRAnalyticsData_ResponseMetaData
@dynamic dataLossFromOtherRow;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_Row
//

@implementation GTLRAnalyticsData_Row
@dynamic dimensionValues, metricValues;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"dimensionValues" : [GTLRAnalyticsData_DimensionValue class],
    @"metricValues" : [GTLRAnalyticsData_MetricValue class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_RunPivotReportRequest
//

@implementation GTLRAnalyticsData_RunPivotReportRequest
@dynamic cohortSpec, currencyCode, dateRanges, dimensionFilter, dimensions,
         keepEmptyRows, metricFilter, metrics, pivots, property,
         returnPropertyQuota;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"dateRanges" : [GTLRAnalyticsData_DateRange class],
    @"dimensions" : [GTLRAnalyticsData_Dimension class],
    @"metrics" : [GTLRAnalyticsData_Metric class],
    @"pivots" : [GTLRAnalyticsData_Pivot class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_RunPivotReportResponse
//

@implementation GTLRAnalyticsData_RunPivotReportResponse
@dynamic aggregates, dimensionHeaders, kind, metadata, metricHeaders,
         pivotHeaders, propertyQuota, rows;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"aggregates" : [GTLRAnalyticsData_Row class],
    @"dimensionHeaders" : [GTLRAnalyticsData_DimensionHeader class],
    @"metricHeaders" : [GTLRAnalyticsData_MetricHeader class],
    @"pivotHeaders" : [GTLRAnalyticsData_PivotHeader class],
    @"rows" : [GTLRAnalyticsData_Row class]
  };
  return map;
}

+ (BOOL)isKindValidForClassRegistry {
  // This class has a "kind" property that doesn't appear to be usable to
  // determine what type of object was encoded in the JSON.
  return NO;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_RunRealtimeReportRequest
//

@implementation GTLRAnalyticsData_RunRealtimeReportRequest
@dynamic dimensionFilter, dimensions, limit, metricAggregations, metricFilter,
         metrics, minuteRanges, orderBys, returnPropertyQuota;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"dimensions" : [GTLRAnalyticsData_Dimension class],
    @"metricAggregations" : [NSString class],
    @"metrics" : [GTLRAnalyticsData_Metric class],
    @"minuteRanges" : [GTLRAnalyticsData_MinuteRange class],
    @"orderBys" : [GTLRAnalyticsData_OrderBy class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_RunRealtimeReportResponse
//

@implementation GTLRAnalyticsData_RunRealtimeReportResponse
@dynamic dimensionHeaders, kind, maximums, metricHeaders, minimums,
         propertyQuota, rowCount, rows, totals;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"dimensionHeaders" : [GTLRAnalyticsData_DimensionHeader class],
    @"maximums" : [GTLRAnalyticsData_Row class],
    @"metricHeaders" : [GTLRAnalyticsData_MetricHeader class],
    @"minimums" : [GTLRAnalyticsData_Row class],
    @"rows" : [GTLRAnalyticsData_Row class],
    @"totals" : [GTLRAnalyticsData_Row class]
  };
  return map;
}

+ (BOOL)isKindValidForClassRegistry {
  // This class has a "kind" property that doesn't appear to be usable to
  // determine what type of object was encoded in the JSON.
  return NO;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_RunReportRequest
//

@implementation GTLRAnalyticsData_RunReportRequest
@dynamic cohortSpec, currencyCode, dateRanges, dimensionFilter, dimensions,
         keepEmptyRows, limit, metricAggregations, metricFilter, metrics,
         offset, orderBys, property, returnPropertyQuota;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"dateRanges" : [GTLRAnalyticsData_DateRange class],
    @"dimensions" : [GTLRAnalyticsData_Dimension class],
    @"metricAggregations" : [NSString class],
    @"metrics" : [GTLRAnalyticsData_Metric class],
    @"orderBys" : [GTLRAnalyticsData_OrderBy class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_RunReportResponse
//

@implementation GTLRAnalyticsData_RunReportResponse
@dynamic dimensionHeaders, kind, maximums, metadata, metricHeaders, minimums,
         propertyQuota, rowCount, rows, totals;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"dimensionHeaders" : [GTLRAnalyticsData_DimensionHeader class],
    @"maximums" : [GTLRAnalyticsData_Row class],
    @"metricHeaders" : [GTLRAnalyticsData_MetricHeader class],
    @"minimums" : [GTLRAnalyticsData_Row class],
    @"rows" : [GTLRAnalyticsData_Row class],
    @"totals" : [GTLRAnalyticsData_Row class]
  };
  return map;
}

+ (BOOL)isKindValidForClassRegistry {
  // This class has a "kind" property that doesn't appear to be usable to
  // determine what type of object was encoded in the JSON.
  return NO;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAnalyticsData_StringFilter
//

@implementation GTLRAnalyticsData_StringFilter
@dynamic caseSensitive, matchType, value;
@end
