.class Lcom/qiniu/android/storage/ConcurrentResumeUpload$1;
.super Ljava/lang/Object;
.source "ConcurrentResumeUpload.java"

# interfaces
.implements Lcom/qiniu/android/utils/GroupTaskThread$GroupTaskCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/ConcurrentResumeUpload;->uploadRestData(Lcom/qiniu/android/storage/PartsUpload$UploadFileRestDataCompleteHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/storage/ConcurrentResumeUpload;

.field final synthetic val$completeHandler:Lcom/qiniu/android/storage/PartsUpload$UploadFileRestDataCompleteHandler;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/ConcurrentResumeUpload;Lcom/qiniu/android/storage/PartsUpload$UploadFileRestDataCompleteHandler;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/qiniu/android/storage/ConcurrentResumeUpload$1;->this$0:Lcom/qiniu/android/storage/ConcurrentResumeUpload;

    iput-object p2, p0, Lcom/qiniu/android/storage/ConcurrentResumeUpload$1;->val$completeHandler:Lcom/qiniu/android/storage/PartsUpload$UploadFileRestDataCompleteHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/qiniu/android/storage/ConcurrentResumeUpload$1;->val$completeHandler:Lcom/qiniu/android/storage/PartsUpload$UploadFileRestDataCompleteHandler;

    invoke-interface {v0}, Lcom/qiniu/android/storage/PartsUpload$UploadFileRestDataCompleteHandler;->complete()V

    return-void
.end method
