.class public Lcom/qiniu/android/storage/serverConfig/ServerConfig$ConnectCheckConfig;
.super Ljava/lang/Object;
.source "ServerConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/storage/serverConfig/ServerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectCheckConfig"
.end annotation


# instance fields
.field private enable:Ljava/lang/Boolean;

.field private isOverride:Ljava/lang/Boolean;

.field private timeoutMs:Ljava/lang/Integer;

.field private urls:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    goto :goto_1

    .line 395
    :cond_0
    const-string v0, "override_default"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 396
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig$ConnectCheckConfig;->isOverride:Ljava/lang/Boolean;

    .line 399
    :cond_1
    const-string v0, "enabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 400
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig$ConnectCheckConfig;->enable:Ljava/lang/Boolean;

    .line 403
    :cond_2
    const-string/jumbo v0, "timeout_ms"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 404
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig$ConnectCheckConfig;->timeoutMs:Ljava/lang/Integer;

    .line 407
    :cond_3
    const-string/jumbo v0, "urls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 409
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 410
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 411
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 412
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 414
    :cond_4
    iput-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig$ConnectCheckConfig;->urls:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 416
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public getEnable()Ljava/lang/Boolean;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig$ConnectCheckConfig;->enable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getOverride()Ljava/lang/Boolean;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig$ConnectCheckConfig;->isOverride:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTimeoutMs()Ljava/lang/Integer;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig$ConnectCheckConfig;->timeoutMs:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUrls()[Ljava/lang/String;
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig$ConnectCheckConfig;->urls:[Ljava/lang/String;

    return-object v0
.end method
