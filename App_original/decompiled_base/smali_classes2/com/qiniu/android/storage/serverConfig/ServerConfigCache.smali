.class Lcom/qiniu/android/storage/serverConfig/ServerConfigCache;
.super Ljava/lang/Object;
.source "ServerConfigCache.java"


# static fields
.field private static final kServerConfigDiskKey:Ljava/lang/String; = "ServerConfig"

.field private static final kServerUserConfigDiskKey:Ljava/lang/String; = "ServerUserConfig"


# instance fields
.field private final configCache:Lcom/qiniu/android/utils/Cache;

.field private final userConfigCache:Lcom/qiniu/android/utils/Cache;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/qiniu/android/utils/Cache$Builder;

    const-class v1, Lcom/qiniu/android/storage/serverConfig/ServerConfig;

    invoke-direct {v0, v1}, Lcom/qiniu/android/utils/Cache$Builder;-><init>(Ljava/lang/Class;)V

    .line 12
    const-string/jumbo v1, "v1"

    invoke-virtual {v0, v1}, Lcom/qiniu/android/utils/Cache$Builder;->setVersion(Ljava/lang/String;)Lcom/qiniu/android/utils/Cache$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/qiniu/android/utils/Cache$Builder;->builder()Lcom/qiniu/android/utils/Cache;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfigCache;->configCache:Lcom/qiniu/android/utils/Cache;

    .line 14
    new-instance v0, Lcom/qiniu/android/utils/Cache$Builder;

    const-class v2, Lcom/qiniu/android/storage/serverConfig/ServerUserConfig;

    invoke-direct {v0, v2}, Lcom/qiniu/android/utils/Cache$Builder;-><init>(Ljava/lang/Class;)V

    .line 15
    invoke-virtual {v0, v1}, Lcom/qiniu/android/utils/Cache$Builder;->setVersion(Ljava/lang/String;)Lcom/qiniu/android/utils/Cache$Builder;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/qiniu/android/utils/Cache$Builder;->builder()Lcom/qiniu/android/utils/Cache;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfigCache;->userConfigCache:Lcom/qiniu/android/utils/Cache;

    return-void
.end method


# virtual methods
.method getConfig()Lcom/qiniu/android/storage/serverConfig/ServerConfig;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfigCache;->configCache:Lcom/qiniu/android/utils/Cache;

    const-string v1, "ServerConfig"

    invoke-virtual {v0, v1}, Lcom/qiniu/android/utils/Cache;->cacheForKey(Ljava/lang/String;)Lcom/qiniu/android/utils/Cache$Object;

    move-result-object v0

    .line 24
    instance-of v1, v0, Lcom/qiniu/android/storage/serverConfig/ServerConfig;

    if-eqz v1, :cond_0

    .line 25
    check-cast v0, Lcom/qiniu/android/storage/serverConfig/ServerConfig;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getUserConfig()Lcom/qiniu/android/storage/serverConfig/ServerUserConfig;
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfigCache;->userConfigCache:Lcom/qiniu/android/utils/Cache;

    const-string v1, "ServerUserConfig"

    invoke-virtual {v0, v1}, Lcom/qiniu/android/utils/Cache;->cacheForKey(Ljava/lang/String;)Lcom/qiniu/android/utils/Cache$Object;

    move-result-object v0

    .line 36
    instance-of v1, v0, Lcom/qiniu/android/storage/serverConfig/ServerUserConfig;

    if-eqz v1, :cond_0

    .line 37
    check-cast v0, Lcom/qiniu/android/storage/serverConfig/ServerUserConfig;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized removeConfigCache()V
    .locals 1

    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfigCache;->configCache:Lcom/qiniu/android/utils/Cache;

    invoke-virtual {v0}, Lcom/qiniu/android/utils/Cache;->clearDiskCache()V

    .line 48
    iget-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfigCache;->configCache:Lcom/qiniu/android/utils/Cache;

    invoke-virtual {v0}, Lcom/qiniu/android/utils/Cache;->clearMemoryCache()V

    .line 49
    iget-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfigCache;->userConfigCache:Lcom/qiniu/android/utils/Cache;

    invoke-virtual {v0}, Lcom/qiniu/android/utils/Cache;->clearDiskCache()V

    .line 50
    iget-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfigCache;->userConfigCache:Lcom/qiniu/android/utils/Cache;

    invoke-virtual {v0}, Lcom/qiniu/android/utils/Cache;->clearMemoryCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method setConfig(Lcom/qiniu/android/storage/serverConfig/ServerConfig;)V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfigCache;->configCache:Lcom/qiniu/android/utils/Cache;

    const-string v1, "ServerConfig"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/qiniu/android/utils/Cache;->cache(Ljava/lang/String;Lcom/qiniu/android/utils/Cache$Object;Z)V

    return-void
.end method

.method setUserConfig(Lcom/qiniu/android/storage/serverConfig/ServerUserConfig;)V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfigCache;->userConfigCache:Lcom/qiniu/android/utils/Cache;

    const-string v1, "ServerUserConfig"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/qiniu/android/utils/Cache;->cache(Ljava/lang/String;Lcom/qiniu/android/utils/Cache$Object;Z)V

    return-void
.end method
