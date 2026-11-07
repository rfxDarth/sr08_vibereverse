.class Lcom/qiniu/android/dns/local/AndroidDnsServer$AndroidResolver$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "AndroidDnsServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/dns/local/AndroidDnsServer$AndroidResolver;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/dns/local/AndroidDnsServer$AndroidResolver;


# direct methods
.method constructor <init>(Lcom/qiniu/android/dns/local/AndroidDnsServer$AndroidResolver;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/qiniu/android/dns/local/AndroidDnsServer$AndroidResolver$1;->this$0:Lcom/qiniu/android/dns/local/AndroidDnsServer$AndroidResolver;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 65
    iget-object p1, p0, Lcom/qiniu/android/dns/local/AndroidDnsServer$AndroidResolver$1;->this$0:Lcom/qiniu/android/dns/local/AndroidDnsServer$AndroidResolver;

    invoke-static {p1}, Lcom/qiniu/android/dns/local/AndroidDnsServer$AndroidResolver;->access$000(Lcom/qiniu/android/dns/local/AndroidDnsServer$AndroidResolver;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/qiniu/android/dns/local/AndroidDnsServer$AndroidResolver$1;->this$0:Lcom/qiniu/android/dns/local/AndroidDnsServer$AndroidResolver;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/qiniu/android/dns/local/AndroidDnsServer$AndroidResolver;->access$102(Lcom/qiniu/android/dns/local/AndroidDnsServer$AndroidResolver;Z)Z

    return-void
.end method
