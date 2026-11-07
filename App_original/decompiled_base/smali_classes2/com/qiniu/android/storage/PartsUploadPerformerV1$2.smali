.class Lcom/qiniu/android/storage/PartsUploadPerformerV1$2;
.super Ljava/lang/Object;
.source "PartsUploadPerformerV1.java"

# interfaces
.implements Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/PartsUploadPerformerV1;->uploadNextData(Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV1;

.field final synthetic val$completeHandler:Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;

.field final synthetic val$uploadBlock:Lcom/qiniu/android/storage/UploadBlock;

.field final synthetic val$uploadChunk:Lcom/qiniu/android/storage/UploadData;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/PartsUploadPerformerV1;Lcom/qiniu/android/storage/UploadBlock;Lcom/qiniu/android/storage/UploadData;Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$2;->this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV1;

    iput-object p2, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$2;->val$uploadBlock:Lcom/qiniu/android/storage/UploadBlock;

    iput-object p3, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$2;->val$uploadChunk:Lcom/qiniu/android/storage/UploadData;

    iput-object p4, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$2;->val$completeHandler:Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 105
    :try_start_0
    const-string v1, "ctx"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    :try_start_1
    const-string v2, "expired_at"

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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
    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    :cond_0
    move-object v1, v0

    .line 110
    :goto_1
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 111
    iget-object v2, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$2;->this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV1;

    iget-object v2, v2, Lcom/qiniu/android/storage/PartsUploadPerformerV1;->uploadSource:Lcom/qiniu/android/storage/UploadSource;

    monitor-enter v2

    .line 112
    :try_start_2
    iget-object v4, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$2;->val$uploadBlock:Lcom/qiniu/android/storage/UploadBlock;

    iput-object v0, v4, Lcom/qiniu/android/storage/UploadBlock;->ctx:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$2;->val$uploadBlock:Lcom/qiniu/android/storage/UploadBlock;

    iput-object v1, v0, Lcom/qiniu/android/storage/UploadBlock;->expireAt:Ljava/lang/Long;

    .line 114
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$2;->val$uploadChunk:Lcom/qiniu/android/storage/UploadData;

    sget-object v1, Lcom/qiniu/android/storage/UploadData$State;->Complete:Lcom/qiniu/android/storage/UploadData$State;

    invoke-virtual {v0, v1}, Lcom/qiniu/android/storage/UploadData;->updateState(Lcom/qiniu/android/storage/UploadData$State;)V

    .line 115
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$2;->this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV1;

    invoke-virtual {v0}, Lcom/qiniu/android/storage/PartsUploadPerformerV1;->recordUploadInfo()V

    .line 117
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$2;->this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV1;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qiniu/android/storage/PartsUploadPerformerV1;->notifyProgress(Ljava/lang/Boolean;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 115
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$2;->this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV1;

    iget-object v0, v0, Lcom/qiniu/android/storage/PartsUploadPerformerV1;->uploadSource:Lcom/qiniu/android/storage/UploadSource;

    monitor-enter v0

    .line 120
    :try_start_4
    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$2;->val$uploadChunk:Lcom/qiniu/android/storage/UploadData;

    sget-object v2, Lcom/qiniu/android/storage/UploadData$State;->WaitToUpload:Lcom/qiniu/android/storage/UploadData$State;

    invoke-virtual {v1, v2}, Lcom/qiniu/android/storage/UploadData;->updateState(Lcom/qiniu/android/storage/UploadData$State;)V

    .line 121
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 123
    :goto_2
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$2;->val$completeHandler:Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;

    invoke-interface {v0, v3, p1, p2, p3}, Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;->complete(ZLcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;)V

    return-void

    :catchall_1
    move-exception p1

    .line 121
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method
