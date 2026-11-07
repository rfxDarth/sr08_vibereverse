.class public Lcom/qiniu/android/storage/GlobalConfiguration;
.super Ljava/lang/Object;
.source "GlobalConfiguration.java"


# static fields
.field public static DefaultConnectCheckURLStrings:[Ljava/lang/String;

.field public static DefaultDohIpv4Servers:[Ljava/lang/String;

.field public static DefaultDohIpv6Servers:[Ljava/lang/String;

.field public static DefaultUdpDnsIpv4Servers:[Ljava/lang/String;

.field public static DefaultUdpDnsIpv6Servers:[Ljava/lang/String;

.field public static appContext:Landroid/content/Context;

.field private static final configuration:Lcom/qiniu/android/storage/GlobalConfiguration;


# instance fields
.field public connectCheckEnable:Z

.field public connectCheckTimeout:I

.field public connectCheckURLStrings:[Ljava/lang/String;

.field public dns:Lcom/qiniu/android/http/dns/Dns;

.field public dnsCacheDir:Ljava/lang/String;

.field public dnsCacheMaxTTL:I

.field public dnsCacheTime:I

.field public dnsRepreHostNum:I

.field public dnsResolveTimeout:I

.field public dohEnable:Z

.field public dohIpv4Servers:[Ljava/lang/String;

.field public dohIpv6Servers:[Ljava/lang/String;

.field public enableHttp3:Z

.field public globalHostFrozenTime:I

.field public isDnsOpen:Z

.field public partialHostFrozenTime:I

.field public udpDnsEnable:Z

.field public udpDnsIpv4Servers:[Ljava/lang/String;

.field public udpDnsIpv6Servers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    const-string v0, "WyIyMjMuNS41LjUiLCAiMTE0LjExNC4xMTQuMTE0IiwgIjEuMS4xLjEiLCAiOC44LjguOCJd"

    invoke-static {v0}, Lcom/qiniu/android/storage/GlobalConfiguration;->parseBase64Array(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qiniu/android/storage/GlobalConfiguration;->DefaultUdpDnsIpv4Servers:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 83
    sput-object v0, Lcom/qiniu/android/storage/GlobalConfiguration;->DefaultUdpDnsIpv6Servers:[Ljava/lang/String;

    .line 101
    const-string v1, "WyJodHRwczovLzIyMy42LjYuNi9kbnMtcXVlcnkiLCAiaHR0cHM6Ly84LjguOC44L2Rucy1xdWVyeSJd"

    invoke-static {v1}, Lcom/qiniu/android/storage/GlobalConfiguration;->parseBase64Array(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/qiniu/android/storage/GlobalConfiguration;->DefaultDohIpv4Servers:[Ljava/lang/String;

    .line 115
    sput-object v0, Lcom/qiniu/android/storage/GlobalConfiguration;->DefaultDohIpv6Servers:[Ljava/lang/String;

    .line 144
    const-string v0, "WyJodHRwczovL3d3dy5xaW5pdS5jb20iLCAiaHR0cHM6Ly93d3cuYmFpZHUuY29tIiwgImh0dHBzOi8vd3d3Lmdvb2dsZS5jb20iXQ=="

    invoke-static {v0}, Lcom/qiniu/android/storage/GlobalConfiguration;->parseBase64Array(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qiniu/android/storage/GlobalConfiguration;->DefaultConnectCheckURLStrings:[Ljava/lang/String;

    .line 171
    new-instance v0, Lcom/qiniu/android/storage/GlobalConfiguration;

    invoke-direct {v0}, Lcom/qiniu/android/storage/GlobalConfiguration;-><init>()V

    sput-object v0, Lcom/qiniu/android/storage/GlobalConfiguration;->configuration:Lcom/qiniu/android/storage/GlobalConfiguration;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->isDnsOpen:Z

    const/4 v1, 0x2

    .line 31
    iput v1, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->dnsRepreHostNum:I

    const/4 v2, 0x3

    .line 37
    iput v2, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->dnsResolveTimeout:I

    const/16 v2, 0x78

    .line 43
    iput v2, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->dnsCacheTime:I

    const/16 v2, 0x258

    .line 49
    iput v2, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->dnsCacheMaxTTL:I

    const/4 v2, 0x0

    .line 54
    iput-object v2, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->dns:Lcom/qiniu/android/http/dns/Dns;

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qiniu/android/utils/Utils;->sdkDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/dnsCache/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->dnsCacheDir:Ljava/lang/String;

    .line 64
    iput-boolean v0, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->udpDnsEnable:Z

    .line 77
    iput-object v2, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->udpDnsIpv4Servers:[Ljava/lang/String;

    .line 90
    iput-object v2, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->udpDnsIpv6Servers:[Ljava/lang/String;

    .line 95
    iput-boolean v0, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->dohEnable:Z

    .line 109
    iput-object v2, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->dohIpv4Servers:[Ljava/lang/String;

    .line 123
    iput-object v2, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->dohIpv6Servers:[Ljava/lang/String;

    const/16 v3, 0xa

    .line 131
    iput v3, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->globalHostFrozenTime:I

    const/16 v3, 0x12c

    .line 137
    iput v3, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->partialHostFrozenTime:I

    .line 152
    iput-object v2, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->connectCheckURLStrings:[Ljava/lang/String;

    .line 157
    iput v1, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->connectCheckTimeout:I

    .line 162
    iput-boolean v0, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->connectCheckEnable:Z

    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->enableHttp3:Z

    return-void
.end method

.method public static getInstance()Lcom/qiniu/android/storage/GlobalConfiguration;
    .locals 1

    .line 182
    sget-object v0, Lcom/qiniu/android/storage/GlobalConfiguration;->configuration:Lcom/qiniu/android/storage/GlobalConfiguration;

    return-object v0
.end method

.method public static parseBase64Array(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 258
    :try_start_0
    invoke-static {p0}, Lcom/qiniu/android/utils/UrlSafeBase64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    .line 259
    new-instance v0, Lorg/json/JSONArray;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p0

    .line 261
    new-array v1, p0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    .line 263
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception p0

    .line 267
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getConnectCheckUrls()[Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->connectCheckURLStrings:[Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 246
    :cond_0
    sget-object v0, Lcom/qiniu/android/storage/GlobalConfiguration;->DefaultConnectCheckURLStrings:[Ljava/lang/String;

    return-object v0
.end method

.method public getDohIpv4Servers()[Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->dohIpv4Servers:[Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 220
    :cond_0
    sget-object v0, Lcom/qiniu/android/storage/GlobalConfiguration;->DefaultDohIpv4Servers:[Ljava/lang/String;

    return-object v0
.end method

.method public getDohIpv6Servers()[Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->dohIpv6Servers:[Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 233
    :cond_0
    sget-object v0, Lcom/qiniu/android/storage/GlobalConfiguration;->DefaultDohIpv6Servers:[Ljava/lang/String;

    return-object v0
.end method

.method public getUdpDnsIpv4Servers()[Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->udpDnsIpv4Servers:[Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 194
    :cond_0
    sget-object v0, Lcom/qiniu/android/storage/GlobalConfiguration;->DefaultUdpDnsIpv4Servers:[Ljava/lang/String;

    return-object v0
.end method

.method public getUdpDnsIpv6Servers()[Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/qiniu/android/storage/GlobalConfiguration;->udpDnsIpv6Servers:[Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 207
    :cond_0
    sget-object v0, Lcom/qiniu/android/storage/GlobalConfiguration;->DefaultUdpDnsIpv6Servers:[Ljava/lang/String;

    return-object v0
.end method
