.class Lcom/qiniu/android/storage/PartsUploadPerformerV1$1;
.super Ljava/lang/Object;
.source "PartsUploadPerformerV1.java"

# interfaces
.implements Lcom/qiniu/android/http/request/handler/RequestProgressHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/PartsUploadPerformerV1;->uploadNextData(Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV1;

.field final synthetic val$uploadChunk:Lcom/qiniu/android/storage/UploadData;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/PartsUploadPerformerV1;Lcom/qiniu/android/storage/UploadData;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$1;->this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV1;

    iput-object p2, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$1;->val$uploadChunk:Lcom/qiniu/android/storage/UploadData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public progress(JJ)V
    .locals 0

    .line 93
    iget-object p3, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$1;->val$uploadChunk:Lcom/qiniu/android/storage/UploadData;

    invoke-virtual {p3, p1, p2}, Lcom/qiniu/android/storage/UploadData;->setUploadSize(J)V

    .line 94
    iget-object p1, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$1;->this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV1;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/qiniu/android/storage/PartsUploadPerformerV1;->notifyProgress(Ljava/lang/Boolean;)V

    return-void
.end method
