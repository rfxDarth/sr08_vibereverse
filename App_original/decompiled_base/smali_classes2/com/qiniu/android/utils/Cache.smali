.class public Lcom/qiniu/android/utils/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/utils/Cache$Builder;,
        Lcom/qiniu/android/utils/Cache$Object;
    }
.end annotation


# instance fields
.field private final diskCache:Lcom/qiniu/android/storage/FileRecorder;

.field private final flushCount:I

.field private isFlushing:Z

.field private final memCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/qiniu/android/utils/Cache$Object;",
            ">;"
        }
    .end annotation
.end field

.field private needFlushCount:I

.field private final objectClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final version:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Class;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/qiniu/android/utils/Cache;->isFlushing:Z

    .line 31
    iput v0, p0, Lcom/qiniu/android/utils/Cache;->needFlushCount:I

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/utils/Cache;->memCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    iput-object p1, p0, Lcom/qiniu/android/utils/Cache;->objectClass:Ljava/lang/Class;

    .line 38
    iput p2, p0, Lcom/qiniu/android/utils/Cache;->flushCount:I

    .line 39
    iput-object p3, p0, Lcom/qiniu/android/utils/Cache;->version:Ljava/lang/String;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 44
    :try_start_0
    new-instance p3, Lcom/qiniu/android/storage/FileRecorder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qiniu/android/utils/Utils;->sdkDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/qiniu/android/storage/FileRecorder;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, p3

    goto :goto_0

    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/qiniu/android/utils/Cache;->diskCache:Lcom/qiniu/android/storage/FileRecorder;

    .line 51
    invoke-direct {p0}, Lcom/qiniu/android/utils/Cache;->load()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;ILjava/lang/String;Lcom/qiniu/android/utils/Cache$1;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/qiniu/android/utils/Cache;-><init>(Ljava/lang/Class;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/android/utils/Cache;Ljava/util/Map;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/qiniu/android/utils/Cache;->flushCache(Ljava/util/Map;)V

    return-void
.end method

.method private flushCache(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qiniu/android/utils/Cache$Object;",
            ">;)V"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/qiniu/android/utils/Cache;->diskCache:Lcom/qiniu/android/storage/FileRecorder;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 172
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 173
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 174
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qiniu/android/utils/Cache$Object;

    if-nez v3, :cond_1

    goto :goto_0

    .line 180
    :cond_1
    :try_start_0
    invoke-interface {v3}, Lcom/qiniu/android/utils/Cache$Object;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 184
    :cond_2
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 186
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 189
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    if-eqz p1, :cond_5

    .line 190
    array-length v0, p1

    if-nez v0, :cond_4

    goto :goto_1

    .line 194
    :cond_4
    iget-object v0, p0, Lcom/qiniu/android/utils/Cache;->diskCache:Lcom/qiniu/android/storage/FileRecorder;

    iget-object v1, p0, Lcom/qiniu/android/utils/Cache;->version:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/qiniu/android/storage/FileRecorder;->set(Ljava/lang/String;[B)V

    .line 196
    monitor-enter p0

    const/4 p1, 0x0

    .line 197
    :try_start_1
    iput-boolean p1, p0, Lcom/qiniu/android/utils/Cache;->isFlushing:Z

    .line 198
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_5
    :goto_1
    return-void
.end method

.method private load()V
    .locals 9

    .line 55
    iget-object v0, p0, Lcom/qiniu/android/utils/Cache;->diskCache:Lcom/qiniu/android/storage/FileRecorder;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/qiniu/android/utils/Cache;->objectClass:Ljava/lang/Class;

    if-nez v1, :cond_0

    goto :goto_1

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/qiniu/android/utils/Cache;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qiniu/android/storage/FileRecorder;->get(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 60
    array-length v1, v0

    if-nez v1, :cond_1

    goto :goto_1

    .line 65
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 70
    iget-object v4, p0, Lcom/qiniu/android/utils/Cache;->objectClass:Ljava/lang/Class;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Lorg/json/JSONObject;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 71
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qiniu/android/utils/Cache$Object;

    .line 72
    iget-object v4, p0, Lcom/qiniu/android/utils/Cache;->memCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 74
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public allMemoryCache()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qiniu/android/utils/Cache$Object;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/qiniu/android/utils/Cache;->memCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public cache(Ljava/lang/String;Lcom/qiniu/android/utils/Cache$Object;Z)V
    .locals 1

    .line 116
    invoke-static {p1}, Lcom/qiniu/android/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/qiniu/android/utils/Cache;->memCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget p1, p0, Lcom/qiniu/android/utils/Cache;->needFlushCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/qiniu/android/utils/Cache;->needFlushCount:I

    .line 123
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iget p2, p0, Lcom/qiniu/android/utils/Cache;->flushCount:I

    if-lt p1, p2, :cond_1

    .line 126
    invoke-virtual {p0, p3}, Lcom/qiniu/android/utils/Cache;->flush(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 123
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public cacheForKey(Ljava/lang/String;)Lcom/qiniu/android/utils/Cache$Object;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/qiniu/android/utils/Cache;->memCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qiniu/android/utils/Cache$Object;

    return-object p1
.end method

.method public clearDiskCache()V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/qiniu/android/utils/Cache;->diskCache:Lcom/qiniu/android/storage/FileRecorder;

    invoke-virtual {v0}, Lcom/qiniu/android/storage/FileRecorder;->deleteAll()V

    return-void
.end method

.method public clearMemoryCache()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/qiniu/android/utils/Cache;->memCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public flush(Z)V
    .locals 2

    .line 145
    monitor-enter p0

    .line 146
    :try_start_0
    iget-boolean v0, p0, Lcom/qiniu/android/utils/Cache;->isFlushing:Z

    if-eqz v0, :cond_0

    .line 147
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcom/qiniu/android/utils/Cache;->isFlushing:Z

    const/4 v0, 0x0

    .line 151
    iput v0, p0, Lcom/qiniu/android/utils/Cache;->needFlushCount:I

    .line 152
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/qiniu/android/utils/Cache;->memCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    if-eqz p1, :cond_1

    .line 156
    invoke-direct {p0, v0}, Lcom/qiniu/android/utils/Cache;->flushCache(Ljava/util/Map;)V

    return-void

    .line 158
    :cond_1
    new-instance p1, Lcom/qiniu/android/utils/Cache$1;

    invoke-direct {p1, p0, v0}, Lcom/qiniu/android/utils/Cache$1;-><init>(Lcom/qiniu/android/utils/Cache;Ljava/util/Map;)V

    invoke-static {p1}, Lcom/qiniu/android/utils/AsyncRun;->runInBack(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 152
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
