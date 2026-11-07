.class Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer;
.super Ljava/lang/Object;
.source "ServerConfigSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$ServerUserConfigHandler;,
        Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$ServerConfigHandler;
    }
.end annotation


# static fields
.field private static Hosts:[Ljava/lang/String;

.field private static Token:Ljava/lang/String;

.field private static serverConfigTransaction:Lcom/qiniu/android/http/request/RequestTransaction;

.field private static serverUserConfigTransaction:Lcom/qiniu/android/http/request/RequestTransaction;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 15
    invoke-static {}, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer;->destroyServerConfigTransaction()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .line 15
    invoke-static {}, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer;->destroyServerUserConfigTransaction()V

    return-void
.end method

.method private static declared-synchronized createServerConfigTransaction()Lcom/qiniu/android/http/request/RequestTransaction;
    .locals 4

    const-class v0, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer;->serverConfigTransaction:Lcom/qiniu/android/http/request/RequestTransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 57
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_0
    :try_start_1
    sget-object v1, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer;->Token:Ljava/lang/String;

    invoke-static {v1}, Lcom/qiniu/android/storage/UpToken;->parse(Ljava/lang/String;)Lcom/qiniu/android/storage/UpToken;

    move-result-object v1

    if-nez v1, :cond_1

    .line 62
    invoke-static {}, Lcom/qiniu/android/storage/UpToken;->getInvalidToken()Lcom/qiniu/android/storage/UpToken;

    move-result-object v1

    .line 66
    :cond_1
    sget-object v2, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer;->Hosts:[Ljava/lang/String;

    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    .line 67
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 69
    :cond_2
    invoke-static {}, Lcom/qiniu/android/common/Config;->preQueryHosts()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 71
    :goto_0
    new-instance v3, Lcom/qiniu/android/http/request/RequestTransaction;

    invoke-direct {v3, v2, v1}, Lcom/qiniu/android/http/request/RequestTransaction;-><init>(Ljava/util/List;Lcom/qiniu/android/storage/UpToken;)V

    sput-object v3, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer;->serverConfigTransaction:Lcom/qiniu/android/http/request/RequestTransaction;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static declared-synchronized createServerUserConfigTransaction()Lcom/qiniu/android/http/request/RequestTransaction;
    .locals 4

    const-class v0, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer;

    monitor-enter v0

    .line 105
    :try_start_0
    sget-object v1, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer;->serverUserConfigTransaction:Lcom/qiniu/android/http/request/RequestTransaction;

    const/4 v2, 0x0

    if-nez v1, :cond_4

    sget-object v1, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer;->Token:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_2

    .line 109
    :cond_0
    invoke-static {v1}, Lcom/qiniu/android/storage/UpToken;->parse(Ljava/lang/String;)Lcom/qiniu/android/storage/UpToken;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 110
    invoke-virtual {v1}, Lcom/qiniu/android/storage/UpToken;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 115
    :cond_1
    sget-object v2, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer;->Hosts:[Ljava/lang/String;

    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    .line 116
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 118
    :cond_2
    invoke-static {}, Lcom/qiniu/android/common/Config;->preQueryHosts()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 120
    :goto_0
    new-instance v3, Lcom/qiniu/android/http/request/RequestTransaction;

    invoke-direct {v3, v2, v1}, Lcom/qiniu/android/http/request/RequestTransaction;-><init>(Ljava/util/List;Lcom/qiniu/android/storage/UpToken;)V

    sput-object v3, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer;->serverUserConfigTransaction:Lcom/qiniu/android/http/request/RequestTransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit v0

    return-object v3

    .line 111
    :cond_3
    :goto_1
    monitor-exit v0

    return-object v2

    .line 106
    :cond_4
    :goto_2
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static declared-synchronized destroyServerConfigTransaction()V
    .locals 2

    const-class v0, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer;

    monitor-enter v0

    const/4 v1, 0x0

    .line 76
    :try_start_0
    sput-object v1, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer;->serverConfigTransaction:Lcom/qiniu/android/http/request/RequestTransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static declared-synchronized destroyServerUserConfigTransaction()V
    .locals 2

    const-class v0, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer;

    monitor-enter v0

    const/4 v1, 0x0

    .line 125
    :try_start_0
    sput-object v1, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer;->serverUserConfigTransaction:Lcom/qiniu/android/http/request/RequestTransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static getServerConfigFromServer(Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$ServerConfigHandler;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-static {}, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer;->createServerConfigTransaction()Lcom/qiniu/android/http/request/RequestTransaction;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 36
    invoke-interface {p0, v0}, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$ServerConfigHandler;->handle(Lcom/qiniu/android/storage/serverConfig/ServerConfig;)V

    return-void

    .line 40
    :cond_1
    new-instance v1, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$1;

    invoke-direct {v1, p0}, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$1;-><init>(Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$ServerConfigHandler;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/qiniu/android/http/request/RequestTransaction;->serverConfig(ZLcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V

    return-void
.end method

.method static getServerUserConfigFromServer(Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$ServerUserConfigHandler;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-static {}, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer;->createServerUserConfigTransaction()Lcom/qiniu/android/http/request/RequestTransaction;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 87
    invoke-interface {p0, v0}, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$ServerUserConfigHandler;->handle(Lcom/qiniu/android/storage/serverConfig/ServerUserConfig;)V

    return-void

    .line 91
    :cond_1
    new-instance v1, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$2;

    invoke-direct {v1, p0}, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$2;-><init>(Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$ServerUserConfigHandler;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/qiniu/android/http/request/RequestTransaction;->serverUserConfig(ZLcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V

    return-void
.end method

.method static setHosts([Ljava/lang/String;)V
    .locals 0

    .line 26
    sput-object p0, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer;->Hosts:[Ljava/lang/String;

    return-void
.end method

.method static setToken(Ljava/lang/String;)V
    .locals 0

    .line 22
    sput-object p0, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer;->Token:Ljava/lang/String;

    return-void
.end method
