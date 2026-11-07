.class Lcom/qiniu/android/http/dns/DnsPrefetchTransaction$3;
.super Ljava/lang/Object;
.source "DnsPrefetchTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/dns/DnsPrefetchTransaction;->addDnsCheckAndPrefetchTransaction([Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$hosts:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction$3;->val$hosts:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 111
    invoke-static {}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->getInstance()Lcom/qiniu/android/http/dns/DnsPrefetcher;

    move-result-object v0

    iget-object v1, p0, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction$3;->val$hosts:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->addPreFetchHosts([Ljava/lang/String;)Z

    return-void
.end method
