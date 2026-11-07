.class Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$2;
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

    .line 284
    iput-object p1, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$2;->this$0:Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public condition(Ljava/lang/String;Lcom/qiniu/android/http/serverRegion/UploadServer;Lcom/qiniu/android/http/serverRegion/UploadServer;)Z
    .locals 4

    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {p3}, Lcom/qiniu/android/http/serverRegion/UploadServer;->getIp()Ljava/lang/String;

    move-result-object v0

    .line 290
    :goto_0
    iget-object v1, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$2;->this$0:Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;

    invoke-static {v1}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->access$000(Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/qiniu/android/utils/Utils;->isIpv6(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 295
    :cond_1
    invoke-static {p1, v0}, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeUtil;->getFrozenType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    .line 296
    new-array v0, v0, [Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;

    iget-object v1, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$2;->this$0:Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;

    invoke-static {v1}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->access$200(Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;)Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {}, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeUtil;->globalHttp2Freezer()Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {p1, v0}, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeUtil;->isTypeFrozenByFreezeManagers(Ljava/lang/String;[Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    .line 303
    :cond_2
    invoke-static {p3, p2}, Lcom/qiniu/android/http/networkStatus/UploadServerNetworkStatus;->isServerNetworkBetter(Lcom/qiniu/android/http/request/IUploadServer;Lcom/qiniu/android/http/request/IUploadServer;)Z

    move-result p1

    return p1
.end method
