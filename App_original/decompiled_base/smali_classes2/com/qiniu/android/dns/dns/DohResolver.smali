.class public Lcom/qiniu/android/dns/dns/DohResolver;
.super Lcom/qiniu/android/dns/dns/DnsResolver;
.source "DohResolver.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/qiniu/android/dns/dns/DnsResolver;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/qiniu/android/dns/dns/DnsResolver;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/qiniu/android/dns/dns/DnsResolver;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;II)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/qiniu/android/dns/dns/DnsResolver;-><init>([Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;IILjava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qiniu/android/dns/dns/DnsResolver;-><init>([Ljava/lang/String;IILjava/util/concurrent/ExecutorService;)V

    return-void
.end method


# virtual methods
.method request(Lcom/qiniu/android/dns/dns/DnsResolver$RequestCanceller;Ljava/lang/String;Ljava/lang/String;I)Lcom/qiniu/android/dns/dns/DnsResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x40efffe000000000L    # 65535.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    int-to-short v0, v0

    .line 40
    new-instance v1, Lcom/qiniu/android/dns/dns/DnsRequest;

    invoke-direct {v1, v0, p4, p3}, Lcom/qiniu/android/dns/dns/DnsRequest;-><init>(SILjava/lang/String;)V

    .line 41
    invoke-virtual {v1}, Lcom/qiniu/android/dns/dns/DnsRequest;->toDnsQuestionData()[B

    move-result-object p3

    .line 43
    new-instance p4, Ljava/net/URL;

    invoke-direct {p4, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p4

    check-cast p4, Ljavax/net/ssl/HttpsURLConnection;

    const/16 v0, 0xbb8

    .line 44
    invoke-virtual {p4, v0}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 45
    iget v0, p0, Lcom/qiniu/android/dns/dns/DohResolver;->timeout:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p4, v0}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const/4 v0, 0x1

    .line 46
    invoke-virtual {p4, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 47
    const-string v0, "POST"

    invoke-virtual {p4, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 48
    const-string v0, "Content-Type"

    const-string v2, "application/dns-message"

    invoke-virtual {p4, v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, "Accept"

    invoke-virtual {p4, v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v0, "Accept-Encoding"

    const-string v2, ""

    invoke-virtual {p4, v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p4}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 54
    new-instance v2, Lcom/qiniu/android/dns/dns/DohResolver$1;

    invoke-direct {v2, p0, p4, v0}, Lcom/qiniu/android/dns/dns/DohResolver$1;-><init>(Lcom/qiniu/android/dns/dns/DohResolver;Ljavax/net/ssl/HttpsURLConnection;Ljava/io/DataOutputStream;)V

    invoke-virtual {p1, v2}, Lcom/qiniu/android/dns/dns/DnsResolver$RequestCanceller;->addCancelAction(Ljava/lang/Runnable;)V

    .line 69
    invoke-virtual {v0, p3}, Ljava/io/DataOutputStream;->write([B)V

    .line 70
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 72
    invoke-virtual {p4}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p1

    const/16 p3, 0xc8

    const/4 v0, 0x0

    if-eq p1, p3, :cond_0

    return-object v0

    .line 77
    :cond_0
    invoke-virtual {p4}, Ljavax/net/ssl/HttpsURLConnection;->getContentLength()I

    move-result p1

    if-lez p1, :cond_3

    const/high16 p3, 0x100000

    if-le p1, p3, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p4}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    .line 82
    new-array p1, p1, [B

    .line 83
    invoke-virtual {p3, p1}, Ljava/io/InputStream;->read([B)I

    move-result p4

    .line 84
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    if-gtz p4, :cond_2

    return-object v0

    .line 89
    :cond_2
    new-instance p3, Lcom/qiniu/android/dns/dns/DnsResponse;

    const/4 p4, 0x5

    invoke-direct {p3, p2, p4, v1, p1}, Lcom/qiniu/android/dns/dns/DnsResponse;-><init>(Ljava/lang/String;ILcom/qiniu/android/dns/dns/DnsRequest;[B)V

    return-object p3

    :cond_3
    :goto_0
    return-object v0
.end method
