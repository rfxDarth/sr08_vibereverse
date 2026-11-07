.class Lcom/qiniu/android/storage/UploadManager$4;
.super Ljava/lang/Object;
.source "UploadManager.java"

# interfaces
.implements Lcom/qiniu/android/storage/BaseUpload$UpTaskCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/UploadManager;->putSource(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/UpCompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/storage/UploadManager;

.field final synthetic val$completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

.field final synthetic val$source:Lcom/qiniu/android/storage/UploadSource;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/UploadManager;Ljava/lang/String;Lcom/qiniu/android/storage/UploadSource;Lcom/qiniu/android/storage/UpCompletionHandler;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/qiniu/android/storage/UploadManager$4;->this$0:Lcom/qiniu/android/storage/UploadManager;

    iput-object p2, p0, Lcom/qiniu/android/storage/UploadManager$4;->val$token:Ljava/lang/String;

    iput-object p3, p0, Lcom/qiniu/android/storage/UploadManager$4;->val$source:Lcom/qiniu/android/storage/UploadSource;

    iput-object p4, p0, Lcom/qiniu/android/storage/UploadManager$4;->val$completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/ResponseInfo;Ljava/lang/String;Lcom/qiniu/android/http/metrics/UploadTaskMetrics;Lorg/json/JSONObject;)V
    .locals 8

    .line 430
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadManager$4;->this$0:Lcom/qiniu/android/storage/UploadManager;

    iget-object v1, p0, Lcom/qiniu/android/storage/UploadManager$4;->val$token:Ljava/lang/String;

    iget-object v3, p0, Lcom/qiniu/android/storage/UploadManager$4;->val$source:Lcom/qiniu/android/storage/UploadSource;

    iget-object v7, p0, Lcom/qiniu/android/storage/UploadManager$4;->val$completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

    move-object v4, p1

    move-object v2, p2

    move-object v6, p3

    move-object v5, p4

    invoke-static/range {v0 .. v7}, Lcom/qiniu/android/storage/UploadManager;->access$000(Lcom/qiniu/android/storage/UploadManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/metrics/UploadTaskMetrics;Lcom/qiniu/android/storage/UpCompletionHandler;)V

    return-void
.end method
