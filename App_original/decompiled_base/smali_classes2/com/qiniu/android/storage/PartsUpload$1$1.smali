.class Lcom/qiniu/android/storage/PartsUpload$1$1;
.super Ljava/lang/Object;
.source "PartsUpload.java"

# interfaces
.implements Lcom/qiniu/android/storage/PartsUpload$UploadFileRestDataCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/PartsUpload$1;->complete(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qiniu/android/storage/PartsUpload$1;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/PartsUpload$1;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/qiniu/android/storage/PartsUpload$1$1;->this$1:Lcom/qiniu/android/storage/PartsUpload$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 5

    .line 149
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUpload$1$1;->this$1:Lcom/qiniu/android/storage/PartsUpload$1;

    iget-object v0, v0, Lcom/qiniu/android/storage/PartsUpload$1;->this$0:Lcom/qiniu/android/storage/PartsUpload;

    invoke-virtual {v0}, Lcom/qiniu/android/storage/PartsUpload;->isAllUploaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUpload$1$1;->this$1:Lcom/qiniu/android/storage/PartsUpload$1;

    iget-object v0, v0, Lcom/qiniu/android/storage/PartsUpload$1;->this$0:Lcom/qiniu/android/storage/PartsUpload;

    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUpload$1$1;->this$1:Lcom/qiniu/android/storage/PartsUpload$1;

    iget-object v1, v1, Lcom/qiniu/android/storage/PartsUpload$1;->this$0:Lcom/qiniu/android/storage/PartsUpload;

    invoke-static {v1}, Lcom/qiniu/android/storage/PartsUpload;->access$000(Lcom/qiniu/android/storage/PartsUpload;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qiniu/android/storage/PartsUpload;->switchRegionAndUploadIfNeededWithErrorResponse(Lcom/qiniu/android/http/ResponseInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUpload$1$1;->this$1:Lcom/qiniu/android/storage/PartsUpload$1;

    iget-object v0, v0, Lcom/qiniu/android/storage/PartsUpload$1;->this$0:Lcom/qiniu/android/storage/PartsUpload;

    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUpload$1$1;->this$1:Lcom/qiniu/android/storage/PartsUpload$1;

    iget-object v1, v1, Lcom/qiniu/android/storage/PartsUpload$1;->this$0:Lcom/qiniu/android/storage/PartsUpload;

    invoke-static {v1}, Lcom/qiniu/android/storage/PartsUpload;->access$000(Lcom/qiniu/android/storage/PartsUpload;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/qiniu/android/storage/PartsUpload$1$1;->this$1:Lcom/qiniu/android/storage/PartsUpload$1;

    iget-object v2, v2, Lcom/qiniu/android/storage/PartsUpload$1;->this$0:Lcom/qiniu/android/storage/PartsUpload;

    invoke-static {v2}, Lcom/qiniu/android/storage/PartsUpload;->access$100(Lcom/qiniu/android/storage/PartsUpload;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/qiniu/android/storage/PartsUpload;->completeAction(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    :cond_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUpload$1$1;->this$1:Lcom/qiniu/android/storage/PartsUpload$1;

    iget-object v0, v0, Lcom/qiniu/android/storage/PartsUpload$1;->this$0:Lcom/qiniu/android/storage/PartsUpload;

    iget-object v0, v0, Lcom/qiniu/android/storage/PartsUpload;->uploadPerformer:Lcom/qiniu/android/storage/PartsUploadPerformer;

    iget-object v0, v0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    invoke-virtual {v0}, Lcom/qiniu/android/storage/UploadInfo;->getSourceSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 158
    const-string v0, "file is empty"

    invoke-static {v0}, Lcom/qiniu/android/http/ResponseInfo;->zeroSize(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUpload$1$1;->this$1:Lcom/qiniu/android/storage/PartsUpload$1;

    iget-object v1, v1, Lcom/qiniu/android/storage/PartsUpload$1;->this$0:Lcom/qiniu/android/storage/PartsUpload;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/qiniu/android/storage/PartsUpload;->completeAction(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    return-void

    .line 163
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUpload$1$1;->this$1:Lcom/qiniu/android/storage/PartsUpload$1;

    iget-object v1, v1, Lcom/qiniu/android/storage/PartsUpload$1;->this$0:Lcom/qiniu/android/storage/PartsUpload;

    iget-object v1, v1, Lcom/qiniu/android/storage/PartsUpload;->key:Ljava/lang/String;

    invoke-static {v1}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " completeUpload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUpload$1$1;->this$1:Lcom/qiniu/android/storage/PartsUpload$1;

    iget-object v0, v0, Lcom/qiniu/android/storage/PartsUpload$1;->this$0:Lcom/qiniu/android/storage/PartsUpload;

    new-instance v1, Lcom/qiniu/android/storage/PartsUpload$1$1$1;

    invoke-direct {v1, p0}, Lcom/qiniu/android/storage/PartsUpload$1$1$1;-><init>(Lcom/qiniu/android/storage/PartsUpload$1$1;)V

    invoke-virtual {v0, v1}, Lcom/qiniu/android/storage/PartsUpload;->completeUpload(Lcom/qiniu/android/storage/PartsUpload$UploadFileCompleteHandler;)V

    return-void
.end method
