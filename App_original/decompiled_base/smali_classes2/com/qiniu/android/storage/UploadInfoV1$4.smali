.class Lcom/qiniu/android/storage/UploadInfoV1$4;
.super Ljava/lang/Object;
.source "UploadInfoV1.java"

# interfaces
.implements Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/UploadInfoV1;->isAllUploaded()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/qiniu/android/utils/ListVector$EnumeratorHandler<",
        "Lcom/qiniu/android/storage/UploadBlock;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/storage/UploadInfoV1;

.field final synthetic val$isAllUploaded:[Z


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/UploadInfoV1;[Z)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/qiniu/android/storage/UploadInfoV1$4;->this$0:Lcom/qiniu/android/storage/UploadInfoV1;

    iput-object p2, p0, Lcom/qiniu/android/storage/UploadInfoV1$4;->val$isAllUploaded:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enumerate(Lcom/qiniu/android/storage/UploadBlock;)Z
    .locals 1

    .line 173
    invoke-virtual {p1}, Lcom/qiniu/android/storage/UploadBlock;->isCompleted()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 174
    iget-object p1, p0, Lcom/qiniu/android/storage/UploadInfoV1$4;->val$isAllUploaded:[Z

    aput-boolean v0, p1, v0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public bridge synthetic enumerate(Ljava/lang/Object;)Z
    .locals 0

    .line 170
    check-cast p1, Lcom/qiniu/android/storage/UploadBlock;

    invoke-virtual {p0, p1}, Lcom/qiniu/android/storage/UploadInfoV1$4;->enumerate(Lcom/qiniu/android/storage/UploadBlock;)Z

    move-result p1

    return p1
.end method
