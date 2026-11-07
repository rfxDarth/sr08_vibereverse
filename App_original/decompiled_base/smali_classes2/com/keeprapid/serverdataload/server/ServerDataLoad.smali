.class public Lcom/keeprapid/serverdataload/server/ServerDataLoad;
.super Ljava/lang/Object;
.source "ServerDataLoad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keeprapid/serverdataload/server/ServerDataLoad$onSendOrderListener;
    }
.end annotation


# static fields
.field private static bLog:Z = true


# instance fields
.field public final IPSVR_URL:Ljava/lang/String;

.field public final IPSVR_URL_GEAR:Ljava/lang/String;

.field public final IPSVR_URL_GPS:Ljava/lang/String;

.field public final IPSVR_URL_MEMBER:Ljava/lang/String;

.field private final IPSVR_VERSION:Ljava/lang/String;

.field public final SERVER_URL:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private handlerOrderData:Landroid/os/Handler;

.field private listener:Lcom/keeprapid/serverdataload/server/ServerDataLoad$onSendOrderListener;

.field public mid:Ljava/lang/String;

.field public tid:Ljava/lang/String;

.field public vid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "http://api.keeprapid.com:8081/"

    iput-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->SERVER_URL:Ljava/lang/String;

    .line 23
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->IPSVR_VERSION:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "ronaldo-ipsvr"

    iput-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->IPSVR_URL:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "ronaldo-member"

    iput-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->IPSVR_URL_MEMBER:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "ronaldo-gearcenter"

    iput-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->IPSVR_URL_GEAR:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "ronaldo-dc"

    iput-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->IPSVR_URL_GPS:Ljava/lang/String;

    .line 30
    const-string v0, "ServerDataLoad"

    iput-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->TAG:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->tid:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->vid:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->mid:Ljava/lang/String;

    .line 69
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/keeprapid/serverdataload/server/ServerDataLoad$1;

    invoke-direct {v1, p0}, Lcom/keeprapid/serverdataload/server/ServerDataLoad$1;-><init>(Lcom/keeprapid/serverdataload/server/ServerDataLoad;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->handlerOrderData:Landroid/os/Handler;

    .line 39
    iput-object p1, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lcom/keeprapid/serverdataload/server/ServerDataLoad;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "http://api.keeprapid.com:8081/"

    iput-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->SERVER_URL:Ljava/lang/String;

    .line 23
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->IPSVR_VERSION:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "ronaldo-ipsvr"

    iput-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->IPSVR_URL:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "ronaldo-member"

    iput-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->IPSVR_URL_MEMBER:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "ronaldo-gearcenter"

    iput-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->IPSVR_URL_GEAR:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "ronaldo-dc"

    iput-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->IPSVR_URL_GPS:Ljava/lang/String;

    .line 30
    const-string v0, "ServerDataLoad"

    iput-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->TAG:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->tid:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->vid:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->mid:Ljava/lang/String;

    .line 69
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/keeprapid/serverdataload/server/ServerDataLoad$1;

    invoke-direct {v1, p0}, Lcom/keeprapid/serverdataload/server/ServerDataLoad$1;-><init>(Lcom/keeprapid/serverdataload/server/ServerDataLoad;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->handlerOrderData:Landroid/os/Handler;

    .line 43
    iget-object v0, p1, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->context:Landroid/content/Context;

    .line 44
    iget-object v0, p1, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->tid:Ljava/lang/String;

    iput-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->tid:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->vid:Ljava/lang/String;

    iput-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->vid:Ljava/lang/String;

    .line 46
    iget-object p1, p1, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->mid:Ljava/lang/String;

    iput-object p1, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->mid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 20
    sget-boolean v0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->bLog:Z

    return v0
.end method

.method static synthetic access$100(Lcom/keeprapid/serverdataload/server/ServerDataLoad;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keeprapid/serverdataload/server/ServerDataLoad;)Lcom/keeprapid/serverdataload/server/ServerDataLoad$onSendOrderListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->listener:Lcom/keeprapid/serverdataload/server/ServerDataLoad$onSendOrderListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keeprapid/serverdataload/server/ServerDataLoad;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->sendOrder(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/keeprapid/serverdataload/server/ServerDataLoad;)Landroid/os/Handler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->handlerOrderData:Landroid/os/Handler;

    return-object p0
.end method

.method public static getPhoneId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 159
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "35"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 160
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 161
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 162
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isNetworkAvailable(Landroid/content/Context;)Z
    .locals 1

    .line 58
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private sendOrder(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 7

    const-string/jumbo v0, "url "

    .line 119
    const-string v1, ""

    .line 120
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 121
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 123
    :try_start_0
    iget-object v4, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->tid:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 124
    const-string/jumbo v4, "tid"

    iget-object v5, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->tid:Ljava/lang/String;

    invoke-virtual {p3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    :cond_0
    iget-object v4, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->vid:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 126
    const-string/jumbo v4, "vid"

    iget-object v5, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->vid:Ljava/lang/String;

    invoke-virtual {p3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    :cond_1
    iget-object v4, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->mid:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 128
    const-string v4, "mid"

    iget-object v5, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->mid:Ljava/lang/String;

    invoke-virtual {p3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string/jumbo v4, "uid"

    iget-object v5, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->vid:Ljava/lang/String;

    invoke-virtual {p3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    :cond_2
    const-string v4, "did"

    iget-object v5, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->getPhoneId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v4, "action_cmd"

    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string/jumbo v4, "seq_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string/jumbo v4, "version"

    const-string v5, "1.0"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    const-string v4, "body"

    invoke-virtual {v3, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    sget-boolean p3, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->bLog:Z

    if-eqz p3, :cond_3

    .line 138
    iget-object p3, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object p1, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " request: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_3
    new-instance p1, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v2, p1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 143
    new-instance p1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {p1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 144
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 147
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public static setLog(Z)V
    .locals 0

    .line 54
    sput-boolean p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->bLog:Z

    return-void
.end method


# virtual methods
.method public sendOrderThread(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/keeprapid/serverdataload/server/ServerDataLoad$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/keeprapid/serverdataload/server/ServerDataLoad$2;-><init>(Lcom/keeprapid/serverdataload/server/ServerDataLoad;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 107
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1
.end method

.method public setId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->tid:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->vid:Ljava/lang/String;

    .line 115
    iput-object p3, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->mid:Ljava/lang/String;

    return-void
.end method

.method public setOnSendOrderListener(Lcom/keeprapid/serverdataload/server/ServerDataLoad$onSendOrderListener;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->listener:Lcom/keeprapid/serverdataload/server/ServerDataLoad$onSendOrderListener;

    return-void
.end method
