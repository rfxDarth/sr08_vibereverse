.class public Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;
.super Ljava/lang/Object;
.source "ServerConfigMonitor.java"


# static fields
.field private static final TransactionKey:Ljava/lang/String; = "ServerConfig"

.field private static final configMonitor:Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;


# instance fields
.field private final cache:Lcom/qiniu/android/storage/serverConfig/ServerConfigCache;

.field private enable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;

    invoke-direct {v0}, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;-><init>()V

    sput-object v0, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;->configMonitor:Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;->enable:Z

    .line 18
    new-instance v0, Lcom/qiniu/android/storage/serverConfig/ServerConfigCache;

    invoke-direct {v0}, Lcom/qiniu/android/storage/serverConfig/ServerConfigCache;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;->cache:Lcom/qiniu/android/storage/serverConfig/ServerConfigCache;

    return-void
.end method

.method static synthetic access$000()Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;
    .locals 1

    .line 14
    sget-object v0, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;->configMonitor:Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;->monitor()V

    return-void
.end method

.method static synthetic access$200(Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;Lcom/qiniu/android/storage/serverConfig/ServerConfig;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;->handleServerConfig(Lcom/qiniu/android/storage/serverConfig/ServerConfig;)V

    return-void
.end method

.method static synthetic access$300(Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;)Lcom/qiniu/android/storage/serverConfig/ServerConfigCache;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;->cache:Lcom/qiniu/android/storage/serverConfig/ServerConfigCache;

    return-object p0
.end method

.method static synthetic access$400(Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;Lcom/qiniu/android/storage/serverConfig/ServerUserConfig;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;->handleServerUserConfig(Lcom/qiniu/android/storage/serverConfig/ServerUserConfig;)V

    return-void
.end method

.method public static declared-synchronized endMonitor()V
    .locals 4

    const-class v0, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;

    monitor-enter v0

    .line 87
    :try_start_0
    invoke-static {}, Lcom/qiniu/android/transaction/TransactionManager;->getInstance()Lcom/qiniu/android/transaction/TransactionManager;

    move-result-object v1

    .line 88
    const-string v2, "ServerConfig"

    invoke-virtual {v1, v2}, Lcom/qiniu/android/transaction/TransactionManager;->transactionsForName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 90
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qiniu/android/transaction/TransactionManager$Transaction;

    .line 91
    invoke-virtual {v1, v3}, Lcom/qiniu/android/transaction/TransactionManager;->removeTransaction(Lcom/qiniu/android/transaction/TransactionManager$Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 94
    :cond_0
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

.method private handleServerConfig(Lcom/qiniu/android/storage/serverConfig/ServerConfig;)V
    .locals 8

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;->cache:Lcom/qiniu/android/storage/serverConfig/ServerConfigCache;

    invoke-virtual {v0}, Lcom/qiniu/android/storage/serverConfig/ServerConfigCache;->getConfig()Lcom/qiniu/android/storage/serverConfig/ServerConfig;

    move-result-object v0

    .line 143
    invoke-virtual {p1}, Lcom/qiniu/android/storage/serverConfig/ServerConfig;->getRegionConfig()Lcom/qiniu/android/storage/serverConfig/ServerConfig$RegionConfig;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {v0}, Lcom/qiniu/android/storage/serverConfig/ServerConfig;->getRegionConfig()Lcom/qiniu/android/storage/serverConfig/ServerConfig$RegionConfig;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    .line 146
    invoke-virtual {v1}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$RegionConfig;->getClearId()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$RegionConfig;->getClearId()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    invoke-virtual {v1}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$RegionConfig;->getClearCache()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 147
    invoke-static {}, Lcom/qiniu/android/common/AutoZone;->clearCache()V

    .line 152
    :cond_2
    invoke-virtual {p1}, Lcom/qiniu/android/storage/serverConfig/ServerConfig;->getDnsConfig()Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsConfig;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 154
    invoke-virtual {v1}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsConfig;->getEnable()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 155
    invoke-static {}, Lcom/qiniu/android/storage/GlobalConfiguration;->getInstance()Lcom/qiniu/android/storage/GlobalConfiguration;

    move-result-object v3

    invoke-virtual {v1}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsConfig;->getEnable()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lcom/qiniu/android/storage/GlobalConfiguration;->isDnsOpen:Z

    :cond_3
    if-eqz v0, :cond_4

    .line 159
    invoke-virtual {v0}, Lcom/qiniu/android/storage/serverConfig/ServerConfig;->getDnsConfig()Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsConfig;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_5

    .line 160
    invoke-virtual {v1}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsConfig;->getClearId()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsConfig;->getClearId()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_5

    invoke-virtual {v1}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsConfig;->getClearCache()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 162
    :try_start_0
    invoke-static {}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->getInstance()Lcom/qiniu/android/http/dns/DnsPrefetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->clearDnsCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 168
    :cond_5
    :goto_1
    invoke-virtual {v1}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsConfig;->getUdpDnsConfig()Lcom/qiniu/android/storage/serverConfig/ServerConfig$UdpDnsConfig;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 170
    invoke-virtual {v0}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$UdpDnsConfig;->getEnable()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 171
    invoke-static {}, Lcom/qiniu/android/storage/GlobalConfiguration;->getInstance()Lcom/qiniu/android/storage/GlobalConfiguration;

    move-result-object v2

    invoke-virtual {v0}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$UdpDnsConfig;->getEnable()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v2, Lcom/qiniu/android/storage/GlobalConfiguration;->udpDnsEnable:Z

    .line 174
    :cond_6
    invoke-virtual {v0}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$UdpDnsConfig;->getIpv4Server()Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsServer;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 175
    invoke-virtual {v2}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsServer;->getIsOverride()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 176
    invoke-virtual {v2}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsServer;->getServers()[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/qiniu/android/storage/GlobalConfiguration;->DefaultUdpDnsIpv4Servers:[Ljava/lang/String;

    .line 179
    :cond_7
    invoke-virtual {v0}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$UdpDnsConfig;->getIpv6Server()Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsServer;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 180
    invoke-virtual {v0}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsServer;->getIsOverride()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 181
    invoke-virtual {v0}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsServer;->getServers()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qiniu/android/storage/GlobalConfiguration;->DefaultUdpDnsIpv6Servers:[Ljava/lang/String;

    .line 186
    :cond_8
    invoke-virtual {v1}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsConfig;->getDohDnsConfig()Lcom/qiniu/android/storage/serverConfig/ServerConfig$DohDnsConfig;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 188
    invoke-virtual {v0}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DohDnsConfig;->getEnable()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 189
    invoke-static {}, Lcom/qiniu/android/storage/GlobalConfiguration;->getInstance()Lcom/qiniu/android/storage/GlobalConfiguration;

    move-result-object v1

    invoke-virtual {v0}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DohDnsConfig;->getEnable()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v1, Lcom/qiniu/android/storage/GlobalConfiguration;->dohEnable:Z

    .line 192
    :cond_9
    invoke-virtual {v0}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DohDnsConfig;->getIpv4Server()Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsServer;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 193
    invoke-virtual {v1}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsServer;->getIsOverride()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 194
    invoke-virtual {v1}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsServer;->getServers()[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/qiniu/android/storage/GlobalConfiguration;->DefaultDohIpv4Servers:[Ljava/lang/String;

    .line 197
    :cond_a
    invoke-virtual {v0}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DohDnsConfig;->getIpv6Server()Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsServer;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 198
    invoke-virtual {v0}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsServer;->getIsOverride()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 199
    invoke-virtual {v0}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsServer;->getServers()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qiniu/android/storage/GlobalConfiguration;->DefaultDohIpv6Servers:[Ljava/lang/String;

    .line 205
    :cond_b
    invoke-virtual {p1}, Lcom/qiniu/android/storage/serverConfig/ServerConfig;->getConnectCheckConfig()Lcom/qiniu/android/storage/serverConfig/ServerConfig$ConnectCheckConfig;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 207
    invoke-virtual {p1}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$ConnectCheckConfig;->getEnable()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 208
    invoke-static {}, Lcom/qiniu/android/storage/GlobalConfiguration;->getInstance()Lcom/qiniu/android/storage/GlobalConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$ConnectCheckConfig;->getEnable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/qiniu/android/storage/GlobalConfiguration;->connectCheckEnable:Z

    .line 211
    :cond_c
    invoke-virtual {p1}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$ConnectCheckConfig;->getTimeoutMs()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 212
    invoke-static {}, Lcom/qiniu/android/storage/GlobalConfiguration;->getInstance()Lcom/qiniu/android/storage/GlobalConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$ConnectCheckConfig;->getTimeoutMs()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/qiniu/android/storage/GlobalConfiguration;->connectCheckTimeout:I

    .line 215
    :cond_d
    invoke-virtual {p1}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$ConnectCheckConfig;->getUrls()[Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-virtual {p1}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$ConnectCheckConfig;->getOverride()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 217
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_e

    if-eqz v0, :cond_e

    array-length p1, v0

    if-lez p1, :cond_e

    .line 218
    sput-object v0, Lcom/qiniu/android/storage/GlobalConfiguration;->DefaultConnectCheckURLStrings:[Ljava/lang/String;

    :cond_e
    :goto_2
    return-void
.end method

.method private handleServerUserConfig(Lcom/qiniu/android/storage/serverConfig/ServerUserConfig;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {p1}, Lcom/qiniu/android/storage/serverConfig/ServerUserConfig;->getNetworkCheckEnable()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 229
    invoke-static {}, Lcom/qiniu/android/storage/GlobalConfiguration;->getInstance()Lcom/qiniu/android/storage/GlobalConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qiniu/android/storage/serverConfig/ServerUserConfig;->getNetworkCheckEnable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/qiniu/android/storage/GlobalConfiguration;->connectCheckEnable:Z

    .line 232
    :cond_1
    invoke-virtual {p1}, Lcom/qiniu/android/storage/serverConfig/ServerUserConfig;->getHttp3Enable()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 233
    invoke-static {}, Lcom/qiniu/android/storage/GlobalConfiguration;->getInstance()Lcom/qiniu/android/storage/GlobalConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qiniu/android/storage/serverConfig/ServerUserConfig;->getHttp3Enable()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/qiniu/android/storage/GlobalConfiguration;->enableHttp3:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private monitor()V
    .locals 2

    .line 97
    iget-boolean v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;->enable:Z

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;->cache:Lcom/qiniu/android/storage/serverConfig/ServerConfigCache;

    invoke-virtual {v0}, Lcom/qiniu/android/storage/serverConfig/ServerConfigCache;->getConfig()Lcom/qiniu/android/storage/serverConfig/ServerConfig;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {v0}, Lcom/qiniu/android/storage/serverConfig/ServerConfig;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 115
    :cond_1
    invoke-direct {p0, v0}, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;->handleServerConfig(Lcom/qiniu/android/storage/serverConfig/ServerConfig;)V

    goto :goto_1

    .line 103
    :cond_2
    :goto_0
    new-instance v0, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor$2;

    invoke-direct {v0, p0}, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor$2;-><init>(Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;)V

    invoke-static {v0}, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer;->getServerConfigFromServer(Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$ServerConfigHandler;)V

    .line 118
    :goto_1
    iget-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;->cache:Lcom/qiniu/android/storage/serverConfig/ServerConfigCache;

    invoke-virtual {v0}, Lcom/qiniu/android/storage/serverConfig/ServerConfigCache;->getUserConfig()Lcom/qiniu/android/storage/serverConfig/ServerUserConfig;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 119
    invoke-virtual {v0}, Lcom/qiniu/android/storage/serverConfig/ServerUserConfig;->isValid()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    .line 132
    :cond_3
    invoke-direct {p0, v0}, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;->handleServerUserConfig(Lcom/qiniu/android/storage/serverConfig/ServerUserConfig;)V

    return-void

    .line 120
    :cond_4
    :goto_2
    new-instance v0, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor$3;

    invoke-direct {v0, p0}, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor$3;-><init>(Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;)V

    invoke-static {v0}, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer;->getServerUserConfigFromServer(Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$ServerUserConfigHandler;)V

    return-void
.end method

.method public static removeConfigCache()V
    .locals 1

    .line 55
    sget-object v0, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;->configMonitor:Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;

    iget-object v0, v0, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;->cache:Lcom/qiniu/android/storage/serverConfig/ServerConfigCache;

    invoke-virtual {v0}, Lcom/qiniu/android/storage/serverConfig/ServerConfigCache;->removeConfigCache()V

    return-void
.end method

.method public static setEnable(Z)V
    .locals 1

    .line 30
    sget-object v0, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;->configMonitor:Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;

    iput-boolean p0, v0, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;->enable:Z

    return-void
.end method

.method public static setServerHosts([Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-static {p0}, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer;->setHosts([Ljava/lang/String;)V

    return-void
.end method

.method public static setToken(Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer;->setToken(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized startMonitor()V
    .locals 7

    const-class v0, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;->configMonitor:Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;

    iget-boolean v1, v1, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;->enable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 63
    monitor-exit v0

    return-void

    .line 66
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/qiniu/android/transaction/TransactionManager;->getInstance()Lcom/qiniu/android/transaction/TransactionManager;

    move-result-object v1

    .line 67
    const-string v2, "ServerConfig"

    invoke-virtual {v1, v2}, Lcom/qiniu/android/transaction/TransactionManager;->existTransactionsForName(Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 69
    monitor-exit v0

    return-void

    .line 72
    :cond_1
    :try_start_2
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0xf0

    .line 73
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x78

    .line 74
    new-instance v3, Lcom/qiniu/android/transaction/TransactionManager$Transaction;

    const-string v4, "ServerConfig"

    new-instance v5, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor$1;

    invoke-direct {v5}, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor$1;-><init>()V

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v2, v5}, Lcom/qiniu/android/transaction/TransactionManager$Transaction;-><init>(Ljava/lang/String;IILjava/lang/Runnable;)V

    .line 80
    invoke-virtual {v1, v3}, Lcom/qiniu/android/transaction/TransactionManager;->addTransaction(Lcom/qiniu/android/transaction/TransactionManager$Transaction;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
