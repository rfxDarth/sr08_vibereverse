.class Lcom/qiniu/android/storage/FormUpload$1;
.super Ljava/lang/Object;
.source "FormUpload.java"

# interfaces
.implements Lcom/qiniu/android/http/request/handler/RequestProgressHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/FormUpload;->startToUpload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/storage/FormUpload;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/FormUpload;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/qiniu/android/storage/FormUpload$1;->this$0:Lcom/qiniu/android/storage/FormUpload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public progress(JJ)V
    .locals 7

    .line 40
    iget-object v0, p0, Lcom/qiniu/android/storage/FormUpload$1;->this$0:Lcom/qiniu/android/storage/FormUpload;

    invoke-static {v0}, Lcom/qiniu/android/storage/FormUpload;->access$000(Lcom/qiniu/android/storage/FormUpload;)Lcom/qiniu/android/storage/UpProgress;

    move-result-object v1

    iget-object v0, p0, Lcom/qiniu/android/storage/FormUpload$1;->this$0:Lcom/qiniu/android/storage/FormUpload;

    iget-object v2, v0, Lcom/qiniu/android/storage/FormUpload;->key:Ljava/lang/String;

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/qiniu/android/storage/UpProgress;->progress(Ljava/lang/String;JJ)V

    return-void
.end method
