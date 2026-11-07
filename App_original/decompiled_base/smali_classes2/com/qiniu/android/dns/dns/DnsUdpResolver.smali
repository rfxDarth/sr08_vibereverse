.class public Lcom/qiniu/android/dns/dns/DnsUdpResolver;
.super Lcom/qiniu/android/dns/dns/DnsResolver;
.source "DnsUdpResolver.java"


# static fields
.field private static final DnsUdpPort:I = 0x35


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/qiniu/android/dns/dns/DnsResolver;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/qiniu/android/dns/dns/DnsResolver;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/qiniu/android/dns/dns/DnsResolver;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;II)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/qiniu/android/dns/dns/DnsResolver;-><init>([Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;IILjava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qiniu/android/dns/dns/DnsResolver;-><init>([Ljava/lang/String;IILjava/util/concurrent/ExecutorService;)V

    return-void
.end method


# virtual methods
.method request(Lcom/qiniu/android/dns/dns/DnsResolver$RequestCanceller;Ljava/lang/String;Ljava/lang/String;I)Lcom/qiniu/android/dns/dns/DnsResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x40efffe000000000L    # 65535.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    int-to-short v0, v0

    .line 38
    new-instance v1, Lcom/qiniu/android/dns/dns/DnsRequest;

    invoke-direct {v1, v0, p4, p3}, Lcom/qiniu/android/dns/dns/DnsRequest;-><init>(SILjava/lang/String;)V

    .line 39
    invoke-virtual {v1}, Lcom/qiniu/android/dns/dns/DnsRequest;->toDnsQuestionData()[B

    move-result-object p3

    .line 41
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p4

    const/4 v0, 0x0

    .line 44
    :try_start_0
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 45
    :try_start_1
    new-instance v0, Ljava/net/DatagramPacket;

    array-length v3, p3

    const/16 v4, 0x35

    invoke-direct {v0, p3, v3, p4, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 47
    iget p3, p0, Lcom/qiniu/android/dns/dns/DnsUdpResolver;->timeout:I

    mul-int/lit16 p3, p3, 0x3e8

    invoke-virtual {v2, p3}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 50
    new-instance p3, Lcom/qiniu/android/dns/dns/DnsUdpResolver$1;

    invoke-direct {p3, p0, v2}, Lcom/qiniu/android/dns/dns/DnsUdpResolver$1;-><init>(Lcom/qiniu/android/dns/dns/DnsUdpResolver;Ljava/net/DatagramSocket;)V

    invoke-virtual {p1, p3}, Lcom/qiniu/android/dns/dns/DnsResolver$RequestCanceller;->addCancelAction(Ljava/lang/Runnable;)V

    .line 66
    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 67
    new-instance p1, Ljava/net/DatagramPacket;

    const/16 p3, 0x5dc

    new-array p4, p3, [B

    invoke-direct {p1, p4, p3}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 68
    invoke-virtual {v2, p1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 69
    new-instance p3, Lcom/qiniu/android/dns/dns/DnsResponse;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object p1

    const/4 p4, 0x4

    invoke-direct {p3, p2, p4, v1, p1}, Lcom/qiniu/android/dns/dns/DnsResponse;-><init>(Ljava/lang/String;ILcom/qiniu/android/dns/dns/DnsRequest;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    return-object p3

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 74
    :cond_0
    throw p1
.end method
