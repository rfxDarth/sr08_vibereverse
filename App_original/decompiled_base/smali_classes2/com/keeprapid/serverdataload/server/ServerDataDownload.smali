.class public Lcom/keeprapid/serverdataload/server/ServerDataDownload;
.super Ljava/lang/Object;
.source "ServerDataDownload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keeprapid/serverdataload/server/ServerDataDownload$OnDownloadListener;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private downloadParam:Lorg/json/JSONObject;

.field private onDownloadListener:Lcom/keeprapid/serverdataload/server/ServerDataDownload$OnDownloadListener;

.field private order:Ljava/lang/String;

.field private sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

.field private server:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->TAG:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->server:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->order:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->context:Landroid/content/Context;

    .line 43
    new-instance v0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    invoke-direct {v0, p1}, Lcom/keeprapid/serverdataload/server/ServerDataLoad;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    return-void
.end method

.method static synthetic access$000(Lcom/keeprapid/serverdataload/server/ServerDataDownload;)Lcom/keeprapid/serverdataload/server/ServerDataDownload$OnDownloadListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->onDownloadListener:Lcom/keeprapid/serverdataload/server/ServerDataDownload$OnDownloadListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keeprapid/serverdataload/server/ServerDataDownload;)Lcom/keeprapid/serverdataload/server/ServerDataLoad;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    return-object p0
.end method


