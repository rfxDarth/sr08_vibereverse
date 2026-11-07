.class Lcom/qiniu/android/storage/UploadInfoV2$5;
.super Ljava/lang/Object;
.source "UploadInfoV2.java"

# interfaces
.implements Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/UploadInfoV2;->isAllUploaded()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/qiniu/android/utils/ListVector$EnumeratorHandler<",
        "Lcom/qiniu/android/storage/UploadData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/storage/UploadInfoV2;

.field final synthetic val$isCompleted:[Z


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/UploadInfoV2;[Z)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/qiniu/android/storage/UploadInfoV2$5;->this$0:Lcom/qiniu/android/storage/UploadInfoV2;

    iput-object p2, p0, Lcom/qiniu/android/storage/UploadInfoV2$5;->val$isCompleted:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enumerate(Lcom/qiniu/android/storage/UploadData;)Z
    .locals 1

    .line 316
    invoke-virtual {p1}, Lcom/qiniu/android/storage/UploadData;->isUploaded()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 317
    iget-object p1, p0, Lcom/qiniu/android/storage/UploadInfoV2$5;->val$isCompleted:[Z

    aput-boolean v0, p1, v0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public bridge synthetic enumerate(Ljava/lang/Object;)Z
    .locals 0

    .line 313
    check-cast p1, Lcom/qiniu/android/storage/UploadData;

    invoke-virtual {p0, p1}, Lcom/qiniu/android/storage/UploadInfoV2$5;->enumerate(Lcom/qiniu/android/storage/UploadData;)Z

    move-result p1

    return p1
.end method
