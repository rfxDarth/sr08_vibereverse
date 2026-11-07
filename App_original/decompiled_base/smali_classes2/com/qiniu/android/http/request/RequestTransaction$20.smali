.class Lcom/qiniu/android/http/request/RequestTransaction$20;
.super Ljava/lang/Object;
.source "RequestTransaction.java"

# interfaces
.implements Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/request/RequestTransaction;->serverConfig(ZLcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/http/request/RequestTransaction;

.field final synthetic val$completeHandler:Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/request/RequestTransaction;Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V
    .locals 0

    .line 673
    iput-object p1, p0, Lcom/qiniu/android/http/request/RequestTransaction$20;->this$0:Lcom/qiniu/android/http/request/RequestTransaction;

    iput-object p2, p0, Lcom/qiniu/android/http/request/RequestTransaction$20;->val$completeHandler:Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;)V
    .locals 2

    .line 676
    iget-object v0, p0, Lcom/qiniu/android/http/request/RequestTransaction$20;->this$0:Lcom/qiniu/android/http/request/RequestTransaction;

    iget-object v1, p0, Lcom/qiniu/android/http/request/RequestTransaction$20;->val$completeHandler:Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;

    invoke-static {v0, p1, p2, p3, v1}, Lcom/qiniu/android/http/request/RequestTransaction;->access$000(Lcom/qiniu/android/http/request/RequestTransaction;Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V

    return-void
.end method
