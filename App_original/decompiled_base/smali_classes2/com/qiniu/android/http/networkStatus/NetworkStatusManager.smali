.class public Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;
.super Ljava/lang/Object;
.source "NetworkStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;
    }
.end annotation


# static fields
.field protected static final DefaultSpeed:I = 0x258

.field private static final networkStatusManager:Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;


# instance fields
.field private final cache:Lcom/qiniu/android/utils/Cache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;

    invoke-direct {v0}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;-><init>()V

    sput-object v0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->networkStatusManager:Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/qiniu/android/utils/Cache$Builder;

    const-class v1, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;

    invoke-direct {v0, v1}, Lcom/qiniu/android/utils/Cache$Builder;-><init>(Ljava/lang/Class;)V

    const-string/jumbo v1, "v2"

    .line 19
    invoke-virtual {v0, v1}, Lcom/qiniu/android/utils/Cache$Builder;->setVersion(Ljava/lang/String;)Lcom/qiniu/android/utils/Cache$Builder;

    move-result-object v0

    const/16 v1, 0xa

    .line 20
    invoke-virtual {v0, v1}, Lcom/qiniu/android/utils/Cache$Builder;->setFlushCount(I)Lcom/qiniu/android/utils/Cache$Builder;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/qiniu/android/utils/Cache$Builder;->builder()Lcom/qiniu/android/utils/Cache;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->cache:Lcom/qiniu/android/utils/Cache;

    return-void
.end method

.method public static getInstance()Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;
    .locals 1

    .line 29
    sget-object v0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->networkStatusManager:Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;

    return-object v0
.end method

.method public static getNetworkStatusType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    invoke-static {p1, p0}, Lcom/qiniu/android/utils/Utils;->getIpType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNetworkStatusType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 56
    invoke-static {p0, p2, p1}, Lcom/qiniu/android/utils/Utils;->getIpType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getNetworkStatus(Ljava/lang/String;)Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->cache:Lcom/qiniu/android/utils/Cache;

    invoke-virtual {v1, p1}, Lcom/qiniu/android/utils/Cache;->cacheForKey(Ljava/lang/String;)Lcom/qiniu/android/utils/Cache$Object;

    move-result-object p1

    .line 71
    instance-of v1, p1, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;

    if-eqz v1, :cond_1

    .line 72
    check-cast p1, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;

    return-object p1

    .line 74
    :cond_1
    new-instance p1, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;

    invoke-direct {p1, v0}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;-><init>(Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$1;)V

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public updateNetworkStatus(Ljava/lang/String;I)V
    .locals 2

    if-eqz p1, :cond_1

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    new-instance v0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;-><init>(Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$1;)V

    .line 90
    invoke-static {v0, p2}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;->access$102(Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;I)I

    .line 91
    iget-object p2, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->cache:Lcom/qiniu/android/utils/Cache;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1}, Lcom/qiniu/android/utils/Cache;->cache(Ljava/lang/String;Lcom/qiniu/android/utils/Cache$Object;Z)V

    :cond_1
    :goto_0
    return-void
.end method
