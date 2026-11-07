.class Lcom/qiniu/android/storage/ConcurrentResumeUpload;
.super Lcom/qiniu/android/storage/PartsUpload;
.source "ConcurrentResumeUpload.java"


# instance fields
.field private groupTaskThread:Lcom/qiniu/android/utils/GroupTaskThread;


# direct methods
.method protected constructor <init>(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/Recorder;Ljava/lang/String;Lcom/qiniu/android/storage/BaseUpload$UpTaskCompletionHandler;)V
    .locals 0

    .line 19
    invoke-direct/range {p0 .. p8}, Lcom/qiniu/android/storage/PartsUpload;-><init>(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/Recorder;Ljava/lang/String;Lcom/qiniu/android/storage/BaseUpload$UpTaskCompletionHandler;)V

    return-void
.end method


# virtual methods
.method protected prepareToUpload()I
    .locals 1

    .line 24
    invoke-super {p0}, Lcom/qiniu/android/storage/PartsUpload;->prepareToUpload()I

    move-result v0

    return v0
.end method

.method protected uploadRestData(Lcom/qiniu/android/storage/PartsUpload$UploadFileRestDataCompleteHandler;)V
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qiniu/android/storage/ConcurrentResumeUpload;->key:Ljava/lang/String;

    invoke-static {v1}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 31
    new-instance v0, Lcom/qiniu/android/storage/ConcurrentResumeUpload$1;

    invoke-direct {v0, p0, p1}, Lcom/qiniu/android/storage/ConcurrentResumeUpload$1;-><init>(Lcom/qiniu/android/storage/ConcurrentResumeUpload;Lcom/qiniu/android/storage/PartsUpload$UploadFileRestDataCompleteHandler;)V

    .line 38
    new-instance p1, Lcom/qiniu/android/utils/GroupTaskThread;

    invoke-direct {p1, v0}, Lcom/qiniu/android/utils/GroupTaskThread;-><init>(Lcom/qiniu/android/utils/GroupTaskThread$GroupTaskCompleteHandler;)V

    iput-object p1, p0, Lcom/qiniu/android/storage/ConcurrentResumeUpload;->groupTaskThread:Lcom/qiniu/android/utils/GroupTaskThread;

    const/4 p1, 0x0

    .line 39
    :goto_0
    iget-object v0, p0, Lcom/qiniu/android/storage/ConcurrentResumeUpload;->config:Lcom/qiniu/android/storage/Configuration;

    iget v0, v0, Lcom/qiniu/android/storage/Configuration;->concurrentTaskCount:I

    if-ge p1, v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/qiniu/android/storage/ConcurrentResumeUpload;->groupTaskThread:Lcom/qiniu/android/utils/GroupTaskThread;

    new-instance v1, Lcom/qiniu/android/storage/ConcurrentResumeUpload$2;

    invoke-direct {v1, p0}, Lcom/qiniu/android/storage/ConcurrentResumeUpload$2;-><init>(Lcom/qiniu/android/storage/ConcurrentResumeUpload;)V

    invoke-virtual {v0, v1}, Lcom/qiniu/android/utils/GroupTaskThread;->addTask(Lcom/qiniu/android/utils/GroupTaskThread$GroupTask;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/qiniu/android/storage/ConcurrentResumeUpload;->groupTaskThread:Lcom/qiniu/android/utils/GroupTaskThread;

    invoke-virtual {p1}, Lcom/qiniu/android/utils/GroupTaskThread;->start()V

    return-void
.end method
