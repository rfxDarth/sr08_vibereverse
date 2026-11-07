.class public final Lcom/qiniu/android/dns/local/HijackingDetectWrapper;
.super Ljava/lang/Object;
.source "HijackingDetectWrapper.java"

# interfaces
.implements Lcom/qiniu/android/dns/IResolver;


# instance fields
.field private final resolver:Lcom/qiniu/android/dns/dns/DnsUdpResolver;


# direct methods
.method public constructor <init>(Lcom/qiniu/android/dns/dns/DnsUdpResolver;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/qiniu/android/dns/local/HijackingDetectWrapper;->resolver:Lcom/qiniu/android/dns/dns/DnsUdpResolver;

    return-void
.end method


# virtual methods
.method public resolve(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Lcom/qiniu/android/dns/Record;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/qiniu/android/dns/local/HijackingDetectWrapper;->resolver:Lcom/qiniu/android/dns/dns/DnsUdpResolver;

    invoke-virtual {v0, p1, p2}, Lcom/qiniu/android/dns/dns/DnsUdpResolver;->resolve(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Lcom/qiniu/android/dns/Record;

    move-result-object p2

    .line 24
    iget-boolean v0, p1, Lcom/qiniu/android/dns/Domain;->hasCname:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 27
    array-length v0, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 28
    invoke-virtual {v3}, Lcom/qiniu/android/dns/Record;->isCname()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 30
    iget-object v0, v3, Lcom/qiniu/android/dns/Record;->server:Ljava/lang/String;

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    .line 35
    :cond_2
    new-instance p2, Lcom/qiniu/android/dns/local/DnshijackingException;

    iget-object p1, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-direct {p2, p1, v0}, Lcom/qiniu/android/dns/local/DnshijackingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 38
    :cond_3
    :goto_2
    iget v0, p1, Lcom/qiniu/android/dns/Domain;->maxTtl:I

    if-eqz v0, :cond_6

    .line 39
    array-length v0, p2

    :goto_3
    if-ge v1, v0, :cond_6

    aget-object v2, p2, v1

    .line 40
    invoke-virtual {v2}, Lcom/qiniu/android/dns/Record;->isCname()Z

    move-result v3

    if-nez v3, :cond_5

    .line 41
    iget v3, v2, Lcom/qiniu/android/dns/Record;->ttl:I

    iget v4, p1, Lcom/qiniu/android/dns/Domain;->maxTtl:I

    if-gt v3, v4, :cond_4

    goto :goto_4

    .line 42
    :cond_4
    new-instance p2, Lcom/qiniu/android/dns/local/DnshijackingException;

    iget-object p1, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    iget-object v0, v2, Lcom/qiniu/android/dns/Record;->server:Ljava/lang/String;

    iget v1, v2, Lcom/qiniu/android/dns/Record;->ttl:I

    invoke-direct {p2, p1, v0, v1}, Lcom/qiniu/android/dns/local/DnshijackingException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p2

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    return-object p2
.end method
