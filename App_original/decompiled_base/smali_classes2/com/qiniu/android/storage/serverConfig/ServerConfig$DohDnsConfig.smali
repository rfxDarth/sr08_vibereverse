.class public Lcom/qiniu/android/storage/serverConfig/ServerConfig$DohDnsConfig;
.super Ljava/lang/Object;
.source "ServerConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/storage/serverConfig/ServerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DohDnsConfig"
.end annotation


# instance fields
.field private enable:Ljava/lang/Boolean;

.field private ipv4Server:Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsServer;

.field private ipv6Server:Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsServer;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    .line 343
    :cond_0
    const-string v0, "enabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 344
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DohDnsConfig;->enable:Ljava/lang/Boolean;

    .line 347
    :cond_1
    new-instance v0, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsServer;

    const-string v1, "ipv4"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsServer;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DohDnsConfig;->ipv4Server:Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsServer;

    .line 348
    new-instance v0, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsServer;

    const-string v1, "ipv6"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsServer;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DohDnsConfig;->ipv6Server:Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsServer;

    return-void
.end method


# virtual methods
.method public getEnable()Ljava/lang/Boolean;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DohDnsConfig;->enable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIpv4Server()Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsServer;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DohDnsConfig;->ipv4Server:Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsServer;

    return-object v0
.end method

.method public getIpv6Server()Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsServer;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig$DohDnsConfig;->ipv6Server:Lcom/qiniu/android/storage/serverConfig/ServerConfig$DnsServer;

    return-object v0
.end method