# virtual methods
.method public downloadBody()V
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    new-instance v1, Lcom/keeprapid/serverdataload/server/ServerDataDownload$2;

    invoke-direct {v1, p0}, Lcom/keeprapid/serverdataload/server/ServerDataDownload$2;-><init>(Lcom/keeprapid/serverdataload/server/ServerDataDownload;)V

    invoke-virtual {v0, v1}, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->setOnSendOrderListener(Lcom/keeprapid/serverdataload/server/ServerDataLoad$onSendOrderListener;)V

    .line 129
    iget-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    iget-object v1, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->server:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "http://api.keeprapid.com:8081/ronaldo-dc"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->server:Ljava/lang/String;

    :goto_0
    iget-object v3, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->order:Ljava/lang/String;

    .line 130
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "download_bodyfunction2"

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->order:Ljava/lang/String;

    :goto_1
    iget-object v3, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->downloadParam:Lorg/json/JSONObject;

    .line 129
    invoke-virtual {v0, v1, v2, v3}, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->sendOrderThread(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public downloadFitness()V
    .locals 7

    .line 64
    iget-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    iget-object v0, v0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->mid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keeprapid/serverdataload/util/OrmUtil;->getKey(Ljava/lang/String;)Lcom/keeprapid/serverdataload/model/Key;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    iget-object v1, v1, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->mid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keeprapid/serverdataload/util/OrmUtil;->getKey(Ljava/lang/String;)Lcom/keeprapid/serverdataload/model/Key;

    move-result-object v1

    .line 66
    iget v2, v0, Lcom/keeprapid/serverdataload/model/Key;->fitness:I

    iget v3, v1, Lcom/keeprapid/serverdataload/model/Key;->fitness:I

    const-string v4, "100"

    if-le v2, v3, :cond_0

    .line 67
    new-instance v2, Lcom/keeprapid/serverdataload/model/Progress;

    iget-object v3, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    iget-object v3, v3, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->mid:Ljava/lang/String;

    iget v5, v1, Lcom/keeprapid/serverdataload/model/Key;->fitness:I

    iget v6, v0, Lcom/keeprapid/serverdataload/model/Key;->fitness:I

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/keeprapid/serverdataload/model/Progress;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {v2}, Lcom/keeprapid/serverdataload/util/OrmUtil;->createObject(Ljava/lang/Object;)I

    .line 68
    iget v0, v0, Lcom/keeprapid/serverdataload/model/Key;->fitness:I

    iput v0, v1, Lcom/keeprapid/serverdataload/model/Key;->fitness:I

    .line 69
    invoke-static {v1}, Lcom/keeprapid/serverdataload/util/OrmUtil;->updateObject(Ljava/lang/Object;)I

    .line 72
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    iget-object v1, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    iget-object v1, v1, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->mid:Ljava/lang/String;

    const-string v2, "mid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-class v1, Lcom/keeprapid/serverdataload/model/Progress;

    invoke-static {v1, v0}, Lcom/keeprapid/serverdataload/util/OrmUtil;->queryObject(Ljava/lang/Class;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 78
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keeprapid/serverdataload/model/Progress;

    .line 79
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 81
    :try_start_0
    const-string/jumbo v2, "sync_key"

    iget v3, v0, Lcom/keeprapid/serverdataload/model/Progress;->start:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 82
    const-string/jumbo v2, "target_key"

    iget v3, v0, Lcom/keeprapid/serverdataload/model/Progress;->end:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 83
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "Z"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 84
    const-string/jumbo v3, "timezone"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 87
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 89
    :goto_0
    new-instance v2, Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    iget-object v3, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    invoke-direct {v2, v3}, Lcom/keeprapid/serverdataload/server/ServerDataLoad;-><init>(Lcom/keeprapid/serverdataload/server/ServerDataLoad;)V

    .line 90
    new-instance v3, Lcom/keeprapid/serverdataload/server/ServerDataDownload$1;

    invoke-direct {v3, p0, v0}, Lcom/keeprapid/serverdataload/server/ServerDataDownload$1;-><init>(Lcom/keeprapid/serverdataload/server/ServerDataDownload;Lcom/keeprapid/serverdataload/model/Progress;)V

    invoke-virtual {v2, v3}, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->setOnSendOrderListener(Lcom/keeprapid/serverdataload/server/ServerDataLoad$onSendOrderListener;)V

    .line 110
    iget-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->server:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "http://api.keeprapid.com:8081/ronaldo-dc"

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->server:Ljava/lang/String;

    :goto_1
    iget-object v4, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->order:Ljava/lang/String;

    .line 111
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "download_fitness2"

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->order:Ljava/lang/String;

    .line 110
    :goto_2
    invoke-virtual {v2, v0, v3, v1}, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->sendOrderThread(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z

    return-void

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->onDownloadListener:Lcom/keeprapid/serverdataload/server/ServerDataDownload$OnDownloadListener;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v0, v4, v2, v1}, Lcom/keeprapid/serverdataload/server/ServerDataDownload$OnDownloadListener;->afterDownload(Ljava/lang/String;ILorg/json/JSONObject;)V

    return-void
.end method

.method public downloadKey()V
    .locals 4

    .line 164
    new-instance v0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    iget-object v1, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    invoke-direct {v0, v1}, Lcom/keeprapid/serverdataload/server/ServerDataLoad;-><init>(Lcom/keeprapid/serverdataload/server/ServerDataLoad;)V

    .line 165
    new-instance v1, Lcom/keeprapid/serverdataload/server/ServerDataDownload$4;

    invoke-direct {v1, p0}, Lcom/keeprapid/serverdataload/server/ServerDataDownload$4;-><init>(Lcom/keeprapid/serverdataload/server/ServerDataDownload;)V

    invoke-virtual {v0, v1}, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->setOnSendOrderListener(Lcom/keeprapid/serverdataload/server/ServerDataLoad$onSendOrderListener;)V

    .line 180
    iget-object v1, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->server:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "http://api.keeprapid.com:8081/ronaldo-member"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->server:Ljava/lang/String;

    :goto_0
    iget-object v3, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->order:Ljava/lang/String;

    .line 181
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "query_synckey"

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->order:Ljava/lang/String;

    :goto_1
    iget-object v3, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->downloadParam:Lorg/json/JSONObject;

    .line 180
    invoke-virtual {v0, v1, v2, v3}, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->sendOrderThread(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public downloadMember()V
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    iget-object v0, v0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->mid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keeprapid/serverdataload/util/OrmUtil;->getKey(Ljava/lang/String;)Lcom/keeprapid/serverdataload/model/Key;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    iget-object v1, v1, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->mid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keeprapid/serverdataload/util/OrmUtil;->getKey(Ljava/lang/String;)Lcom/keeprapid/serverdataload/model/Key;

    move-result-object v1

    .line 136
    iget v0, v0, Lcom/keeprapid/serverdataload/model/Key;->member:I

    iget v1, v1, Lcom/keeprapid/serverdataload/model/Key;->member:I

    if-le v0, v1, :cond_2

    .line 137
    new-instance v0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    iget-object v1, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    invoke-direct {v0, v1}, Lcom/keeprapid/serverdataload/server/ServerDataLoad;-><init>(Lcom/keeprapid/serverdataload/server/ServerDataLoad;)V

    .line 138
    new-instance v1, Lcom/keeprapid/serverdataload/server/ServerDataDownload$3;

    invoke-direct {v1, p0}, Lcom/keeprapid/serverdataload/server/ServerDataDownload$3;-><init>(Lcom/keeprapid/serverdataload/server/ServerDataDownload;)V

    invoke-virtual {v0, v1}, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->setOnSendOrderListener(Lcom/keeprapid/serverdataload/server/ServerDataLoad$onSendOrderListener;)V

    .line 156
    iget-object v1, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->server:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "http://api.keeprapid.com:8081/ronaldo-member"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->server:Ljava/lang/String;

    :goto_0
    iget-object v3, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->order:Ljava/lang/String;

    .line 157
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "member_info"

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->order:Ljava/lang/String;

    :goto_1
    iget-object v3, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->downloadParam:Lorg/json/JSONObject;

    .line 156
    invoke-virtual {v0, v1, v2, v3}, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->sendOrderThread(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z

    return-void

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->onDownloadListener:Lcom/keeprapid/serverdataload/server/ServerDataDownload$OnDownloadListener;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "1"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v1}, Lcom/keeprapid/serverdataload/server/ServerDataDownload$OnDownloadListener;->afterDownload(Ljava/lang/String;ILorg/json/JSONObject;)V

    return-void
.end method

.method public setDownloadParam(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/keeprapid/serverdataload/server/ServerDataDownload;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->server:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->order:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->downloadParam:Lorg/json/JSONObject;

    return-object p0
.end method

.method public setDownloadParam(Lorg/json/JSONObject;)Lcom/keeprapid/serverdataload/server/ServerDataDownload;
    .locals 1

    .line 47
    const-string v0, ""

    invoke-virtual {p0, v0, v0, p1}, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->setDownloadParam(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/keeprapid/serverdataload/server/ServerDataDownload;

    return-object p0
.end method

.method public setId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/keeprapid/serverdataload/server/ServerDataDownload;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->setId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOnDownloadListener(Lcom/keeprapid/serverdataload/server/ServerDataDownload$OnDownloadListener;)Lcom/keeprapid/serverdataload/server/ServerDataDownload;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->onDownloadListener:Lcom/keeprapid/serverdataload/server/ServerDataDownload$OnDownloadListener;

    return-object p0
.end method
