.class Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$1;
.super Ljava/lang/Object;
.source "UploadDomainRegion.java"

# interfaces
.implements Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain$GetServerCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->getNextServer(Lcom/qiniu/android/http/request/UploadRequestState;Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/request/IUploadServer;)Lcom/qiniu/android/http/request/IUploadServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$1;->this$0:Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public condition(Ljava/lang/String;Lcom/qiniu/android/http/serverRegion/UploadServer;Lcom/qiniu/android/http/serverRegion/UploadServer;)Z
    .locals 6

    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {p3}, Lcom/qiniu/android/http/serverRegion/UploadServer;->getIp()Ljava/lang/String;

    move-result-object v0

    .line 249
    :goto_0
    iget-object v1, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$1;->this$0:Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;

    invoke-static {v1}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->access$000(Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/qiniu/android/utils/Utils;->isIpv6(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 254
    :cond_1
    invoke-static {p1, v0}, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeUtil;->getFrozenType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    .line 255
    new-array v3, v3, [Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;

    iget-object v4, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$1;->this$0:Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;

    invoke-static {v4}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->access$100(Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;)Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v4, 0x1

    invoke-static {}, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeUtil;->globalHttp3Freezer()Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeUtil;->isTypeFrozenByFreezeManagers(Ljava/lang/String;[Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 257
    invoke-static {}, Lcom/qiniu/android/http/serverRegion/HttpServerManager;->getInstance()Lcom/qiniu/android/http/serverRegion/HttpServerManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/qiniu/android/http/serverRegion/HttpServerManager;->isServerSupportHttp3(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 262
    :cond_2
    invoke-static {p3, p2}, Lcom/qiniu/android/http/networkStatus/UploadServerNetworkStatus;->isServerNetworkBetter(Lcom/qiniu/android/http/request/IUploadServer;Lcom/qiniu/android/http/request/IUploadServer;)Z

    move-result p1

    return p1

    :cond_3
    :goto_1
    return v2
.end method
