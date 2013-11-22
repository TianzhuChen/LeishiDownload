//
//  MultiDownload.m
//  LeishiDownload
//
//  Created by Iwinad_CTZ on 11/21/13.
//  Copyright (c) 2013 Iwinad. All rights reserved.
//

#import "MultiDownload.h"
@interface MultiDownload()
{
    NSNotificationCenter *downloadNotification;
    NSMutableArray *downloadFiles;
    ASINetworkQueue *downloadQueue;
}
@end

@implementation MultiDownload
#pragma mark LiefCycle
+(MultiDownload *)sharedInstance
{
    static dispatch_once_t onceToken;
    static MultiDownload *instance;
    dispatch_once(&onceToken, ^{
        instance=[[MultiDownload alloc] init];
    });
    return instance;
}
-(id)init
{
    self=[super init];
    if(self)
    {
        downloadFiles=[[NSMutableArray alloc] init];
        downloadNotification=[[NSNotificationCenter alloc] init];
        
        downloadQueue=[[ASINetworkQueue alloc] init];
        [downloadQueue setDownloadProgressDelegate:self];
        [downloadQueue setRequestDidFinishSelector:@selector(queueFinished:)];
        [downloadQueue setRequestDidStartSelector:@selector(queueStart:)];
    }
    return self;
}
-(void)dealloc
{
    
}
#pragma mark Download File
-(void)addDownloadFile:(DownloadFile *)file
{
    
}
-(void)addDownloadFiles:(NSArray *)files
{
    
}
-(void)cancleDownload
{
    
}
#pragma mark Add Notification
-(void)addNotification:(NSString *)notificationName
              selector:(SEL)selector
              delegate:(id)delegate
{
    
}
-(void)removeAllNotifications
{
    
}
#pragma mark ASINetworkQueue
-(void)queueStart:(ASINetworkQueue *)queue
{
    
}
-(void)queueFinished:(ASINetworkQueue *)queue
{
    
}
@end
