// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Storage Transfer API (storagetransfer/v1)
// Description:
//   Transfers data from external data sources to a Google Cloud Storage bucket
//   or between Google Cloud Storage buckets.
// Documentation:
//   https://cloud.google.com/storage-transfer/docs

#import "GTLRStorageTransferQuery.h"

#import "GTLRStorageTransferObjects.h"

@implementation GTLRStorageTransferQuery

@dynamic fields;

@end

@implementation GTLRStorageTransferQuery_GoogleServiceAccountsGet

@dynamic projectId;

+ (instancetype)queryWithProjectId:(NSString *)projectId {
  NSArray *pathParams = @[ @"projectId" ];
  NSString *pathURITemplate = @"v1/googleServiceAccounts/{projectId}";
  GTLRStorageTransferQuery_GoogleServiceAccountsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.projectId = projectId;
  query.expectedObjectClass = [GTLRStorageTransfer_GoogleServiceAccount class];
  query.loggingName = @"storagetransfer.googleServiceAccounts.get";
  return query;
}

@end

@implementation GTLRStorageTransferQuery_TransferJobsCreate

+ (instancetype)queryWithObject:(GTLRStorageTransfer_TransferJob *)object {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSString *pathURITemplate = @"v1/transferJobs";
  GTLRStorageTransferQuery_TransferJobsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:nil];
  query.bodyObject = object;
  query.expectedObjectClass = [GTLRStorageTransfer_TransferJob class];
  query.loggingName = @"storagetransfer.transferJobs.create";
  return query;
}

@end

@implementation GTLRStorageTransferQuery_TransferJobsGet

@dynamic jobName, projectId;

+ (instancetype)queryWithJobName:(NSString *)jobName {
  NSArray *pathParams = @[ @"jobName" ];
  NSString *pathURITemplate = @"v1/{+jobName}";
  GTLRStorageTransferQuery_TransferJobsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.jobName = jobName;
  query.expectedObjectClass = [GTLRStorageTransfer_TransferJob class];
  query.loggingName = @"storagetransfer.transferJobs.get";
  return query;
}

@end

@implementation GTLRStorageTransferQuery_TransferJobsList

@dynamic filter, pageSize, pageToken;

+ (instancetype)query {
  NSString *pathURITemplate = @"v1/transferJobs";
  GTLRStorageTransferQuery_TransferJobsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:nil];
  query.expectedObjectClass = [GTLRStorageTransfer_ListTransferJobsResponse class];
  query.loggingName = @"storagetransfer.transferJobs.list";
  return query;
}

@end

@implementation GTLRStorageTransferQuery_TransferJobsPatch

@dynamic jobName;

+ (instancetype)queryWithObject:(GTLRStorageTransfer_UpdateTransferJobRequest *)object
                        jobName:(NSString *)jobName {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"jobName" ];
  NSString *pathURITemplate = @"v1/{+jobName}";
  GTLRStorageTransferQuery_TransferJobsPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.jobName = jobName;
  query.expectedObjectClass = [GTLRStorageTransfer_TransferJob class];
  query.loggingName = @"storagetransfer.transferJobs.patch";
  return query;
}

@end

@implementation GTLRStorageTransferQuery_TransferOperationsCancel

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}:cancel";
  GTLRStorageTransferQuery_TransferOperationsCancel *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRStorageTransfer_Empty class];
  query.loggingName = @"storagetransfer.transferOperations.cancel";
  return query;
}

@end

@implementation GTLRStorageTransferQuery_TransferOperationsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRStorageTransferQuery_TransferOperationsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRStorageTransfer_Operation class];
  query.loggingName = @"storagetransfer.transferOperations.get";
  return query;
}

@end

@implementation GTLRStorageTransferQuery_TransferOperationsList

@dynamic filter, name, pageSize, pageToken;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRStorageTransferQuery_TransferOperationsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRStorageTransfer_ListOperationsResponse class];
  query.loggingName = @"storagetransfer.transferOperations.list";
  return query;
}

@end

@implementation GTLRStorageTransferQuery_TransferOperationsPause

@dynamic name;

+ (instancetype)queryWithObject:(GTLRStorageTransfer_PauseTransferOperationRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}:pause";
  GTLRStorageTransferQuery_TransferOperationsPause *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRStorageTransfer_Empty class];
  query.loggingName = @"storagetransfer.transferOperations.pause";
  return query;
}

@end

@implementation GTLRStorageTransferQuery_TransferOperationsResume

@dynamic name;

+ (instancetype)queryWithObject:(GTLRStorageTransfer_ResumeTransferOperationRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}:resume";
  GTLRStorageTransferQuery_TransferOperationsResume *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRStorageTransfer_Empty class];
  query.loggingName = @"storagetransfer.transferOperations.resume";
  return query;
}

@end
