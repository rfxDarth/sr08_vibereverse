.class Lcom/qiniu/android/common/AutoZone$1;
.super Ljava/lang/Object;
.source "AutoZone.java"

# interfaces
.implements Lcom/qiniu/android/common/Zone$QueryHandlerV2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/common/AutoZone;->preQuery(Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/common/Zone$QueryHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/common/AutoZone;

.field final synthetic val$completeHandler:Lcom/qiniu/android/common/Zone$QueryHandler;


# direct methods
.method constructor <init>(Lcom/qiniu/android/common/AutoZone;Lcom/qiniu/android/common/Zone$QueryHandler;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/qiniu/android/common/AutoZone$1;->this$0:Lcom/qiniu/android/common/AutoZone;

    iput-object p2, p0, Lcom/qiniu/android/common/AutoZone$1;->val$completeHandler:Lcom/qiniu/android/common/Zone$QueryHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lcom/qiniu/android/common/ZonesInfo;)V
    .locals 1

    .line 137
    iget-object p3, p0, Lcom/qiniu/android/common/AutoZone$1;->val$completeHandler:Lcom/qiniu/android/common/Zone$QueryHandler;

    if-eqz p3, :cond_2

    if-eqz p1, :cond_1

    .line 140
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 143
    :cond_0
    iget p3, p1, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    goto :goto_0

    :cond_1
    const/4 p3, -0x1

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/qiniu/android/common/AutoZone$1;->val$completeHandler:Lcom/qiniu/android/common/Zone$QueryHandler;

    invoke-interface {v0, p3, p1, p2}, Lcom/qiniu/android/common/Zone$QueryHandler;->complete(ILcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;)V

    :cond_2
    return-void
.end method
