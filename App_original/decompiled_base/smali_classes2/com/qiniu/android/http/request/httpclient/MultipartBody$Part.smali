.class public final Lcom/qiniu/android/http/request/httpclient/MultipartBody$Part;
.super Ljava/lang/Object;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/http/request/httpclient/MultipartBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Part"
.end annotation


# instance fields
.field final body:Lokhttp3/RequestBody;

.field final headers:Lcom/qiniu/android/http/Headers;


# direct methods
.method private constructor <init>(Lcom/qiniu/android/http/Headers;Lokhttp3/RequestBody;)V
    .locals 0

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-object p1, p0, Lcom/qiniu/android/http/request/httpclient/MultipartBody$Part;->headers:Lcom/qiniu/android/http/Headers;

    .line 278
    iput-object p2, p0, Lcom/qiniu/android/http/request/httpclient/MultipartBody$Part;->body:Lokhttp3/RequestBody;

    return-void
.end method

.method public static create(Lcom/qiniu/android/http/Headers;Lokhttp3/RequestBody;)Lcom/qiniu/android/http/request/httpclient/MultipartBody$Part;
    .locals 1

    if-eqz p1, :cond_4

    if-eqz p0, :cond_1

    .line 302
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lcom/qiniu/android/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p0, :cond_3

    .line 305
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lcom/qiniu/android/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 306
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 308
    :cond_3
    :goto_1
    new-instance v0, Lcom/qiniu/android/http/request/httpclient/MultipartBody$Part;

    invoke-direct {v0, p0, p1}, Lcom/qiniu/android/http/request/httpclient/MultipartBody$Part;-><init>(Lcom/qiniu/android/http/Headers;Lokhttp3/RequestBody;)V

    return-object v0

    .line 300
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "body == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static create(Lokhttp3/RequestBody;)Lcom/qiniu/android/http/request/httpclient/MultipartBody$Part;
    .locals 1

    const/4 v0, 0x0

    .line 288
    invoke-static {v0, p0}, Lcom/qiniu/android/http/request/httpclient/MultipartBody$Part;->create(Lcom/qiniu/android/http/Headers;Lokhttp3/RequestBody;)Lcom/qiniu/android/http/request/httpclient/MultipartBody$Part;

    move-result-object p0

    return-object p0
.end method

.method public static createFormData(Ljava/lang/String;Ljava/lang/String;)Lcom/qiniu/android/http/request/httpclient/MultipartBody$Part;
    .locals 1

    const/4 v0, 0x0

    .line 319
    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/qiniu/android/http/request/httpclient/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lcom/qiniu/android/http/request/httpclient/MultipartBody$Part;

    move-result-object p0

    return-object p0
.end method

.method public static createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lcom/qiniu/android/http/request/httpclient/MultipartBody$Part;
    .locals 2

    if-eqz p0, :cond_1

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "form-data; name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-static {v0, p0}, Lcom/qiniu/android/http/request/httpclient/MultipartBody;->appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 338
    const-string p0, "; filename="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-static {v0, p1}, Lcom/qiniu/android/http/request/httpclient/MultipartBody;->appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    :cond_0
    const-string p0, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qiniu/android/http/Headers;->of([Ljava/lang/String;)Lcom/qiniu/android/http/Headers;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/qiniu/android/http/request/httpclient/MultipartBody$Part;->create(Lcom/qiniu/android/http/Headers;Lokhttp3/RequestBody;)Lcom/qiniu/android/http/request/httpclient/MultipartBody$Part;

    move-result-object p0

    return-object p0

    .line 332
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "name == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public body()Lokhttp3/RequestBody;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/MultipartBody$Part;->body:Lokhttp3/RequestBody;

    return-object v0
.end method

.method public headers()Lcom/qiniu/android/http/Headers;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/MultipartBody$Part;->headers:Lcom/qiniu/android/http/Headers;

    return-object v0
.end method
