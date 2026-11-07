.class public final Lcom/qiniu/android/storage/UpToken;
.super Ljava/lang/Object;
.source "UpToken.java"


# instance fields
.field public final accessKey:Ljava/lang/String;

.field public final bucket:Ljava/lang/String;

.field private deadline:J

.field private returnUrl:Ljava/lang/String;

.field public final token:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 29
    iput-wide v0, p0, Lcom/qiniu/android/storage/UpToken;->deadline:J

    .line 33
    iput-object p1, p0, Lcom/qiniu/android/storage/UpToken;->returnUrl:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/qiniu/android/storage/UpToken;->token:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/qiniu/android/storage/UpToken;->accessKey:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/qiniu/android/storage/UpToken;->bucket:Ljava/lang/String;

    return-void
.end method

.method public static getInvalidToken()Lcom/qiniu/android/storage/UpToken;
    .locals 3

    .line 96
    new-instance v0, Lcom/qiniu/android/storage/UpToken;

    const-string v1, ""

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/qiniu/android/storage/UpToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, -0x1

    .line 97
    iput-wide v1, v0, Lcom/qiniu/android/storage/UpToken;->deadline:J

    return-object v0
.end method

.method public static isInvalid(Lcom/qiniu/android/storage/UpToken;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/qiniu/android/storage/UpToken;->isValid()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isValidBeforeTimestamp(J)Z
    .locals 6

    .line 187
    iget-wide v0, p0, Lcom/qiniu/android/storage/UpToken;->deadline:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    return v4

    :cond_0
    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v4
.end method

.method public static parse(Ljava/lang/String;)Lcom/qiniu/android/storage/UpToken;
    .locals 11

    .line 46
    const-string v0, ":"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 51
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 55
    array-length v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    return-object v1

    :cond_1
    const/4 v3, 0x2

    .line 58
    aget-object v4, v2, v3

    invoke-static {v4}, Lcom/qiniu/android/utils/UrlSafeBase64;->decode(Ljava/lang/String;)[B

    move-result-object v4

    .line 61
    :try_start_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 62
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    const-string/jumbo v5, "scope"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 68
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    return-object v1

    .line 71
    :cond_2
    new-array v3, v3, [Ljava/lang/String;

    .line 73
    :try_start_2
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 76
    :goto_0
    array-length v0, v3

    const/4 v5, 0x0

    if-lez v0, :cond_3

    .line 77
    aget-object v6, v3, v5

    .line 81
    :cond_3
    const-string v0, "deadline"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v7, v0

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-nez v0, :cond_4

    return-object v1

    .line 85
    :cond_4
    new-instance v0, Lcom/qiniu/android/storage/UpToken;

    const-string/jumbo v1, "returnUrl"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aget-object v2, v2, v5

    invoke-direct {v0, v1, p0, v2, v6}, Lcom/qiniu/android/storage/UpToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iput-wide v7, v0, Lcom/qiniu/android/storage/UpToken;->deadline:J

    return-object v0

    :catch_1
    return-object v1
.end method


# virtual methods
.method public getDeadline()J
    .locals 2

    .line 160
    iget-wide v0, p0, Lcom/qiniu/android/storage/UpToken;->deadline:J

    return-wide v0
.end method

.method public hasReturnUrl()Z
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/qiniu/android/storage/UpToken;->returnUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public index()Ljava/lang/String;
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/qiniu/android/storage/UpToken;->accessKey:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qiniu/android/storage/UpToken;->accessKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/qiniu/android/storage/UpToken;->bucket:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qiniu/android/storage/UpToken;->bucket:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public isValid()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/qiniu/android/storage/UpToken;->accessKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qiniu/android/storage/UpToken;->bucket:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isValidBeforeDate(Ljava/util/Date;)Z
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 183
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/qiniu/android/storage/UpToken;->isValidBeforeTimestamp(J)Z

    move-result p1

    return p1
.end method

.method public isValidForDuration(J)Z
    .locals 4

    .line 170
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/qiniu/android/storage/UpToken;->isValidBeforeTimestamp(J)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/qiniu/android/storage/UpToken;->token:Ljava/lang/String;

    return-object v0
.end method
