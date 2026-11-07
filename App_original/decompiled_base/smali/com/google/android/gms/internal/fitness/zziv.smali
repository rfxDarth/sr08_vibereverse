.class final Lcom/google/android/gms/internal/fitness/zziv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@20.0.0"


# static fields
.field private static final zzaat:Lcom/google/android/gms/internal/fitness/zziv;


# instance fields
.field private final zzaau:Lcom/google/android/gms/internal/fitness/zziz;

.field private final zzaav:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/fitness/zzja<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/fitness/zziv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fitness/zziv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fitness/zziv;->zzaat:Lcom/google/android/gms/internal/fitness/zziv;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fitness/zziv;->zzaav:Ljava/util/concurrent/ConcurrentMap;

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/fitness/zzhx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fitness/zzhx;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fitness/zziv;->zzaau:Lcom/google/android/gms/internal/fitness/zziz;

    return-void
.end method

.method public static zzcy()Lcom/google/android/gms/internal/fitness/zziv;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/fitness/zziv;->zzaat:Lcom/google/android/gms/internal/fitness/zziv;

    return-object v0
.end method


# virtual methods
.method public final zze(Ljava/lang/Class;)Lcom/google/android/gms/internal/fitness/zzja;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/fitness/zzja<",
            "TT;>;"
        }
    .end annotation

    .line 2
    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/fitness/zzhc;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/fitness/zziv;->zzaav:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/fitness/zzja;

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/fitness/zziv;->zzaau:Lcom/google/android/gms/internal/fitness/zziz;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/fitness/zziz;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/internal/fitness/zzja;

    move-result-object v1

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/fitness/zzhc;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    const-string v0, "schema"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/fitness/zzhc;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/fitness/zziv;->zzaav:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/fitness/zzja;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object v1
.end method

.method public final zzn(Ljava/lang/Object;)Lcom/google/android/gms/internal/fitness/zzja;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/fitness/zzja<",
            "TT;>;"
        }
    .end annotation

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fitness/zziv;->zze(Ljava/lang/Class;)Lcom/google/android/gms/internal/fitness/zzja;

    move-result-object p1

    return-object p1
.end method
