.class Lcom/qiniu/android/dns/dns/DnsUdpResolver$1;
.super Ljava/lang/Object;
.source "DnsUdpResolver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/dns/dns/DnsUdpResolver;->request(Lcom/qiniu/android/dns/dns/DnsResolver$RequestCanceller;Ljava/lang/String;Ljava/lang/String;I)Lcom/qiniu/android/dns/dns/DnsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/dns/dns/DnsUdpResolver;

.field final synthetic val$finalSocket:Ljava/net/DatagramSocket;


# direct methods
.method constructor <init>(Lcom/qiniu/android/dns/dns/DnsUdpResolver;Ljava/net/DatagramSocket;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/qiniu/android/dns/dns/DnsUdpResolver$1;->this$0:Lcom/qiniu/android/dns/dns/DnsUdpResolver;

    iput-object p2, p0, Lcom/qiniu/android/dns/dns/DnsUdpResolver$1;->val$finalSocket:Ljava/net/DatagramSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/qiniu/android/dns/dns/DnsUdpResolver$1;->val$finalSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/qiniu/android/dns/dns/DnsUdpResolver$1;->val$finalSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
