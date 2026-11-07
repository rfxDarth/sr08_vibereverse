.class Lcom/qiniu/android/common/AutoZone$2;
.super Ljava/lang/Object;
.source "AutoZone.java"

# interfaces
.implements Lcom/qiniu/android/utils/SingleFlight$ActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/common/AutoZone;->query(Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/common/Zone$QueryHandlerV2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/qiniu/android/utils/SingleFlight$ActionHandler<",
        "Lcom/qiniu/android/common/AutoZone$SingleFlightValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/common/AutoZone;

.field final synthetic val$configuration:Lcom/qiniu/android/storage/Configuration;

.field final synthetic val$token:Lcom/qiniu/android/storage/UpToken;


# direct methods
.method constructor <init>(Lcom/qiniu/android/common/AutoZone;Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/UpToken;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/qiniu/android/common/AutoZone$2;->this$0:Lcom/qiniu/android/common/AutoZone;

    iput-object p2, p0, Lcom/qiniu/android/common/AutoZone$2;->val$configuration:Lcom/qiniu/android/storage/Configuration;

    iput-object p3, p0, Lcom/qiniu/android/common/AutoZone$2;->val$token:Lcom/qiniu/android/storage/UpToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qiniu/android/utils/SingleFlight$CompleteHandler<",
            "Lcom/qiniu/android/common/AutoZone$SingleFlightValue;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/qiniu/android/common/AutoZone$2;->this$0:Lcom/qiniu/android/common/AutoZone;

    iget-object v1, p0, Lcom/qiniu/android/common/AutoZone$2;->val$configuration:Lcom/qiniu/android/storage/Configuration;

    iget-object v2, p0, Lcom/qiniu/android/common/AutoZone$2;->val$token:Lcom/qiniu/android/storage/UpToken;

    invoke-static {v0, v1, v2}, Lcom/qiniu/android/common/AutoZone;->access$000(Lcom/qiniu/android/common/AutoZone;Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/UpToken;)Lcom/qiniu/android/http/request/RequestTransaction;

    move-result-object v0

    .line 186
    new-instance v1, Lcom/qiniu/android/common/AutoZone$2$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/qiniu/android/common/AutoZone$2$1;-><init>(Lcom/qiniu/android/common/AutoZone$2;Lcom/qiniu/android/http/request/RequestTransaction;Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/qiniu/android/http/request/RequestTransaction;->queryUploadHosts(ZLcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V

    return-void
.end method
