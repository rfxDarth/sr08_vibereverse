.class public Lcom/qiniu/android/storage/serverConfig/ServerConfig;
.super Ljava/lang/Object;
.source "ServerConfig.java"

# interfaces
.implements Lcom/qiniu/android/utils/Cache$Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/storage/serverConfig/ServerConfig$ConnectCheckConfig;,
        Lcom/qiniu/android/storage/serverConfig/ServerConfig$DohDnsConfig;,
        Lcom/qiniu/android/storage/serverConfig/ServerConfig$UdpDnsConfig;,
        Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsServer;,
        Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsConfig;,
        Lcom/qiniu/android/storage/serverConfig/ServerConfig$RegionConfig;
    }
.end annotation


# instance fields
.field private connectCheckConfig:Lcom/qiniu/android/storage/serverConfig/ServerConfig$ConnectCheckConfig;

.field private dnsConfig:Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsConfig;

.field private info:Lorg/json/JSONObject;

.field private regionConfig:Lcom/qiniu/android/storage/serverConfig/ServerConfig$RegionConfig;

.field private timestamp:J

.field private ttl:J


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 8

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xa

    .line 21
    iput-wide v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig;->ttl:J

    if-nez p1, :cond_0

    goto :goto_1

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig;->info:Lorg/json/JSONObject;

    .line 39
    const-string/jumbo v2, "ttl"

    const-wide/16 v3, 0x12c

    invoke-virtual {p1, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig;->ttl:J

    .line 41
    const-string/jumbo v2, "timestamp"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 42
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig;->timestamp:J

    .line 44
    :cond_1
    iget-wide v3, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig;->timestamp:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    .line 45
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->currentSecondTimestamp()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig;->timestamp:J

    .line 47
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 52
    :cond_2
    :goto_0
    new-instance v2, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsConfig;

    const-string v3, "dns"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsConfig;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig;->dnsConfig:Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsConfig;

    .line 53
    new-instance v2, Lcom/qiniu/android/storage/serverConfig/ServerConfig$RegionConfig;

    const-string v3, "region"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$RegionConfig;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig;->regionConfig:Lcom/qiniu/android/storage/serverConfig/ServerConfig$RegionConfig;

    .line 54
    new-instance v2, Lcom/qiniu/android/storage/serverConfig/ServerConfig$ConnectCheckConfig;

    const-string v3, "connection_check"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$ConnectCheckConfig;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig;->connectCheckConfig:Lcom/qiniu/android/storage/serverConfig/ServerConfig$ConnectCheckConfig;

    .line 56
    iget-wide v2, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig;->ttl:J

    cmp-long p1, v2, v0

    if-gez p1, :cond_3

    .line 57
    iput-wide v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig;->ttl:J

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public getConnectCheckConfig()Lcom/qiniu/android/storage/serverConfig/ServerConfig$ConnectCheckConfig;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig;->connectCheckConfig:Lcom/qiniu/android/storage/serverConfig/ServerConfig$ConnectCheckConfig;

    return-object v0
.end method

.method public getDnsConfig()Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsConfig;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig;->dnsConfig:Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsConfig;

    return-object v0
.end method

.method public getInfo()Lorg/json/JSONObject;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/qiniu/android/storage/serverConfig/ServerConfig;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getRegionConfig()Lcom/qiniu/android/storage/serverConfig/ServerConfig$RegionConfig;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig;->regionConfig:Lcom/qiniu/android/storage/serverConfig/ServerConfig$RegionConfig;

    return-object v0
.end method

.method public isValid()Z
    .locals 6

    .line 113
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->currentSecondTimestamp()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig;->timestamp:J

    iget-wide v4, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig;->ttl:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig;->info:Lorg/json/JSONObject;

    return-object v0
.end method
