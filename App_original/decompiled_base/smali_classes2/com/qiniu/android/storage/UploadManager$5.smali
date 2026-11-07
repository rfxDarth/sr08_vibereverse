.class Lcom/qiniu/android/storage/UploadManager$5;
.super Ljava/lang/Object;
.source "UploadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/UploadManager;->completeAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/metrics/UploadTaskMetrics;Lcom/qiniu/android/storage/UpCompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/storage/UploadManager;

.field final synthetic val$completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$response:Lorg/json/JSONObject;

.field final synthetic val$responseInfo:Lcom/qiniu/android/http/ResponseInfo;

.field final synthetic val$wait:Lcom/qiniu/android/utils/Wait;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/UploadManager;Lcom/qiniu/android/storage/UpCompletionHandler;Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/utils/Wait;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/qiniu/android/storage/UploadManager$5;->this$0:Lcom/qiniu/android/storage/UploadManager;

    iput-object p2, p0, Lcom/qiniu/android/storage/UploadManager$5;->val$completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

    iput-object p3, p0, Lcom/qiniu/android/storage/UploadManager$5;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/qiniu/android/storage/UploadManager$5;->val$responseInfo:Lcom/qiniu/android/http/ResponseInfo;

    iput-object p5, p0, Lcom/qiniu/android/storage/UploadManager$5;->val$response:Lorg/json/JSONObject;

    iput-object p6, p0, Lcom/qiniu/android/storage/UploadManager$5;->val$wait:Lcom/qiniu/android/utils/Wait;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 484
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadManager$5;->val$completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

    iget-object v1, p0, Lcom/qiniu/android/storage/UploadManager$5;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/qiniu/android/storage/UploadManager$5;->val$responseInfo:Lcom/qiniu/android/http/ResponseInfo;

    iget-object v3, p0, Lcom/qiniu/android/storage/UploadManager$5;->val$response:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2, v3}, Lcom/qiniu/android/storage/UpCompletionHandler;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    .line 485
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadManager$5;->val$wait:Lcom/qiniu/android/utils/Wait;

    invoke-virtual {v0}, Lcom/qiniu/android/utils/Wait;->stopWait()V

    return-void
.end method
