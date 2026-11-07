.class Lcom/qiniu/android/dns/dns/DnsResolver$1;
.super Ljava/lang/Object;
.source "DnsResolver.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/dns/dns/DnsResolver;->request(Ljava/lang/String;I)Lcom/qiniu/android/dns/dns/DnsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/dns/dns/DnsResolver;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$responseComposition:Lcom/qiniu/android/dns/dns/DnsResolver$ResponseComposition;


# direct methods
.method constructor <init>(Lcom/qiniu/android/dns/dns/DnsResolver;Lcom/qiniu/android/dns/dns/DnsResolver$ResponseComposition;Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/qiniu/android/dns/dns/DnsResolver$1;->this$0:Lcom/qiniu/android/dns/dns/DnsResolver;

    iput-object p2, p0, Lcom/qiniu/android/dns/dns/DnsResolver$1;->val$responseComposition:Lcom/qiniu/android/dns/dns/DnsResolver$ResponseComposition;

    iput-object p3, p0, Lcom/qiniu/android/dns/dns/DnsResolver$1;->val$host:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "resolver timeout for server:"

    .line 111
    iget-object v1, p0, Lcom/qiniu/android/dns/dns/DnsResolver$1;->val$responseComposition:Lcom/qiniu/android/dns/dns/DnsResolver$ResponseComposition;

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v2, p0, Lcom/qiniu/android/dns/dns/DnsResolver$1;->val$responseComposition:Lcom/qiniu/android/dns/dns/DnsResolver$ResponseComposition;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 113
    iget-object v2, p0, Lcom/qiniu/android/dns/dns/DnsResolver$1;->val$responseComposition:Lcom/qiniu/android/dns/dns/DnsResolver$ResponseComposition;

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qiniu/android/dns/dns/DnsResolver$1;->this$0:Lcom/qiniu/android/dns/dns/DnsResolver;

    invoke-static {v0}, Lcom/qiniu/android/dns/dns/DnsResolver;->access$000(Lcom/qiniu/android/dns/dns/DnsResolver;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " host:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qiniu/android/dns/dns/DnsResolver$1;->val$host:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/qiniu/android/dns/dns/DnsResolver$ResponseComposition;->exception:Ljava/io/IOException;

    .line 114
    monitor-exit v1

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
