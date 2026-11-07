.class Lcom/qiniu/android/storage/FormUpload;
.super Lcom/qiniu/android/storage/BaseUpload;
.source "FormUpload.java"


# instance fields
.field private isAsync:Z

.field private final upProgress:Lcom/qiniu/android/storage/UpProgress;

.field private uploadTransaction:Lcom/qiniu/android/http/request/RequestTransaction;


# direct methods
.method protected constructor <init>([BLjava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/BaseUpload$UpTaskCompletionHandler;)V
    .locals 0

    .line 25
    invoke-direct/range {p0 .. p7}, Lcom/qiniu/android/storage/BaseUpload;-><init>([BLjava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/BaseUpload$UpTaskCompletionHandler;)V

    move-object p1, p0

    const/4 p2, 0x1

    .line 14
    iput-boolean p2, p1, Lcom/qiniu/android/storage/FormUpload;->isAsync:Z

    .line 26
    new-instance p2, Lcom/qiniu/android/storage/UpProgress;

    iget-object p3, p1, Lcom/qiniu/android/storage/FormUpload;->option:Lcom/qiniu/android/storage/UploadOptions;

    iget-object p3, p3, Lcom/qiniu/android/storage/UploadOptions;->progressHandler:Lcom/qiniu/android/storage/UpProgressHandler;

    invoke-direct {p2, p3}, Lcom/qiniu/android/storage/UpProgress;-><init>(Lcom/qiniu/android/storage/UpProgressHandler;)V

    iput-object p2, p1, Lcom/qiniu/android/storage/FormUpload;->upProgress:Lcom/qiniu/android/storage/UpProgress;

    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/android/storage/FormUpload;)Lcom/qiniu/android/storage/UpProgress;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/qiniu/android/storage/FormUpload;->upProgress:Lcom/qiniu/android/storage/UpProgress;

    return-object p0
.end method


# virtual methods
.method getUpType()Ljava/lang/String;
    .locals 1

    .line 63
    const-string v0, "form"

    return-object v0
.end method

.method protected startToUpload()V
    .locals 8

    .line 31
    invoke-super {p0}, Lcom/qiniu/android/storage/BaseUpload;->startToUpload()V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qiniu/android/storage/FormUpload;->key:Ljava/lang/String;

    invoke-static {v1}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " form\u4e0a\u4f20"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 35
    new-instance v1, Lcom/qiniu/android/http/request/RequestTransaction;

    iget-object v2, p0, Lcom/qiniu/android/storage/FormUpload;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v3, p0, Lcom/qiniu/android/storage/FormUpload;->option:Lcom/qiniu/android/storage/UploadOptions;

    invoke-virtual {p0}, Lcom/qiniu/android/storage/FormUpload;->getTargetRegion()Lcom/qiniu/android/http/request/IUploadRegion;

    move-result-object v4

    invoke-virtual {p0}, Lcom/qiniu/android/storage/FormUpload;->getCurrentRegion()Lcom/qiniu/android/http/request/IUploadRegion;

    move-result-object v5

    iget-object v6, p0, Lcom/qiniu/android/storage/FormUpload;->key:Ljava/lang/String;

    iget-object v7, p0, Lcom/qiniu/android/storage/FormUpload;->token:Lcom/qiniu/android/storage/UpToken;

    invoke-direct/range {v1 .. v7}, Lcom/qiniu/android/http/request/RequestTransaction;-><init>(Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/http/request/IUploadRegion;Lcom/qiniu/android/http/request/IUploadRegion;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;)V

    iput-object v1, p0, Lcom/qiniu/android/storage/FormUpload;->uploadTransaction:Lcom/qiniu/android/http/request/RequestTransaction;

    .line 37
    new-instance v6, Lcom/qiniu/android/storage/FormUpload$1;

    invoke-direct {v6, p0}, Lcom/qiniu/android/storage/FormUpload$1;-><init>(Lcom/qiniu/android/storage/FormUpload;)V

    .line 43
    iget-object v2, p0, Lcom/qiniu/android/storage/FormUpload;->uploadTransaction:Lcom/qiniu/android/http/request/RequestTransaction;

    iget-object v3, p0, Lcom/qiniu/android/storage/FormUpload;->data:[B

    iget-object v4, p0, Lcom/qiniu/android/storage/FormUpload;->fileName:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/qiniu/android/storage/FormUpload;->isAsync:Z

    new-instance v7, Lcom/qiniu/android/storage/FormUpload$2;

    invoke-direct {v7, p0}, Lcom/qiniu/android/storage/FormUpload$2;-><init>(Lcom/qiniu/android/storage/FormUpload;)V

    invoke-virtual/range {v2 .. v7}, Lcom/qiniu/android/http/request/RequestTransaction;->uploadFormData([BLjava/lang/String;ZLcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V

    return-void
.end method
