.class public Lcom/qiniu/android/http/request/Request;
.super Ljava/lang/Object;
.source "Request.java"


# static fields
.field public static final HttpMethodGet:Ljava/lang/String; = "GET"

.field public static final HttpMethodHEAD:Ljava/lang/String; = "HEAD"

.field public static final HttpMethodPOST:Ljava/lang/String; = "POST"

.field public static final HttpMethodPUT:Ljava/lang/String; = "PUT"


# instance fields
.field public final allHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final connectTimeout:I

.field private host:Ljava/lang/String;

.field public httpBody:[B

.field public final httpMethod:Ljava/lang/String;

.field public final readTimeout:I

.field public final timeout:I

.field public final urlString:Ljava/lang/String;

.field public final writeTimeout:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BI)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BI)V"
        }
    .end annotation

    add-int/lit8 p5, p5, -0xa

    shr-int/lit8 v6, p5, 0x1

    const/16 v5, 0xa

    move v7, v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 89
    invoke-direct/range {v0 .. v7}, Lcom/qiniu/android/http/request/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BIII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BIII)V"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    if-gez p5, :cond_0

    const/16 p5, 0xa

    :cond_0
    if-gez p6, :cond_1

    const/16 p6, 0xa

    :cond_1
    if-gez p7, :cond_2

    const/16 p7, 0x1e

    .line 122
    :cond_2
    iput-object p1, p0, Lcom/qiniu/android/http/request/Request;->urlString:Ljava/lang/String;

    if-eqz p2, :cond_3

    goto :goto_0

    .line 123
    :cond_3
    const-string p2, "GET"

    :goto_0
    iput-object p2, p0, Lcom/qiniu/android/http/request/Request;->httpMethod:Ljava/lang/String;

    if-eqz p3, :cond_4

    goto :goto_1

    .line 124
    :cond_4
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :goto_1
    iput-object p3, p0, Lcom/qiniu/android/http/request/Request;->allHeaders:Ljava/util/Map;

    if-eqz p4, :cond_5

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    .line 125
    new-array p4, p1, [B

    :goto_2
    iput-object p4, p0, Lcom/qiniu/android/http/request/Request;->httpBody:[B

    .line 126
    iput p5, p0, Lcom/qiniu/android/http/request/Request;->connectTimeout:I

    .line 127
    iput p6, p0, Lcom/qiniu/android/http/request/Request;->readTimeout:I

    .line 128
    iput p7, p0, Lcom/qiniu/android/http/request/Request;->writeTimeout:I

    add-int/2addr p5, p7

    add-int/2addr p5, p6

    .line 129
    iput p5, p0, Lcom/qiniu/android/http/request/Request;->timeout:I

    return-void
.end method


# virtual methods
.method public copyWithoutBody()Lcom/qiniu/android/http/request/Request;
    .locals 8

    .line 160
    new-instance v0, Lcom/qiniu/android/http/request/Request;

    iget-object v1, p0, Lcom/qiniu/android/http/request/Request;->urlString:Ljava/lang/String;

    iget-object v2, p0, Lcom/qiniu/android/http/request/Request;->httpMethod:Ljava/lang/String;

    iget-object v3, p0, Lcom/qiniu/android/http/request/Request;->allHeaders:Ljava/util/Map;

    iget v5, p0, Lcom/qiniu/android/http/request/Request;->connectTimeout:I

    iget v6, p0, Lcom/qiniu/android/http/request/Request;->readTimeout:I

    iget v7, p0, Lcom/qiniu/android/http/request/Request;->writeTimeout:I

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/qiniu/android/http/request/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BIII)V

    .line 162
    iget-object v1, p0, Lcom/qiniu/android/http/request/Request;->host:Ljava/lang/String;

    iput-object v1, v0, Lcom/qiniu/android/http/request/Request;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/qiniu/android/http/request/Request;->host:Ljava/lang/String;

    return-object v0
.end method

.method protected isValid()Z
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/qiniu/android/http/request/Request;->urlString:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qiniu/android/http/request/Request;->httpMethod:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method setHost(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/qiniu/android/http/request/Request;->host:Ljava/lang/String;

    return-void
.end method
