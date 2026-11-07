.class Lcom/qiniu/android/storage/PartsUploadPerformerV2$1;
.super Ljava/lang/Object;
.source "PartsUploadPerformerV2.java"

# interfaces
.implements Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/PartsUploadPerformerV2;->serverInit(Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV2;

.field final synthetic val$completeHandler:Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;

.field final synthetic val$info:Lcom/qiniu/android/storage/UploadInfoV2;

.field final synthetic val$transaction:Lcom/qiniu/android/http/request/RequestTransaction;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/PartsUploadPerformerV2;Lcom/qiniu/android/http/request/RequestTransaction;Lcom/qiniu/android/storage/UploadInfoV2;Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$1;->this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV2;

    iput-object p2, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$1;->val$transaction:Lcom/qiniu/android/http/request/RequestTransaction;

    iput-object p3, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$1;->val$info:Lcom/qiniu/android/storage/UploadInfoV2;

    iput-object p4, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$1;->val$completeHandler:Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;)V
    .locals 5

    .line 56
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$1;->this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV2;

    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$1;->val$transaction:Lcom/qiniu/android/http/request/RequestTransaction;

    invoke-virtual {v0, v1}, Lcom/qiniu/android/storage/PartsUploadPerformerV2;->destroyUploadRequestTransaction(Lcom/qiniu/android/http/request/RequestTransaction;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 62
    :try_start_0
    const-string/jumbo v1, "uploadId"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    :try_start_1
    const-string v2, "expireAt"

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
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    :cond_0
    move-object v1, v0

    .line 67
    :goto_1
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 68
    iget-object v2, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$1;->val$info:Lcom/qiniu/android/storage/UploadInfoV2;

    iput-object v0, v2, Lcom/qiniu/android/storage/UploadInfoV2;->uploadId:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$1;->val$info:Lcom/qiniu/android/storage/UploadInfoV2;

    iput-object v1, v0, Lcom/qiniu/android/storage/UploadInfoV2;->expireAt:Ljava/lang/Long;

    .line 70
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$1;->this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV2;

    invoke-virtual {v0}, Lcom/qiniu/android/storage/PartsUploadPerformerV2;->recordUploadInfo()V

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$1;->val$completeHandler:Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;)V

    return-void
.end method
