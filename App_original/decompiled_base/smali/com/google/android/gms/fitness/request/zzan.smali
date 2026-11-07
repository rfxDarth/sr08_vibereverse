.class public final Lcom/google/android/gms/fitness/request/zzan;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@20.0.0"


# static fields
.field private static final zzrr:Lcom/google/android/gms/fitness/request/zzan;


# instance fields
.field private final zzrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey<",
            "Lcom/google/android/gms/fitness/request/OnDataPointListener;",
            ">;",
            "Lcom/google/android/gms/fitness/request/zzam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/google/android/gms/fitness/request/zzan;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzan;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzan;->zzrr:Lcom/google/android/gms/fitness/request/zzan;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzan;->zzrs:Ljava/util/Map;

    return-void
.end method

.method private static zzc(Lcom/google/android/gms/fitness/request/OnDataPointListener;Landroid/os/Looper;)Lcom/google/android/gms/common/api/internal/ListenerHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/fitness/request/OnDataPointListener;",
            "Landroid/os/Looper;",
            ")",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder<",
            "Lcom/google/android/gms/fitness/request/OnDataPointListener;",
            ">;"
        }
    .end annotation

    .line 25
    const-class v0, Lcom/google/android/gms/fitness/request/OnDataPointListener;

    .line 26
    const-string v0, "OnDataPointListener"

    .line 27
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/ListenerHolders;->createListenerHolder(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object p0

    return-object p0
.end method

.method public static zzx()Lcom/google/android/gms/fitness/request/zzan;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/gms/fitness/request/zzan;->zzrr:Lcom/google/android/gms/fitness/request/zzan;

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/fitness/request/OnDataPointListener;Landroid/os/Looper;)Lcom/google/android/gms/fitness/request/zzam;
    .locals 0

    .line 14
    invoke-static {p1, p2}, Lcom/google/android/gms/fitness/request/zzan;->zzc(Lcom/google/android/gms/fitness/request/OnDataPointListener;Landroid/os/Looper;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/request/zzan;->zzc(Lcom/google/android/gms/common/api/internal/ListenerHolder;)Lcom/google/android/gms/fitness/request/zzam;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/fitness/request/OnDataPointListener;Landroid/os/Looper;)Lcom/google/android/gms/fitness/request/zzam;
    .locals 0

    .line 24
    invoke-static {p1, p2}, Lcom/google/android/gms/fitness/request/zzan;->zzc(Lcom/google/android/gms/fitness/request/OnDataPointListener;Landroid/os/Looper;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/request/zzan;->zzd(Lcom/google/android/gms/common/api/internal/ListenerHolder;)Lcom/google/android/gms/fitness/request/zzam;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/common/api/internal/ListenerHolder;)Lcom/google/android/gms/fitness/request/zzam;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder<",
            "Lcom/google/android/gms/fitness/request/OnDataPointListener;",
            ">;)",
            "Lcom/google/android/gms/fitness/request/zzam;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzan;->zzrs:Ljava/util/Map;

    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object v1

    const-string v2, "Key must not be null"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzan;->zzrs:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/request/zzam;

    if-nez v2, :cond_0

    .line 10
    new-instance v2, Lcom/google/android/gms/fitness/request/zzam;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/google/android/gms/fitness/request/zzam;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/fitness/request/zzal;)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/fitness/request/zzan;->zzrs:Ljava/util/Map;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzd(Lcom/google/android/gms/common/api/internal/ListenerHolder;)Lcom/google/android/gms/fitness/request/zzam;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder<",
            "Lcom/google/android/gms/fitness/request/OnDataPointListener;",
            ">;)",
            "Lcom/google/android/gms/fitness/request/zzam;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzan;->zzrs:Ljava/util/Map;

    monitor-enter v0

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 18
    monitor-exit v0

    return-object p1

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzan;->zzrs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/fitness/request/zzam;

    if-eqz p1, :cond_1

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/zzam;->release()V

    .line 22
    :cond_1
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
