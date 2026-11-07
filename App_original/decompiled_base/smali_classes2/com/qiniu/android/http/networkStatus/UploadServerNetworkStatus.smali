.class public Lcom/qiniu/android/http/networkStatus/UploadServerNetworkStatus;
.super Ljava/lang/Object;
.source "UploadServerNetworkStatus.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBetterNetworkServer(Lcom/qiniu/android/http/request/IUploadServer;Lcom/qiniu/android/http/request/IUploadServer;)Lcom/qiniu/android/http/request/IUploadServer;
    .locals 1

    .line 23
    invoke-static {p0, p1}, Lcom/qiniu/android/http/networkStatus/UploadServerNetworkStatus;->isServerNetworkBetter(Lcom/qiniu/android/http/request/IUploadServer;Lcom/qiniu/android/http/request/IUploadServer;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static isServerNetworkBetter(Lcom/qiniu/android/http/request/IUploadServer;Lcom/qiniu/android/http/request/IUploadServer;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    return v1

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/qiniu/android/http/request/IUploadServer;->getHttpVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/qiniu/android/http/request/IUploadServer;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/qiniu/android/http/request/IUploadServer;->getIp()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->getNetworkStatusType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual {p1}, Lcom/qiniu/android/http/request/IUploadServer;->getHttpVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/qiniu/android/http/request/IUploadServer;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/qiniu/android/http/request/IUploadServer;->getIp()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->getNetworkStatusType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_c

    .line 43
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_1

    :cond_2
    if-eqz v3, :cond_b

    .line 45
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 49
    :cond_3
    invoke-static {}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->getInstance()Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->getNetworkStatus(Ljava/lang/String;)Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;

    move-result-object v2

    .line 50
    invoke-static {}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->getInstance()Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->getNetworkStatus(Ljava/lang/String;)Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;

    move-result-object v3

    .line 52
    invoke-virtual {v2}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;->getSpeed()I

    move-result v2

    .line 53
    invoke-virtual {v3}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;->getSpeed()I

    move-result v3

    .line 54
    invoke-virtual {p0}, Lcom/qiniu/android/http/request/IUploadServer;->getHttpVersion()Ljava/lang/String;

    move-result-object p0

    .line 55
    invoke-virtual {p1}, Lcom/qiniu/android/http/request/IUploadServer;->getHttpVersion()Ljava/lang/String;

    move-result-object p1

    .line 56
    const-string v4, ""

    if-nez p0, :cond_4

    move-object p0, v4

    :cond_4
    if-nez p1, :cond_5

    move-object p1, v4

    .line 62
    :cond_5
    sget-object v4, Lcom/qiniu/android/http/request/IUploadServer;->HttpVersion3:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0x190

    const/16 v6, 0xc8

    const/16 v7, 0x258

    if-eqz v4, :cond_7

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    if-ge v2, v6, :cond_6

    if-ne v3, v7, :cond_6

    return v1

    :cond_6
    if-le v2, v7, :cond_9

    if-le v3, v5, :cond_9

    return v0

    .line 68
    :cond_7
    sget-object v4, Lcom/qiniu/android/http/request/IUploadServer;->HttpVersion3:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    if-ge v3, v6, :cond_8

    if-ne v2, v7, :cond_8

    return v0

    :cond_8
    if-le v3, v7, :cond_9

    if-le v2, v5, :cond_9

    return v1

    :cond_9
    if-gt v3, v2, :cond_a

    return v1

    :cond_a
    return v0

    :cond_b
    :goto_0
    return v1

    :cond_c
    :goto_1
    return v0
.end method
