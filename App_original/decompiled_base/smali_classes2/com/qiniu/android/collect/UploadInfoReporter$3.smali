.class Lcom/qiniu/android/collect/UploadInfoReporter$3;
.super Ljava/lang/Object;
.source "UploadInfoReporter.java"

# interfaces
.implements Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/collect/UploadInfoReporter;->reportToServer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/collect/UploadInfoReporter;


# direct methods
.method constructor <init>(Lcom/qiniu/android/collect/UploadInfoReporter;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/qiniu/android/collect/UploadInfoReporter$3;->this$0:Lcom/qiniu/android/collect/UploadInfoReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;)V
    .locals 2

    .line 226
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 227
    iget-object p2, p0, Lcom/qiniu/android/collect/UploadInfoReporter$3;->this$0:Lcom/qiniu/android/collect/UploadInfoReporter;

    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/qiniu/android/collect/UploadInfoReporter;->access$202(Lcom/qiniu/android/collect/UploadInfoReporter;J)J

    .line 228
    iget-object p2, p0, Lcom/qiniu/android/collect/UploadInfoReporter$3;->this$0:Lcom/qiniu/android/collect/UploadInfoReporter;

    invoke-static {p2}, Lcom/qiniu/android/collect/UploadInfoReporter;->access$300(Lcom/qiniu/android/collect/UploadInfoReporter;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p2, p1, Lcom/qiniu/android/http/ResponseInfo;->responseHeader:Ljava/util/Map;

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/qiniu/android/http/ResponseInfo;->responseHeader:Ljava/util/Map;

    .line 230
    const-string/jumbo p3, "x-log-client-id"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 231
    iget-object p2, p0, Lcom/qiniu/android/collect/UploadInfoReporter$3;->this$0:Lcom/qiniu/android/collect/UploadInfoReporter;

    iget-object p1, p1, Lcom/qiniu/android/http/ResponseInfo;->responseHeader:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/qiniu/android/collect/UploadInfoReporter;->access$302(Lcom/qiniu/android/collect/UploadInfoReporter;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/qiniu/android/collect/UploadInfoReporter$3;->this$0:Lcom/qiniu/android/collect/UploadInfoReporter;

    invoke-static {p1}, Lcom/qiniu/android/collect/UploadInfoReporter;->access$400(Lcom/qiniu/android/collect/UploadInfoReporter;)V

    .line 236
    :cond_1
    iget-object p1, p0, Lcom/qiniu/android/collect/UploadInfoReporter$3;->this$0:Lcom/qiniu/android/collect/UploadInfoReporter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/qiniu/android/collect/UploadInfoReporter;->access$502(Lcom/qiniu/android/collect/UploadInfoReporter;Z)Z

    .line 237
    iget-object p1, p0, Lcom/qiniu/android/collect/UploadInfoReporter$3;->this$0:Lcom/qiniu/android/collect/UploadInfoReporter;

    invoke-static {p1}, Lcom/qiniu/android/collect/UploadInfoReporter;->access$600(Lcom/qiniu/android/collect/UploadInfoReporter;)V

    return-void
.end method
