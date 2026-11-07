.class Lcom/qiniu/android/storage/BaseUpload$1;
.super Ljava/lang/Object;
.source "BaseUpload.java"

# interfaces
.implements Lcom/qiniu/android/common/Zone$QueryHandlerV2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/BaseUpload;->innerRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/storage/BaseUpload;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/BaseUpload;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/qiniu/android/storage/BaseUpload$1;->this$0:Lcom/qiniu/android/storage/BaseUpload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lcom/qiniu/android/common/ZonesInfo;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload$1;->this$0:Lcom/qiniu/android/storage/BaseUpload;

    invoke-static {v0}, Lcom/qiniu/android/storage/BaseUpload;->access$000(Lcom/qiniu/android/storage/BaseUpload;)Lcom/qiniu/android/http/metrics/UploadTaskMetrics;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;->setUcQueryMetrics(Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;)V

    if-eqz p1, :cond_2

    .line 105
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 106
    iget-object p2, p0, Lcom/qiniu/android/storage/BaseUpload$1;->this$0:Lcom/qiniu/android/storage/BaseUpload;

    invoke-static {p2, p3}, Lcom/qiniu/android/storage/BaseUpload;->access$100(Lcom/qiniu/android/storage/BaseUpload;Lcom/qiniu/android/common/ZonesInfo;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 107
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "setup regions host fail, origin response:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qiniu/android/http/ResponseInfo;->invalidArgument(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p1

    .line 108
    iget-object p2, p0, Lcom/qiniu/android/storage/BaseUpload$1;->this$0:Lcom/qiniu/android/storage/BaseUpload;

    iget-object p3, p1, Lcom/qiniu/android/http/ResponseInfo;->response:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, p3}, Lcom/qiniu/android/storage/BaseUpload;->completeAction(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    return-void

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/qiniu/android/storage/BaseUpload$1;->this$0:Lcom/qiniu/android/storage/BaseUpload;

    invoke-virtual {p1}, Lcom/qiniu/android/storage/BaseUpload;->prepareToUpload()I

    move-result p1

    if-nez p1, :cond_1

    .line 114
    iget-object p1, p0, Lcom/qiniu/android/storage/BaseUpload$1;->this$0:Lcom/qiniu/android/storage/BaseUpload;

    invoke-virtual {p1}, Lcom/qiniu/android/storage/BaseUpload;->startToUpload()V

    return-void

    :cond_1
    const/4 p2, 0x0

    .line 116
    invoke-static {p1, p2}, Lcom/qiniu/android/http/ResponseInfo;->errorInfo(ILjava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p1

    .line 117
    iget-object p3, p0, Lcom/qiniu/android/storage/BaseUpload$1;->this$0:Lcom/qiniu/android/storage/BaseUpload;

    invoke-virtual {p3, p1, p2}, Lcom/qiniu/android/storage/BaseUpload;->completeAction(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    return-void

    :cond_2
    if-nez p1, :cond_3

    .line 122
    const-string p1, "can\'t get regions"

    invoke-static {p1}, Lcom/qiniu/android/http/ResponseInfo;->sdkInteriorError(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p1

    .line 124
    :cond_3
    iget-object p2, p0, Lcom/qiniu/android/storage/BaseUpload$1;->this$0:Lcom/qiniu/android/storage/BaseUpload;

    iget-object p3, p1, Lcom/qiniu/android/http/ResponseInfo;->response:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, p3}, Lcom/qiniu/android/storage/BaseUpload;->completeAction(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    return-void
.end method
