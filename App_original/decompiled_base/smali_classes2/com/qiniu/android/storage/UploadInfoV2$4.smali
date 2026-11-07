.class Lcom/qiniu/android/storage/UploadInfoV2$4;
.super Ljava/lang/Object;
.source "UploadInfoV2.java"

# interfaces
.implements Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/UploadInfoV2;->uploadSize()J
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

.field final synthetic val$uploadSize:[J


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/UploadInfoV2;[J)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/qiniu/android/storage/UploadInfoV2$4;->this$0:Lcom/qiniu/android/storage/UploadInfoV2;

    iput-object p2, p0, Lcom/qiniu/android/storage/UploadInfoV2$4;->val$uploadSize:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enumerate(Lcom/qiniu/android/storage/UploadData;)Z
    .locals 6

    .line 282
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2$4;->val$uploadSize:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-virtual {p1}, Lcom/qiniu/android/storage/UploadData;->uploadSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    aput-wide v2, v0, v1

    return v1
.end method

.method public bridge synthetic enumerate(Ljava/lang/Object;)Z
    .locals 0

    .line 279
    check-cast p1, Lcom/qiniu/android/storage/UploadData;

    invoke-virtual {p0, p1}, Lcom/qiniu/android/storage/UploadInfoV2$4;->enumerate(Lcom/qiniu/android/storage/UploadData;)Z

    move-result p1

    return p1
.end method
