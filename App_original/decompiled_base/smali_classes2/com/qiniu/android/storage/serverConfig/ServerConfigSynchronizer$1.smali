.class Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$1;
.super Ljava/lang/Object;
.source "ServerConfigSynchronizer.java"

# interfaces
.implements Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer;->getServerConfigFromServer(Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$ServerConfigHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$ServerConfigHandler;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$ServerConfigHandler;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$1;->val$handler:Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$ServerConfigHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;)V
    .locals 0

    .line 43
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 45
    iget-object p1, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$1;->val$handler:Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$ServerConfigHandler;

    new-instance p2, Lcom/qiniu/android/storage/serverConfig/ServerConfig;

    invoke-direct {p2, p3}, Lcom/qiniu/android/storage/serverConfig/ServerConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {p1, p2}, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$ServerConfigHandler;->handle(Lcom/qiniu/android/storage/serverConfig/ServerConfig;)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$1;->val$handler:Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$ServerConfigHandler;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$ServerConfigHandler;->handle(Lcom/qiniu/android/storage/serverConfig/ServerConfig;)V

    .line 49
    :goto_0
    invoke-static {}, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer;->access$000()V

    return-void
.end method
