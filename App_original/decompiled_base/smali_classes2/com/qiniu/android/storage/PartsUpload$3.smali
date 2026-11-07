.class Lcom/qiniu/android/storage/PartsUpload$3;
.super Ljava/lang/Object;
.source "PartsUpload.java"

# interfaces
.implements Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/PartsUpload;->serverInit(Lcom/qiniu/android/storage/PartsUpload$UploadFileCompleteHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/storage/PartsUpload;

.field final synthetic val$completeHandler:Lcom/qiniu/android/storage/PartsUpload$UploadFileCompleteHandler;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/PartsUpload;Lcom/qiniu/android/storage/PartsUpload$UploadFileCompleteHandler;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/qiniu/android/storage/PartsUpload$3;->this$0:Lcom/qiniu/android/storage/PartsUpload;

    iput-object p2, p0, Lcom/qiniu/android/storage/PartsUpload$3;->val$completeHandler:Lcom/qiniu/android/storage/PartsUpload$UploadFileCompleteHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 216
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUpload$3;->this$0:Lcom/qiniu/android/storage/PartsUpload;

    invoke-static {v0, p1, p3}, Lcom/qiniu/android/storage/PartsUpload;->access$200(Lcom/qiniu/android/storage/PartsUpload;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUpload$3;->this$0:Lcom/qiniu/android/storage/PartsUpload;

    invoke-virtual {v0, p2}, Lcom/qiniu/android/storage/PartsUpload;->addRegionRequestMetricsOfOneFlow(Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;)V

    .line 220
    iget-object p2, p0, Lcom/qiniu/android/storage/PartsUpload$3;->val$completeHandler:Lcom/qiniu/android/storage/PartsUpload$UploadFileCompleteHandler;

    invoke-interface {p2, p1, p3}, Lcom/qiniu/android/storage/PartsUpload$UploadFileCompleteHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    return-void
.end method
