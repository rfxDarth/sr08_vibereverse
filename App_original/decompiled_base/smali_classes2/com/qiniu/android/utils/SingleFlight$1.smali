.class Lcom/qiniu/android/utils/SingleFlight$1;
.super Ljava/lang/Object;
.source "SingleFlight.java"

# interfaces
.implements Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/utils/SingleFlight;->perform(Ljava/lang/String;Lcom/qiniu/android/utils/SingleFlight$ActionHandler;Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/qiniu/android/utils/SingleFlight$CompleteHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/utils/SingleFlight;

.field final synthetic val$finalCall:Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;

.field final synthetic val$finalKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qiniu/android/utils/SingleFlight;Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/qiniu/android/utils/SingleFlight$1;->this$0:Lcom/qiniu/android/utils/SingleFlight;

    iput-object p2, p0, Lcom/qiniu/android/utils/SingleFlight$1;->val$finalCall:Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;

    iput-object p3, p0, Lcom/qiniu/android/utils/SingleFlight$1;->val$finalKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/qiniu/android/utils/SingleFlight$1;->val$finalCall:Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;

    monitor-enter v0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/qiniu/android/utils/SingleFlight$1;->val$finalCall:Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;

    invoke-static {v1}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->access$100(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    monitor-exit v0

    return-void

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/qiniu/android/utils/SingleFlight$1;->val$finalCall:Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->access$102(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;Z)Z

    .line 91
    iget-object v1, p0, Lcom/qiniu/android/utils/SingleFlight$1;->val$finalCall:Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;

    invoke-static {v1, p1}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->access$602(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qiniu/android/utils/SingleFlight$1;->val$finalCall:Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;

    invoke-static {v1}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->access$400(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 93
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 94
    iget-object v0, p0, Lcom/qiniu/android/utils/SingleFlight$1;->val$finalKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 95
    monitor-enter p0

    .line 96
    :try_start_1
    iget-object v0, p0, Lcom/qiniu/android/utils/SingleFlight$1;->this$0:Lcom/qiniu/android/utils/SingleFlight;

    invoke-static {v0}, Lcom/qiniu/android/utils/SingleFlight;->access$700(Lcom/qiniu/android/utils/SingleFlight;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/qiniu/android/utils/SingleFlight$1;->val$finalKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 99
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qiniu/android/utils/SingleFlight$SingleFlightTask;

    if-eqz v0, :cond_2

    .line 100
    invoke-static {v0}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightTask;->access$300(Lcom/qiniu/android/utils/SingleFlight$SingleFlightTask;)Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 101
    invoke-static {v0}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightTask;->access$300(Lcom/qiniu/android/utils/SingleFlight$SingleFlightTask;)Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/qiniu/android/utils/SingleFlight$1;->val$finalCall:Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;

    invoke-static {v1}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->access$600(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;->complete(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    return-void

    :catchall_1
    move-exception p1

    .line 93
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
