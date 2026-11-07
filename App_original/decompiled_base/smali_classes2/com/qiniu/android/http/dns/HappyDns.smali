.class public Lcom/qiniu/android/http/dns/HappyDns;
.super Ljava/lang/Object;
.source "HappyDns.java"

# interfaces
.implements Lcom/qiniu/android/http/dns/Dns;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/http/dns/HappyDns$DnsQueryErrorHandler;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private customDns:Lcom/qiniu/android/http/dns/Dns;

.field private errorHandler:Lcom/qiniu/android/http/dns/HappyDns$DnsQueryErrorHandler;

.field private systemDns:Lcom/qiniu/android/http/dns/SystemDns;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/qiniu/android/storage/GlobalConfiguration;->getInstance()Lcom/qiniu/android/storage/GlobalConfiguration;

    move-result-object v0

    iget v0, v0, Lcom/qiniu/android/storage/GlobalConfiguration;->dnsResolveTimeout:I

    .line 28
    new-instance v1, Lcom/qiniu/android/http/dns/SystemDns;

    invoke-direct {v1, v0}, Lcom/qiniu/android/http/dns/SystemDns;-><init>(I)V

    iput-object v1, p0, Lcom/qiniu/android/http/dns/HappyDns;->systemDns:Lcom/qiniu/android/http/dns/SystemDns;

    .line 29
    invoke-static {}, Lcom/qiniu/android/storage/GlobalConfiguration;->getInstance()Lcom/qiniu/android/storage/GlobalConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/qiniu/android/storage/GlobalConfiguration;->dns:Lcom/qiniu/android/http/dns/Dns;

    iput-object v0, p0, Lcom/qiniu/android/http/dns/HappyDns;->customDns:Lcom/qiniu/android/http/dns/Dns;

    return-void
.end method

.method private handleDnsError(Ljava/io/IOException;Ljava/lang/String;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/qiniu/android/http/dns/HappyDns;->errorHandler:Lcom/qiniu/android/http/dns/HappyDns$DnsQueryErrorHandler;

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0, p1, p2}, Lcom/qiniu/android/http/dns/HappyDns$DnsQueryErrorHandler;->queryError(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/qiniu/android/http/dns/IDnsNetworkAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 39
    invoke-static {}, Lcom/qiniu/android/storage/GlobalConfiguration;->getInstance()Lcom/qiniu/android/storage/GlobalConfiguration;

    move-result-object v0

    iget v0, v0, Lcom/qiniu/android/storage/GlobalConfiguration;->dnsResolveTimeout:I

    .line 41
    iget-object v1, p0, Lcom/qiniu/android/http/dns/HappyDns;->customDns:Lcom/qiniu/android/http/dns/Dns;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 43
    :try_start_0
    invoke-interface {v1, p1}, Lcom/qiniu/android/http/dns/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 45
    invoke-direct {p0, v1, p1}, Lcom/qiniu/android/http/dns/HappyDns;->handleDnsError(Ljava/io/IOException;Ljava/lang/String;)V

    :goto_0
    if-eqz v2, :cond_0

    .line 47
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    return-object v2

    .line 54
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/qiniu/android/http/dns/HappyDns;->systemDns:Lcom/qiniu/android/http/dns/SystemDns;

    invoke-virtual {v1, p1}, Lcom/qiniu/android/http/dns/SystemDns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 56
    invoke-direct {p0, v1, p1}, Lcom/qiniu/android/http/dns/HappyDns;->handleDnsError(Ljava/io/IOException;Ljava/lang/String;)V

    :goto_1
    if-eqz v2, :cond_1

    .line 58
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    return-object v2

    .line 64
    :cond_1
    :try_start_2
    new-instance v1, Lcom/qiniu/android/http/dns/HttpDns;

    invoke-direct {v1, v0}, Lcom/qiniu/android/http/dns/HttpDns;-><init>(I)V

    .line 65
    invoke-virtual {v1, p1}, Lcom/qiniu/android/http/dns/HttpDns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 67
    invoke-direct {p0, v1, p1}, Lcom/qiniu/android/http/dns/HappyDns;->handleDnsError(Ljava/io/IOException;Ljava/lang/String;)V

    :goto_2
    if-eqz v2, :cond_2

    .line 69
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    return-object v2

    .line 75
    :cond_2
    :try_start_3
    new-instance v1, Lcom/qiniu/android/http/dns/UdpDns;

    invoke-direct {v1, v0}, Lcom/qiniu/android/http/dns/UdpDns;-><init>(I)V

    .line 76
    invoke-virtual {v1, p1}, Lcom/qiniu/android/http/dns/UdpDns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 78
    invoke-direct {p0, v0, p1}, Lcom/qiniu/android/http/dns/HappyDns;->handleDnsError(Ljava/io/IOException;Ljava/lang/String;)V

    :goto_3
    return-object v2
.end method

.method setQueryErrorHandler(Lcom/qiniu/android/http/dns/HappyDns$DnsQueryErrorHandler;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/qiniu/android/http/dns/HappyDns;->errorHandler:Lcom/qiniu/android/http/dns/HappyDns$DnsQueryErrorHandler;

    return-void
.end method
