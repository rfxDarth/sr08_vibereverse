.class Lcom/qiniu/android/storage/UploadManager$2;
.super Ljava/lang/Object;
.source "UploadManager.java"

# interfaces
.implements Lcom/qiniu/android/storage/UpCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/UploadManager;->syncPut(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;)Lcom/qiniu/android/http/ResponseInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/storage/UploadManager;

.field final synthetic val$responseInfos:Ljava/util/ArrayList;

.field final synthetic val$wait:Lcom/qiniu/android/utils/Wait;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/UploadManager;Ljava/util/ArrayList;Lcom/qiniu/android/utils/Wait;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/qiniu/android/storage/UploadManager$2;->this$0:Lcom/qiniu/android/storage/UploadManager;

    iput-object p2, p0, Lcom/qiniu/android/storage/UploadManager$2;->val$responseInfos:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/qiniu/android/storage/UploadManager$2;->val$wait:Lcom/qiniu/android/utils/Wait;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 338
    iget-object p1, p0, Lcom/qiniu/android/storage/UploadManager$2;->val$responseInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_0
    iget-object p1, p0, Lcom/qiniu/android/storage/UploadManager$2;->val$wait:Lcom/qiniu/android/utils/Wait;

    invoke-virtual {p1}, Lcom/qiniu/android/utils/Wait;->stopWait()V

    return-void
.end method
