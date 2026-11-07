.class Lcom/qiniu/android/storage/UploadInfoV2$2;
.super Ljava/lang/Object;
.source "UploadInfoV2.java"

# interfaces
.implements Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/UploadInfoV2;->getPartInfoArray()Ljava/util/List;
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

.field final synthetic val$infoArray:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/UploadInfoV2;Ljava/util/ArrayList;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/qiniu/android/storage/UploadInfoV2$2;->this$0:Lcom/qiniu/android/storage/UploadInfoV2;

    iput-object p2, p0, Lcom/qiniu/android/storage/UploadInfoV2$2;->val$infoArray:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enumerate(Lcom/qiniu/android/storage/UploadData;)Z
    .locals 3

    .line 227
    invoke-virtual {p1}, Lcom/qiniu/android/storage/UploadData;->getState()Lcom/qiniu/android/storage/UploadData$State;

    move-result-object v0

    sget-object v1, Lcom/qiniu/android/storage/UploadData$State;->Complete:Lcom/qiniu/android/storage/UploadData$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/qiniu/android/storage/UploadData;->etag:Ljava/lang/String;

    invoke-static {v0}, Lcom/qiniu/android/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 229
    const-string v1, "etag"

    iget-object v2, p1, Lcom/qiniu/android/storage/UploadData;->etag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v1, p0, Lcom/qiniu/android/storage/UploadInfoV2$2;->this$0:Lcom/qiniu/android/storage/UploadInfoV2;

    invoke-virtual {v1, p1}, Lcom/qiniu/android/storage/UploadInfoV2;->getPartIndexOfData(Lcom/qiniu/android/storage/UploadData;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "partNumber"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object p1, p0, Lcom/qiniu/android/storage/UploadInfoV2$2;->val$infoArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic enumerate(Ljava/lang/Object;)Z
    .locals 0

    .line 224
    check-cast p1, Lcom/qiniu/android/storage/UploadData;

    invoke-virtual {p0, p1}, Lcom/qiniu/android/storage/UploadInfoV2$2;->enumerate(Lcom/qiniu/android/storage/UploadData;)Z

    move-result p1

    return p1
.end method
