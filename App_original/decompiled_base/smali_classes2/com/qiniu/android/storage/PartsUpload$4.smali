.class Lcom/qiniu/android/storage/PartsUpload$4;
.super Ljava/lang/Object;
.source "PartsUpload.java"

# interfaces
.implements Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/PartsUpload;->uploadNextData(Lcom/qiniu/android/storage/PartsUpload$UploadFileDataCompleteHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/storage/PartsUpload;

.field final synthetic val$completeHandler:Lcom/qiniu/android/storage/PartsUpload$UploadFileDataCompleteHandler;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/PartsUpload;Lcom/qiniu/android/storage/PartsUpload$UploadFileDataCompleteHandler;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/qiniu/android/storage/PartsUpload$4;->this$0:Lcom/qiniu/android/storage/PartsUpload;

    iput-object p2, p0, Lcom/qiniu/android/storage/PartsUpload$4;->val$completeHandler:Lcom/qiniu/android/storage/PartsUpload$UploadFileDataCompleteHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(ZLcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 230
    invoke-virtual {p2}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUpload$4;->this$0:Lcom/qiniu/android/storage/PartsUpload;

    invoke-static {v0, p2, p4}, Lcom/qiniu/android/storage/PartsUpload;->access$200(Lcom/qiniu/android/storage/PartsUpload;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUpload$4;->this$0:Lcom/qiniu/android/storage/PartsUpload;

    invoke-virtual {v0, p3}, Lcom/qiniu/android/storage/PartsUpload;->addRegionRequestMetricsOfOneFlow(Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;)V

    .line 234
    iget-object p3, p0, Lcom/qiniu/android/storage/PartsUpload$4;->val$completeHandler:Lcom/qiniu/android/storage/PartsUpload$UploadFileDataCompleteHandler;

    invoke-interface {p3, p1, p2, p4}, Lcom/qiniu/android/storage/PartsUpload$UploadFileDataCompleteHandler;->complete(ZLcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    return-void
.end method
