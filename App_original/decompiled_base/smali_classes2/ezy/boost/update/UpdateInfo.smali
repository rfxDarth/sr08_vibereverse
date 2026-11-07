.class public Lezy/boost/update/UpdateInfo;
.super Ljava/lang/Object;
.source "UpdateInfo.java"


# instance fields
.field public hasUpdate:Z

.field public isAutoInstall:Z

.field public isForce:Z

.field public isIgnorable:Z

.field public isSilent:Z

.field public maxTimes:I

.field public md5:Ljava/lang/String;

.field public size:J

.field public updateContent:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lezy/boost/update/UpdateInfo;->hasUpdate:Z

    .line 26
    iput-boolean v0, p0, Lezy/boost/update/UpdateInfo;->isSilent:Z

    .line 28
    iput-boolean v0, p0, Lezy/boost/update/UpdateInfo;->isForce:Z

    const/4 v1, 0x1

    .line 30
    iput-boolean v1, p0, Lezy/boost/update/UpdateInfo;->isAutoInstall:Z

    .line 32
    iput-boolean v1, p0, Lezy/boost/update/UpdateInfo;->isIgnorable:Z

    .line 34
    iput v0, p0, Lezy/boost/update/UpdateInfo;->maxTimes:I

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lezy/boost/update/UpdateInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 47
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 48
    const-string p0, "data"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lezy/boost/update/UpdateInfo;->parse(Lorg/json/JSONObject;)Lezy/boost/update/UpdateInfo;

    move-result-object p0

    return-object p0
.end method

.method private static parse(Lorg/json/JSONObject;)Lezy/boost/update/UpdateInfo;
    .locals 5

    .line 52
    new-instance v0, Lezy/boost/update/UpdateInfo;

    invoke-direct {v0}, Lezy/boost/update/UpdateInfo;-><init>()V

    if-nez p0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    const-string v1, "hasUpdate"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lezy/boost/update/UpdateInfo;->hasUpdate:Z

    if-nez v1, :cond_1

    :goto_0
    return-object v0

    .line 60
    :cond_1
    const-string v1, "isSilent"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lezy/boost/update/UpdateInfo;->isSilent:Z

    .line 61
    const-string v1, "isForce"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lezy/boost/update/UpdateInfo;->isForce:Z

    .line 62
    iget-boolean v1, v0, Lezy/boost/update/UpdateInfo;->isSilent:Z

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    const-string v4, "isAutoInstall"

    invoke-virtual {p0, v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lezy/boost/update/UpdateInfo;->isAutoInstall:Z

    .line 63
    const-string v1, "isIgnorable"

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lezy/boost/update/UpdateInfo;->isIgnorable:Z

    .line 65
    const-string/jumbo v1, "versionCode"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lezy/boost/update/UpdateInfo;->versionCode:I

    .line 66
    const-string/jumbo v1, "versionName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lezy/boost/update/UpdateInfo;->versionName:Ljava/lang/String;

    .line 67
    const-string/jumbo v1, "updateContent"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lezy/boost/update/UpdateInfo;->updateContent:Ljava/lang/String;

    .line 69
    const-string/jumbo v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lezy/boost/update/UpdateInfo;->url:Ljava/lang/String;

    .line 70
    const-string v1, "md5"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lezy/boost/update/UpdateInfo;->md5:Ljava/lang/String;

    .line 71
    const-string/jumbo v1, "size"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lezy/boost/update/UpdateInfo;->size:J

    return-object v0
.end method
