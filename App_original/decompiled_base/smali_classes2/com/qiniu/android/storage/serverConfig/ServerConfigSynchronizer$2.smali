.class Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$2;
.super Ljava/lang/Object;
.source "ServerConfigSynchronizer.java"

# interfaces
.implements Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer;->getServerUserConfigFromServer(Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$ServerUserConfigHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$ServerUserConfigHandler;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$ServerUserConfigHandler;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$2;->val$handler:Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$ServerUserConfigHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;)V
    .locals 0

    .line 94
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 95
    iget-object p1, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$2;->val$handler:Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$ServerUserConfigHandler;

    new-instance p2, Lcom/qiniu/android/storage/serverConfig/ServerUserConfig;

    invoke-direct {p2, p3}, Lcom/qiniu/android/storage/serverConfig/ServerUserConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {p1, p2}, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$ServerUserConfigHandler;->handle(Lcom/qiniu/android/storage/serverConfig/ServerUserConfig;)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$2;->val$handler:Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$ServerUserConfigHandler;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$ServerUserConfigHandler;->handle(Lcom/qiniu/android/storage/serverConfig/ServerUserConfig;)V

    .line 99
    :goto_0
    invoke-static {}, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer;->access$100()V

    return-void
.end method
