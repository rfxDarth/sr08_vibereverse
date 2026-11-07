.class public Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsConfig;
.super Ljava/lang/Object;
.source "ServerConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/storage/serverConfig/ServerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DnsConfig"
.end annotation


# instance fields
.field private clearCache:Z

.field private clearId:J

.field private dohDnsConfig:Lcom/qiniu/android/storage/serverConfig/ServerConfig$DohDnsConfig;

.field private enable:Ljava/lang/Boolean;

.field private udpDnsConfig:Lcom/qiniu/android/storage/serverConfig/ServerConfig$UdpDnsConfig;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsConfig;->clearCache:Z

    if-nez p1, :cond_0

    return-void

    .line 170
    :cond_0
    const-string v1, "enabled"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 171
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsConfig;->enable:Ljava/lang/Boolean;

    .line 173
    :cond_1
    const-string v1, "clear_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsConfig;->clearId:J

    .line 174
    const-string v1, "clear_cache"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsConfig;->clearCache:Z

    .line 175
    new-instance v0, Lcom/qiniu/android/storage/serverConfig/ServerConfig$UdpDnsConfig;

    const-string/jumbo v1, "udp"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$UdpDnsConfig;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsConfig;->udpDnsConfig:Lcom/qiniu/android/storage/serverConfig/ServerConfig$UdpDnsConfig;

    .line 176
    new-instance v0, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DohDnsConfig;

    const-string v1, "doh"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DohDnsConfig;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsConfig;->dohDnsConfig:Lcom/qiniu/android/storage/serverConfig/ServerConfig$DohDnsConfig;

    return-void
.end method


# virtual methods
.method public getClearCache()Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsConfig;->clearCache:Z

    return v0
.end method

.method public getClearId()J
    .locals 2

    .line 194
    iget-wide v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsConfig;->clearId:J

    return-wide v0
.end method

.method public getDohDnsConfig()Lcom/qiniu/android/storage/serverConfig/ServerConfig$DohDnsConfig;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsConfig;->dohDnsConfig:Lcom/qiniu/android/storage/serverConfig/ServerConfig$DohDnsConfig;

    return-object v0
.end method

.method public getEnable()Ljava/lang/Boolean;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsConfig;->enable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUdpDnsConfig()Lcom/qiniu/android/storage/serverConfig/ServerConfig$UdpDnsConfig;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsConfig;->udpDnsConfig:Lcom/qiniu/android/storage/serverConfig/ServerConfig$UdpDnsConfig;

    return-object v0
.end method
