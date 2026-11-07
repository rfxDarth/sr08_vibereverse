.class public Lcom/qiniu/android/storage/serverConfig/ServerConfig$RegionConfig;
.super Ljava/lang/Object;
.source "ServerConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/storage/serverConfig/ServerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegionConfig"
.end annotation


# instance fields
.field private clearCache:Z

.field private clearId:J


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    .line 130
    :cond_0
    const-string v0, "clear_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig$RegionConfig;->clearId:J

    .line 131
    const-string v0, "clear_cache"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig$RegionConfig;->clearCache:Z

    return-void
.end method


# virtual methods
.method public getClearCache()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig$RegionConfig;->clearCache:Z

    return v0
.end method

.method public getClearId()J
    .locals 2

    .line 140
    iget-wide v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfig$RegionConfig;->clearId:J

    return-wide v0
.end method
