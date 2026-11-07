.class Lcom/qiniu/android/dns/dns/DohResolver$1;
.super Ljava/lang/Object;
.source "DohResolver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/dns/dns/DohResolver;->request(Lcom/qiniu/android/dns/dns/DnsResolver$RequestCanceller;Ljava/lang/String;Ljava/lang/String;I)Lcom/qiniu/android/dns/dns/DnsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/dns/dns/DohResolver;

.field final synthetic val$bodyStream:Ljava/io/DataOutputStream;

.field final synthetic val$finalConnection:Ljavax/net/ssl/HttpsURLConnection;


# direct methods
.method constructor <init>(Lcom/qiniu/android/dns/dns/DohResolver;Ljavax/net/ssl/HttpsURLConnection;Ljava/io/DataOutputStream;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/qiniu/android/dns/dns/DohResolver$1;->this$0:Lcom/qiniu/android/dns/dns/DohResolver;

    iput-object p2, p0, Lcom/qiniu/android/dns/dns/DohResolver$1;->val$finalConnection:Ljavax/net/ssl/HttpsURLConnection;

    iput-object p3, p0, Lcom/qiniu/android/dns/dns/DohResolver$1;->val$bodyStream:Ljava/io/DataOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/qiniu/android/dns/dns/DohResolver$1;->val$finalConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/qiniu/android/dns/dns/DohResolver$1;->val$bodyStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method
