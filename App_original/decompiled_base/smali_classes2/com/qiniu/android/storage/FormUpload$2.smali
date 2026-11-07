.class Lcom/qiniu/android/storage/FormUpload$2;
.super Ljava/lang/Object;
.source "FormUpload.java"

# interfaces
.implements Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/FormUpload;->startToUpload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/storage/FormUpload;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/FormUpload;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/qiniu/android/storage/FormUpload$2;->this$0:Lcom/qiniu/android/storage/FormUpload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;)V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/qiniu/android/storage/FormUpload$2;->this$0:Lcom/qiniu/android/storage/FormUpload;

    invoke-virtual {v0, p2}, Lcom/qiniu/android/storage/FormUpload;->addRegionRequestMetricsOfOneFlow(Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;)V

    .line 48
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result p2

    if-nez p2, :cond_1

    .line 49
    iget-object p2, p0, Lcom/qiniu/android/storage/FormUpload$2;->this$0:Lcom/qiniu/android/storage/FormUpload;

    invoke-virtual {p2, p1}, Lcom/qiniu/android/storage/FormUpload;->switchRegionAndUploadIfNeededWithErrorResponse(Lcom/qiniu/android/http/ResponseInfo;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 50
    iget-object p2, p0, Lcom/qiniu/android/storage/FormUpload$2;->this$0:Lcom/qiniu/android/storage/FormUpload;

    invoke-virtual {p2, p1, p3}, Lcom/qiniu/android/storage/FormUpload;->completeAction(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    :cond_0
    return-void

    .line 55
    :cond_1
    iget-object p2, p0, Lcom/qiniu/android/storage/FormUpload$2;->this$0:Lcom/qiniu/android/storage/FormUpload;

    invoke-static {p2}, Lcom/qiniu/android/storage/FormUpload;->access$000(Lcom/qiniu/android/storage/FormUpload;)Lcom/qiniu/android/storage/UpProgress;

    move-result-object p2

    iget-object v0, p0, Lcom/qiniu/android/storage/FormUpload$2;->this$0:Lcom/qiniu/android/storage/FormUpload;

    iget-object v0, v0, Lcom/qiniu/android/storage/FormUpload;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/qiniu/android/storage/FormUpload$2;->this$0:Lcom/qiniu/android/storage/FormUpload;

    iget-object v1, v1, Lcom/qiniu/android/storage/FormUpload;->data:[B

    array-length v1, v1

    int-to-long v1, v1

    invoke-virtual {p2, v0, v1, v2}, Lcom/qiniu/android/storage/UpProgress;->notifyDone(Ljava/lang/String;J)V

    .line 56
    iget-object p2, p0, Lcom/qiniu/android/storage/FormUpload$2;->this$0:Lcom/qiniu/android/storage/FormUpload;

    invoke-virtual {p2, p1, p3}, Lcom/qiniu/android/storage/FormUpload;->completeAction(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    return-void
.end method
