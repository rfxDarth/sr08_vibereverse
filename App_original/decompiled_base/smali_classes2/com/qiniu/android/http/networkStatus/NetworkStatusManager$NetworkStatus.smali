.class public Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;
.super Ljava/lang/Object;
.source "NetworkStatusManager.java"

# interfaces
.implements Lcom/qiniu/android/utils/Cache$Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkStatus"
.end annotation


# instance fields
.field private speed:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x258

    .line 106
    iput v0, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;->speed:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$1;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x258

    .line 106
    iput v0, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;->speed:I

    if-nez p1, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    :try_start_0
    const-string/jumbo v0, "speed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;->speed:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method static synthetic access$102(Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;I)I
    .locals 0

    .line 104
    iput p1, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;->speed:I

    return p1
.end method


# virtual methods
.method public getSpeed()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;->speed:I

    return v0
.end method

.method public setSpeed(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;->speed:I

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .line 152
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 154
    :try_start_0
    const-string/jumbo v1, "speed"

    iget v2, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;->speed:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method
