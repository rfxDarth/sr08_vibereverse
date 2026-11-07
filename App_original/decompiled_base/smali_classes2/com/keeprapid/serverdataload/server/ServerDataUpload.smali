.class public Lcom/keeprapid/serverdataload/server/ServerDataUpload;
.super Ljava/lang/Object;
.source "ServerDataUpload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keeprapid/serverdataload/server/ServerDataUpload$OnUploadListener;
    }
.end annotation


# instance fields
.field private count:I

.field private length:I

.field private maxCount:I

.field private onUploadListener:Lcom/keeprapid/serverdataload/server/ServerDataUpload$OnUploadListener;

.field private order:Ljava/lang/String;

.field private sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

.field private server:Ljava/lang/String;

.field private uploadParam:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x5a0

    .line 18
    iput v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->maxCount:I

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->count:I

    .line 20
    iput v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->length:I

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->server:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->order:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    invoke-direct {v0, p1}, Lcom/keeprapid/serverdataload/server/ServerDataLoad;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    return-void
.end method

.method static synthetic access$000(Lcom/keeprapid/serverdataload/server/ServerDataUpload;)Lcom/keeprapid/serverdataload/server/ServerDataUpload$OnUploadListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->onUploadListener:Lcom/keeprapid/serverdataload/server/ServerDataUpload$OnUploadListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keeprapid/serverdataload/server/ServerDataUpload;)Lcom/keeprapid/serverdataload/server/ServerDataLoad;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    return-object p0
.end method

.method static synthetic access$208(Lcom/keeprapid/serverdataload/server/ServerDataUpload;)I
    .locals 2

    .line 16
    iget v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->count:I

    return v0
.end method

.method static synthetic access$300(Lcom/keeprapid/serverdataload/server/ServerDataUpload;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->uploadFitnessPart(Ljava/lang/String;)V

    return-void
.end method

.method private uploadFitnessPart(Ljava/lang/String;)V
    .locals 10

    .line 102
    const-string v0, "datalist"

    const-string v1, "id"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 104
    iget v4, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->count:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iget v6, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->maxCount:I

    mul-int v4, v4, v6

    iget v6, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->length:I

    if-le v4, v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 106
    :goto_0
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->uploadParam:Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 107
    :try_start_1
    iget-object v3, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->uploadParam:Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 108
    iget v7, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->maxCount:I

    iget v8, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->count:I

    mul-int v7, v7, v8

    :goto_1
    iget v8, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->maxCount:I

    iget v9, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->count:I

    add-int/2addr v9, v5

    mul-int v8, v8, v9

    if-ge v7, v8, :cond_2

    iget v8, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->length:I

    if-ge v7, v8, :cond_2

    .line 109
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 110
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 111
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 113
    :cond_1
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :goto_2
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 116
    :cond_2
    const-string v1, "data_type"

    invoke-virtual {v6, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v3, v6

    goto :goto_3

    :catch_1
    move-exception v0

    .line 119
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v6, v3

    .line 121
    :goto_4
    iget-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    new-instance v1, Lcom/keeprapid/serverdataload/server/ServerDataUpload$2;

    invoke-direct {v1, p0, v2, v4, p1}, Lcom/keeprapid/serverdataload/server/ServerDataUpload$2;-><init>(Lcom/keeprapid/serverdataload/server/ServerDataUpload;Ljava/util/ArrayList;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->setOnSendOrderListener(Lcom/keeprapid/serverdataload/server/ServerDataLoad$onSendOrderListener;)V

    .line 146
    iget-object p1, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    iget-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->server:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "http://api.keeprapid.com:8081/ronaldo-dc"

    goto :goto_5

    :cond_3
    iget-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->server:Ljava/lang/String;

    :goto_5
    iget-object v2, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->order:Ljava/lang/String;

    .line 147
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "upload_fitness"

    goto :goto_6

    :cond_4
    iget-object v1, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->order:Ljava/lang/String;

    .line 146
    :goto_6
    invoke-virtual {p1, v0, v1, v6}, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->sendOrderThread(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z

    return-void
.end method


# virtual methods
.method public setId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/keeprapid/serverdataload/server/ServerDataUpload;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    invoke-virtual {v0, p1, p2, p3}, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->setId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOnUploadListener(Lcom/keeprapid/serverdataload/server/ServerDataUpload$OnUploadListener;)Lcom/keeprapid/serverdataload/server/ServerDataUpload;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->onUploadListener:Lcom/keeprapid/serverdataload/server/ServerDataUpload$OnUploadListener;

    return-object p0
.end method

.method public setUploadParam(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/keeprapid/serverdataload/server/ServerDataUpload;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->server:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->order:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->uploadParam:Lorg/json/JSONObject;

    return-object p0
.end method

.method public setUploadParam(Lorg/json/JSONObject;)Lcom/keeprapid/serverdataload/server/ServerDataUpload;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->uploadParam:Lorg/json/JSONObject;

    return-object p0
.end method

.method public uploadFitness()V
    .locals 4

    .line 61
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 63
    :try_start_0
    const-string v1, "data_type"

    const-string v2, "fitness"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 65
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 67
    :goto_0
    iget-object v1, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    new-instance v2, Lcom/keeprapid/serverdataload/server/ServerDataUpload$1;

    invoke-direct {v2, p0}, Lcom/keeprapid/serverdataload/server/ServerDataUpload$1;-><init>(Lcom/keeprapid/serverdataload/server/ServerDataUpload;)V

    invoke-virtual {v1, v2}, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->setOnSendOrderListener(Lcom/keeprapid/serverdataload/server/ServerDataLoad$onSendOrderListener;)V

    .line 80
    iget-object v1, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    iget-object v2, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->sdl:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "http://api.keeprapid.com:8081/ronaldo-dc"

    const-string v3, "get_max_upload_count"

    invoke-virtual {v1, v2, v3, v0}, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->sendOrderThread(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public uploadFitness(Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->count:I

    if-gtz p2, :cond_0

    .line 85
    iget p2, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->maxCount:I

    :cond_0
    iput p2, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->maxCount:I

    .line 86
    iget-object p2, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->uploadParam:Lorg/json/JSONObject;

    const-string v1, "datalist"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    const-string v2, "100"

    if-eqz p2, :cond_2

    .line 88
    :try_start_0
    iget-object p2, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->uploadParam:Lorg/json/JSONObject;

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p2

    iput p2, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->length:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 90
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 92
    :goto_0
    iget p2, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->length:I

    if-lez p2, :cond_1

    .line 93
    invoke-direct {p0, p1}, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->uploadFitnessPart(Ljava/lang/String;)V

    goto :goto_1

    .line 95
    :cond_1
    iget-object p1, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->onUploadListener:Lcom/keeprapid/serverdataload/server/ServerDataUpload$OnUploadListener;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p1, v2, v0, p2}, Lcom/keeprapid/serverdataload/server/ServerDataUpload$OnUploadListener;->afterUpload(Ljava/lang/String;ILorg/json/JSONObject;)V

    :goto_1
    return-void

    .line 97
    :cond_2
    iget-object p1, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->onUploadListener:Lcom/keeprapid/serverdataload/server/ServerDataUpload$OnUploadListener;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p1, v2, v0, p2}, Lcom/keeprapid/serverdataload/server/ServerDataUpload$OnUploadListener;->afterUpload(Ljava/lang/String;ILorg/json/JSONObject;)V

    return-void
.end method
