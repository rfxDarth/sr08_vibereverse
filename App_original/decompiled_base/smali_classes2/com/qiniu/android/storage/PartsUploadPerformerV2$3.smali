.class Lcom/qiniu/android/storage/PartsUploadPerformerV2$3;
.super Ljava/lang/Object;
.source "PartsUploadPerformerV2.java"

# interfaces
.implements Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/PartsUploadPerformerV2;->uploadNextData(Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV2;

.field final synthetic val$completeHandler:Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;

.field final synthetic val$transaction:Lcom/qiniu/android/http/request/RequestTransaction;

.field final synthetic val$uploadData:Lcom/qiniu/android/storage/UploadData;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/PartsUploadPerformerV2;Lcom/qiniu/android/http/request/RequestTransaction;Lcom/qiniu/android/storage/UploadData;Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$3;->this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV2;

    iput-object p2, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$3;->val$transaction:Lcom/qiniu/android/http/request/RequestTransaction;

    iput-object p3, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$3;->val$uploadData:Lcom/qiniu/android/storage/UploadData;

    iput-object p4, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$3;->val$completeHandler:Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;)V
    .locals 5

    .line 125
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$3;->this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV2;

    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$3;->val$transaction:Lcom/qiniu/android/http/request/RequestTransaction;

    invoke-virtual {v0, v1}, Lcom/qiniu/android/storage/PartsUploadPerformerV2;->destroyUploadRequestTransaction(Lcom/qiniu/android/http/request/RequestTransaction;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 131
    :try_start_0
    const-string v1, "etag"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    :try_start_1
    const-string v2, "md5"

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :catch_1
    nop

    move-object v1, v0

    :goto_0
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    :cond_0
    move-object v1, v0

    .line 136
    :goto_1
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$3;->this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV2;

    iget-object v1, v1, Lcom/qiniu/android/storage/PartsUploadPerformerV2;->uploadSource:Lcom/qiniu/android/storage/UploadSource;

    monitor-enter v1

    .line 138
    :try_start_2
    iget-object v2, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$3;->val$uploadData:Lcom/qiniu/android/storage/UploadData;

    iput-object v0, v2, Lcom/qiniu/android/storage/UploadData;->etag:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$3;->val$uploadData:Lcom/qiniu/android/storage/UploadData;

    sget-object v2, Lcom/qiniu/android/storage/UploadData$State;->Complete:Lcom/qiniu/android/storage/UploadData$State;

    invoke-virtual {v0, v2}, Lcom/qiniu/android/storage/UploadData;->updateState(Lcom/qiniu/android/storage/UploadData$State;)V

    .line 140
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$3;->this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV2;

    invoke-virtual {v0}, Lcom/qiniu/android/storage/PartsUploadPerformerV2;->recordUploadInfo()V

    .line 142
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$3;->this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV2;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qiniu/android/storage/PartsUploadPerformerV2;->notifyProgress(Ljava/lang/Boolean;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 140
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$3;->this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV2;

    iget-object v0, v0, Lcom/qiniu/android/storage/PartsUploadPerformerV2;->uploadSource:Lcom/qiniu/android/storage/UploadSource;

    monitor-enter v0

    .line 145
    :try_start_4
    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$3;->val$uploadData:Lcom/qiniu/android/storage/UploadData;

    sget-object v2, Lcom/qiniu/android/storage/UploadData$State;->WaitToUpload:Lcom/qiniu/android/storage/UploadData$State;

    invoke-virtual {v1, v2}, Lcom/qiniu/android/storage/UploadData;->updateState(Lcom/qiniu/android/storage/UploadData$State;)V

    .line 146
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 148
    :goto_2
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$3;->val$completeHandler:Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;

    invoke-interface {v0, v3, p1, p2, p3}, Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;->complete(ZLcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;)V

    return-void

    :catchall_1
    move-exception p1

    .line 146
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method
