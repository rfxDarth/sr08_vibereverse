.class Lcom/qiniu/android/storage/PartsUpload$1$1$1;
.super Ljava/lang/Object;
.source "PartsUpload.java"

# interfaces
.implements Lcom/qiniu/android/storage/PartsUpload$UploadFileCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/PartsUpload$1$1;->complete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/qiniu/android/storage/PartsUpload$1$1;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/PartsUpload$1$1;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/qiniu/android/storage/PartsUpload$1$1$1;->this$2:Lcom/qiniu/android/storage/PartsUpload$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .locals 1

    .line 170
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUpload$1$1$1;->this$2:Lcom/qiniu/android/storage/PartsUpload$1$1;

    iget-object v0, v0, Lcom/qiniu/android/storage/PartsUpload$1$1;->this$1:Lcom/qiniu/android/storage/PartsUpload$1;

    iget-object v0, v0, Lcom/qiniu/android/storage/PartsUpload$1;->this$0:Lcom/qiniu/android/storage/PartsUpload;

    invoke-virtual {v0, p1}, Lcom/qiniu/android/storage/PartsUpload;->switchRegionAndUploadIfNeededWithErrorResponse(Lcom/qiniu/android/http/ResponseInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUpload$1$1$1;->this$2:Lcom/qiniu/android/storage/PartsUpload$1$1;

    iget-object v0, v0, Lcom/qiniu/android/storage/PartsUpload$1$1;->this$1:Lcom/qiniu/android/storage/PartsUpload$1;

    iget-object v0, v0, Lcom/qiniu/android/storage/PartsUpload$1;->this$0:Lcom/qiniu/android/storage/PartsUpload;

    invoke-virtual {v0, p1, p2}, Lcom/qiniu/android/storage/PartsUpload;->completeAction(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    :cond_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUpload$1$1$1;->this$2:Lcom/qiniu/android/storage/PartsUpload$1$1;

    iget-object v0, v0, Lcom/qiniu/android/storage/PartsUpload$1$1;->this$1:Lcom/qiniu/android/storage/PartsUpload$1;

    iget-object v0, v0, Lcom/qiniu/android/storage/PartsUpload$1;->this$0:Lcom/qiniu/android/storage/PartsUpload;

    invoke-virtual {v0, p1, p2}, Lcom/qiniu/android/storage/PartsUpload;->completeAction(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    return-void
.end method
