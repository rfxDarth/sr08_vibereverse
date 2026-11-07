.class public Lcom/qiniu/android/http/dns/DnsPrefetchTransaction;
.super Ljava/lang/Object;
.source "DnsPrefetchTransaction.java"


# static fields
.field private static isDnsLoaded:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addDnsCheckAndPrefetchTransaction(Lcom/qiniu/android/common/Zone;Lcom/qiniu/android/storage/UpToken;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction;

    monitor-enter v0

    const/4 v1, 0x0

    .line 57
    :try_start_0
    invoke-static {v1, p0, p1}, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction;->addDnsCheckAndPrefetchTransaction(Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/common/Zone;Lcom/qiniu/android/storage/UpToken;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized addDnsCheckAndPrefetchTransaction(Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/common/Zone;Lcom/qiniu/android/storage/UpToken;)Z
    .locals 6

    const-class v0, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction;

    monitor-enter v0

    .line 69
    :try_start_0
    invoke-static {}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->getInstance()Lcom/qiniu/android/http/dns/DnsPrefetcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->isDnsOpen()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 70
    monitor-exit v0

    return v2

    :cond_0
    if-eqz p2, :cond_3

    .line 73
    :try_start_1
    iget-object v1, p2, Lcom/qiniu/android/storage/UpToken;->token:Ljava/lang/String;

    invoke-static {v1}, Lcom/qiniu/android/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 77
    :cond_1
    invoke-static {}, Lcom/qiniu/android/transaction/TransactionManager;->getInstance()Lcom/qiniu/android/transaction/TransactionManager;

    move-result-object v1

    .line 78
    iget-object v3, p2, Lcom/qiniu/android/storage/UpToken;->token:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/qiniu/android/transaction/TransactionManager;->existTransactionsForName(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    .line 79
    monitor-exit v0

    return v2

    .line 82
    :cond_2
    :try_start_2
    new-instance v3, Lcom/qiniu/android/transaction/TransactionManager$Transaction;

    iget-object v4, p2, Lcom/qiniu/android/storage/UpToken;->token:Ljava/lang/String;

    new-instance v5, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction$2;

    invoke-direct {v5, p0, p1, p2}, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction$2;-><init>(Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/common/Zone;Lcom/qiniu/android/storage/UpToken;)V

    invoke-direct {v3, v4, v2, v5}, Lcom/qiniu/android/transaction/TransactionManager$Transaction;-><init>(Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 88
    invoke-virtual {v1, v3}, Lcom/qiniu/android/transaction/TransactionManager;->addTransaction(Lcom/qiniu/android/transaction/TransactionManager$Transaction;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 74
    :cond_3
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static declared-synchronized addDnsCheckAndPrefetchTransaction([Ljava/lang/String;)Z
    .locals 5

    const-class v0, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction;

    monitor-enter v0

    .line 99
    :try_start_0
    invoke-static {}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->getInstance()Lcom/qiniu/android/http/dns/DnsPrefetcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->isDnsOpen()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 100
    monitor-exit v0

    return v2

    :cond_0
    if-eqz p0, :cond_2

    .line 103
    :try_start_1
    array-length v1, p0

    if-nez v1, :cond_1

    goto :goto_0

    .line 107
    :cond_1
    invoke-static {}, Lcom/qiniu/android/transaction/TransactionManager;->getInstance()Lcom/qiniu/android/transaction/TransactionManager;

    move-result-object v1

    .line 108
    new-instance v3, Lcom/qiniu/android/transaction/TransactionManager$Transaction;

    new-instance v4, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction$3;

    invoke-direct {v4, p0}, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction$3;-><init>([Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-direct {v3, p0, v2, v4}, Lcom/qiniu/android/transaction/TransactionManager$Transaction;-><init>(Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 114
    invoke-virtual {v1, v3}, Lcom/qiniu/android/transaction/TransactionManager;->addTransaction(Lcom/qiniu/android/transaction/TransactionManager$Transaction;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 104
    :cond_2
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static declared-synchronized addDnsLocalLoadTransaction()Z
    .locals 6

    const-class v0, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-boolean v1, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction;->isDnsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 28
    monitor-exit v0

    return v2

    .line 31
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->getInstance()Lcom/qiniu/android/http/dns/DnsPrefetcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->isDnsOpen()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 32
    monitor-exit v0

    return v2

    :cond_1
    const/4 v1, 0x1

    .line 35
    :try_start_2
    sput-boolean v1, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction;->isDnsLoaded:Z

    .line 37
    new-instance v3, Lcom/qiniu/android/transaction/TransactionManager$Transaction;

    const-string v4, "loadDns"

    new-instance v5, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction$1;

    invoke-direct {v5}, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction$1;-><init>()V

    invoke-direct {v3, v4, v2, v5}, Lcom/qiniu/android/transaction/TransactionManager$Transaction;-><init>(Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 44
    invoke-static {}, Lcom/qiniu/android/transaction/TransactionManager;->getInstance()Lcom/qiniu/android/transaction/TransactionManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/qiniu/android/transaction/TransactionManager;->addTransaction(Lcom/qiniu/android/transaction/TransactionManager$Transaction;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static declared-synchronized setDnsCheckWhetherCachedValidTransactionAction()Z
    .locals 7

    const-class v0, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction;

    monitor-enter v0

    .line 124
    :try_start_0
    invoke-static {}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->getInstance()Lcom/qiniu/android/http/dns/DnsPrefetcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->isDnsOpen()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 125
    monitor-exit v0

    return v2

    .line 128
    :cond_0
    :try_start_1
    const-string v1, "dnsCheckWhetherCachedValidTransaction"

    .line 129
    invoke-static {}, Lcom/qiniu/android/transaction/TransactionManager;->getInstance()Lcom/qiniu/android/transaction/TransactionManager;

    move-result-object v3

    .line 130
    invoke-virtual {v3, v1}, Lcom/qiniu/android/transaction/TransactionManager;->existTransactionsForName(Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    .line 131
    monitor-exit v0

    return v2

    .line 134
    :cond_1
    :try_start_2
    new-instance v2, Lcom/qiniu/android/transaction/TransactionManager$Transaction;

    new-instance v4, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction$4;

    invoke-direct {v4}, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction$4;-><init>()V

    const/16 v5, 0xa

    const/16 v6, 0x78

    invoke-direct {v2, v1, v5, v6, v4}, Lcom/qiniu/android/transaction/TransactionManager$Transaction;-><init>(Ljava/lang/String;IILjava/lang/Runnable;)V

    .line 140
    invoke-virtual {v3, v2}, Lcom/qiniu/android/transaction/TransactionManager;->addTransaction(Lcom/qiniu/android/transaction/TransactionManager$Transaction;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
