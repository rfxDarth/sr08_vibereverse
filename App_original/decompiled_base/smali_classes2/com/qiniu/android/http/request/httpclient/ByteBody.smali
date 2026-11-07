.class public Lcom/qiniu/android/http/request/httpclient/ByteBody;
.super Lokhttp3/RequestBody;
.source "ByteBody.java"


# static fields
.field private static final SEGMENT_SIZE:I = 0x4000


# instance fields
.field private final body:[B

.field private final mediaType:Lokhttp3/MediaType;


# direct methods
.method public constructor <init>(Lokhttp3/MediaType;[B)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/qiniu/android/http/request/httpclient/ByteBody;->mediaType:Lokhttp3/MediaType;

    .line 31
    iput-object p2, p0, Lcom/qiniu/android/http/request/httpclient/ByteBody;->body:[B

    return-void
.end method

.method private getRequestBodyWithRange(II)Lokhttp3/RequestBody;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/ByteBody;->body:[B

    add-int/2addr p2, p1

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 62
    invoke-virtual {p0}, Lcom/qiniu/android/http/request/httpclient/ByteBody;->contentType()Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/ByteBody;->body:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/ByteBody;->mediaType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x4000

    .line 49
    :goto_0
    iget-object v2, p0, Lcom/qiniu/android/http/request/httpclient/ByteBody;->body:[B

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 50
    array-length v2, v2

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 51
    invoke-direct {p0, v0, v1}, Lcom/qiniu/android/http/request/httpclient/ByteBody;->getRequestBodyWithRange(II)Lokhttp3/RequestBody;

    move-result-object v2

    .line 52
    invoke-virtual {v2, p1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 53
    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method
