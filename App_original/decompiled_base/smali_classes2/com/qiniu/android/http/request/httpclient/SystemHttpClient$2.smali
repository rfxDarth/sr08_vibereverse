.class Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$2;
.super Ljava/lang/Object;
.source "SystemHttpClient.java"

# interfaces
.implements Lokhttp3/Dns;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->createHttpClient(Lcom/qiniu/android/http/ProxyConfiguration;)Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$2;->this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$2;->this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-static {v0}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->access$500(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/request/IUploadServer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$2;->this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-static {v0}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->access$500(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/request/IUploadServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qiniu/android/http/request/IUploadServer;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$2;->this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-static {v0}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->access$500(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/request/IUploadServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qiniu/android/http/request/IUploadServer;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 248
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 251
    :cond_0
    new-instance v0, Lcom/qiniu/android/http/dns/SystemDns;

    invoke-direct {v0}, Lcom/qiniu/android/http/dns/SystemDns;-><init>()V

    invoke-virtual {v0, p1}, Lcom/qiniu/android/http/dns/SystemDns;->lookupInetAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 254
    :cond_1
    new-instance v0, Lcom/qiniu/android/http/dns/SystemDns;

    invoke-direct {v0}, Lcom/qiniu/android/http/dns/SystemDns;-><init>()V

    invoke-virtual {v0, p1}, Lcom/qiniu/android/http/dns/SystemDns;->lookupInetAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
