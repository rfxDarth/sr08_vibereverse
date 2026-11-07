.class public Lcom/qiniu/android/utils/SingleFlight;
.super Ljava/lang/Object;
.source "SingleFlight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/utils/SingleFlight$ActionHandler;,
        Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;,
        Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;,
        Lcom/qiniu/android/utils/SingleFlight$SingleFlightTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private callInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/utils/SingleFlight;->callInfo:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$700(Lcom/qiniu/android/utils/SingleFlight;)Ljava/util/Map;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/qiniu/android/utils/SingleFlight;->callInfo:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public perform(Ljava/lang/String;Lcom/qiniu/android/utils/SingleFlight$ActionHandler;Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qiniu/android/utils/SingleFlight$ActionHandler<",
            "TT;>;",
            "Lcom/qiniu/android/utils/SingleFlight$CompleteHandler<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p2, :cond_0

    goto/16 :goto_4

    .line 40
    :cond_0
    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/qiniu/android/utils/SingleFlight;->callInfo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    move-object v1, v0

    :goto_0
    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 47
    new-instance v1, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;

    invoke-direct {v1, v0}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;-><init>(Lcom/qiniu/android/utils/SingleFlight$1;)V

    if-eqz p1, :cond_2

    .line 49
    iget-object v3, p0, Lcom/qiniu/android/utils/SingleFlight;->callInfo:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 54
    :goto_1
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :try_start_1
    invoke-static {v1}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->access$100(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 57
    new-instance v5, Lcom/qiniu/android/utils/SingleFlight$SingleFlightTask;

    invoke-direct {v5, v0}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightTask;-><init>(Lcom/qiniu/android/utils/SingleFlight$1;)V

    .line 58
    invoke-static {v5, p3}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightTask;->access$302(Lcom/qiniu/android/utils/SingleFlight$SingleFlightTask;Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;)Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;

    .line 59
    invoke-static {v1}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->access$400(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 62
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_6

    .line 65
    invoke-static {v1}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->access$500(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;)Ljava/lang/Exception;

    move-result-object p1

    if-nez p1, :cond_5

    if-eqz p3, :cond_c

    .line 69
    invoke-static {v1}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->access$600(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;->complete(Ljava/lang/Object;)V

    return-void

    .line 66
    :cond_5
    invoke-static {v1}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->access$500(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;)Ljava/lang/Exception;

    move-result-object p1

    throw p1

    :cond_6
    if-nez v3, :cond_7

    goto :goto_4

    .line 82
    :cond_7
    :try_start_3
    new-instance p3, Lcom/qiniu/android/utils/SingleFlight$1;

    invoke-direct {p3, p0, v1, p1}, Lcom/qiniu/android/utils/SingleFlight$1;-><init>(Lcom/qiniu/android/utils/SingleFlight;Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lcom/qiniu/android/utils/SingleFlight$ActionHandler;->action(Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 108
    monitor-enter v1

    .line 109
    :try_start_4
    invoke-static {v1}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->access$100(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 110
    monitor-exit v1

    goto :goto_4

    .line 112
    :cond_8
    invoke-static {v1, v2}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->access$102(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;Z)Z

    .line 113
    invoke-static {v1, p2}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->access$502(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 114
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->access$400(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 115
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz p1, :cond_9

    .line 117
    monitor-enter p0

    .line 118
    :try_start_5
    iget-object p3, p0, Lcom/qiniu/android/utils/SingleFlight;->callInfo:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    monitor-exit p0

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    .line 121
    :cond_9
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qiniu/android/utils/SingleFlight$SingleFlightTask;

    if-eqz p2, :cond_a

    .line 122
    invoke-static {p2}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightTask;->access$300(Lcom/qiniu/android/utils/SingleFlight$SingleFlightTask;)Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;

    move-result-object p2

    if-nez p2, :cond_b

    goto :goto_3

    .line 123
    :cond_b
    invoke-static {v1}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->access$500(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;)Ljava/lang/Exception;

    move-result-object p1

    throw p1

    :cond_c
    :goto_4
    return-void

    :catchall_2
    move-exception p1

    .line 115
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    .line 61
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw p1

    .line 62
    :goto_5
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p1
.end method
