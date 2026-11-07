.class Lcom/qiniu/android/storage/ConcurrentResumeUpload$2$1;
.super Ljava/lang/Object;
.source "ConcurrentResumeUpload.java"

# interfaces
.implements Lcom/qiniu/android/storage/PartsUpload$UploadFileRestDataCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/ConcurrentResumeUpload$2;->run(Lcom/qiniu/android/utils/GroupTaskThread$GroupTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qiniu/android/storage/ConcurrentResumeUpload$2;

.field final synthetic val$task:Lcom/qiniu/android/utils/GroupTaskThread$GroupTask;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/ConcurrentResumeUpload$2;Lcom/qiniu/android/utils/GroupTaskThread$GroupTask;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/qiniu/android/storage/ConcurrentResumeUpload$2$1;->this$1:Lcom/qiniu/android/storage/ConcurrentResumeUpload$2;

    iput-object p2, p0, Lcom/qiniu/android/storage/ConcurrentResumeUpload$2$1;->val$task:Lcom/qiniu/android/utils/GroupTaskThread$GroupTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/qiniu/android/storage/ConcurrentResumeUpload$2$1;->val$task:Lcom/qiniu/android/utils/GroupTaskThread$GroupTask;

    invoke-virtual {v0}, Lcom/qiniu/android/utils/GroupTaskThread$GroupTask;->taskComplete()V

    return-void
.end method
