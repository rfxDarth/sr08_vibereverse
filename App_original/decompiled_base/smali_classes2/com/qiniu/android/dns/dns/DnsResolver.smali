.class public abstract Lcom/qiniu/android/dns/dns/DnsResolver;
.super Ljava/lang/Object;
.source "DnsResolver.java"

# interfaces
.implements Lcom/qiniu/android/dns/IResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/dns/dns/DnsResolver$RequestCanceller;,
        Lcom/qiniu/android/dns/dns/DnsResolver$ResponseComposition;
    }
.end annotation


# static fields
.field private static defaultExecutorService:Ljava/util/concurrent/ExecutorService;

.field private static timeoutExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final recordType:I

.field private final servers:[Ljava/lang/String;

.field protected final timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/qiniu/android/dns/dns/DnsResolver;->timeoutExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v0, 0x4

    .line 23
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/qiniu/android/dns/dns/DnsResolver;->defaultExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xa

    .line 32
    invoke-direct {p0, p1, v0, v1}, Lcom/qiniu/android/dns/dns/DnsResolver;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    .line 36
    invoke-direct {p0, p1, v0, p2}, Lcom/qiniu/android/dns/dns/DnsResolver;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 40
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    :goto_0
    invoke-direct {p0, v1, p2, p3, v0}, Lcom/qiniu/android/dns/dns/DnsResolver;-><init>([Ljava/lang/String;IILjava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;II)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p2, p0, Lcom/qiniu/android/dns/dns/DnsResolver;->recordType:I

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 p3, 0xa

    .line 45
    :goto_0
    iput p3, p0, Lcom/qiniu/android/dns/dns/DnsResolver;->timeout:I

    .line 46
    iput-object p1, p0, Lcom/qiniu/android/dns/dns/DnsResolver;->servers:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/qiniu/android/dns/dns/DnsResolver;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;IILjava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 51
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    if-nez p4, :cond_0

    .line 52
    sget-object p4, Lcom/qiniu/android/dns/dns/DnsResolver;->defaultExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 54
    :cond_0
    iput p2, p0, Lcom/qiniu/android/dns/dns/DnsResolver;->recordType:I

    if-lez p3, :cond_1

    goto :goto_0

    :cond_1
    const/16 p3, 0xa

    .line 55
    :goto_0
    iput p3, p0, Lcom/qiniu/android/dns/dns/DnsResolver;->timeout:I

    .line 56
    iput-object p1, p0, Lcom/qiniu/android/dns/dns/DnsResolver;->servers:[Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/qiniu/android/dns/dns/DnsResolver;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/android/dns/dns/DnsResolver;)[Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/qiniu/android/dns/dns/DnsResolver;->servers:[Ljava/lang/String;

    return-object p0
.end method

.method private lookupHost(Ljava/lang/String;)Lcom/qiniu/android/dns/dns/DnsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget v0, p0, Lcom/qiniu/android/dns/dns/DnsResolver;->recordType:I

    invoke-direct {p0, p1, v0}, Lcom/qiniu/android/dns/dns/DnsResolver;->request(Ljava/lang/String;I)Lcom/qiniu/android/dns/dns/DnsResponse;

    move-result-object p1

    return-object p1
.end method

.method private request(Ljava/lang/String;I)Lcom/qiniu/android/dns/dns/DnsResponse;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/qiniu/android/dns/dns/DnsResolver;->servers:[Ljava/lang/String;

    if-eqz v0, :cond_8

    array-length v0, v0

    if-eqz v0, :cond_8

    if-eqz p1, :cond_7

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    .line 94
    new-instance v3, Lcom/qiniu/android/dns/dns/DnsResolver$RequestCanceller;

    invoke-direct {v3}, Lcom/qiniu/android/dns/dns/DnsResolver$RequestCanceller;-><init>()V

    .line 95
    iget-object v0, p0, Lcom/qiniu/android/dns/dns/DnsResolver;->servers:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_4

    iget-object v1, p0, Lcom/qiniu/android/dns/dns/DnsResolver;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    goto :goto_4

    .line 105
    :cond_0
    new-instance v7, Lcom/qiniu/android/dns/dns/DnsResolver$ResponseComposition;

    invoke-direct {v7}, Lcom/qiniu/android/dns/dns/DnsResolver$ResponseComposition;-><init>()V

    .line 108
    sget-object v0, Lcom/qiniu/android/dns/dns/DnsResolver;->timeoutExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/qiniu/android/dns/dns/DnsResolver$1;

    invoke-direct {v1, p0, v7, p1}, Lcom/qiniu/android/dns/dns/DnsResolver$1;-><init>(Lcom/qiniu/android/dns/dns/DnsResolver;Lcom/qiniu/android/dns/dns/DnsResolver$ResponseComposition;Ljava/lang/String;)V

    iget v4, p0, Lcom/qiniu/android/dns/dns/DnsResolver;->timeout:I

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    iget-object v8, p0, Lcom/qiniu/android/dns/dns/DnsResolver;->servers:[Ljava/lang/String;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_1

    aget-object v4, v8, v10

    .line 122
    iget-object v11, p0, Lcom/qiniu/android/dns/dns/DnsResolver;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/qiniu/android/dns/dns/DnsResolver$2;

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/qiniu/android/dns/dns/DnsResolver$2;-><init>(Lcom/qiniu/android/dns/dns/DnsResolver;Lcom/qiniu/android/dns/dns/DnsResolver$RequestCanceller;Ljava/lang/String;Ljava/lang/String;ILcom/qiniu/android/dns/dns/DnsResolver$ResponseComposition;)V

    move-object p1, v2

    invoke-interface {v11, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p2

    .line 152
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move-object p1, v5

    move p2, v6

    goto :goto_0

    :cond_1
    move-object p1, p0

    .line 155
    monitor-enter v7

    .line 157
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p2, v0

    .line 159
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 161
    :goto_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    invoke-virtual {v3}, Lcom/qiniu/android/dns/dns/DnsResolver$RequestCanceller;->cancel()V

    .line 165
    iget-object p2, v7, Lcom/qiniu/android/dns/dns/DnsResolver$ResponseComposition;->exception:Ljava/io/IOException;

    if-eqz p2, :cond_3

    iget-object p2, v7, Lcom/qiniu/android/dns/dns/DnsResolver$ResponseComposition;->response:Lcom/qiniu/android/dns/dns/DnsResponse;

    if-eqz p2, :cond_2

    goto :goto_2

    .line 166
    :cond_2
    iget-object p2, v7, Lcom/qiniu/android/dns/dns/DnsResolver$ResponseComposition;->exception:Ljava/io/IOException;

    throw p2

    .line 169
    :cond_3
    :goto_2
    iget-object p2, v7, Lcom/qiniu/android/dns/dns/DnsResolver$ResponseComposition;->response:Lcom/qiniu/android/dns/dns/DnsResponse;

    return-object p2

    .line 161
    :goto_3
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2

    :cond_4
    :goto_4
    move-object v5, p1

    move v6, p2

    move-object p1, p0

    .line 97
    array-length p2, v0

    const/4 v1, 0x0

    :goto_5
    if-ge v2, p2, :cond_6

    aget-object v1, v0, v2

    .line 98
    invoke-virtual {p0, v3, v1, v5, v6}, Lcom/qiniu/android/dns/dns/DnsResolver;->request(Lcom/qiniu/android/dns/dns/DnsResolver$RequestCanceller;Ljava/lang/String;Ljava/lang/String;I)Lcom/qiniu/android/dns/dns/DnsResponse;

    move-result-object v1

    if-eqz v1, :cond_5

    return-object v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    return-object v1

    :cond_7
    move-object p1, p0

    .line 91
    new-instance p2, Ljava/io/IOException;

    const-string v0, "host can not empty"

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_8
    move-object p1, p0

    .line 87
    new-instance p2, Ljava/io/IOException;

    const-string/jumbo v0, "server can not empty"

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method abstract request(Lcom/qiniu/android/dns/dns/DnsResolver$RequestCanceller;Ljava/lang/String;Ljava/lang/String;I)Lcom/qiniu/android/dns/dns/DnsResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public resolve(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Lcom/qiniu/android/dns/Record;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object p1, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/qiniu/android/dns/dns/DnsResolver;->lookupHost(Ljava/lang/String;)Lcom/qiniu/android/dns/dns/DnsResponse;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 67
    invoke-virtual {p1}, Lcom/qiniu/android/dns/dns/DnsResponse;->getAnswerArray()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 68
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qiniu/android/dns/Record;

    .line 74
    invoke-virtual {v0}, Lcom/qiniu/android/dns/Record;->isA()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/qiniu/android/dns/Record;->isCname()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/qiniu/android/dns/Record;->isAAAA()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    :cond_2
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 78
    new-array p1, p1, [Lcom/qiniu/android/dns/Record;

    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/qiniu/android/dns/Record;

    return-object p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1

    .line 64
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string/jumbo p2, "response is null"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
