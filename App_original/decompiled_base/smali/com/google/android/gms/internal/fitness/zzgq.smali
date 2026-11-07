.class final Lcom/google/android/gms/internal/fitness/zzgq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@20.0.0"


# static fields
.field private static final zzux:Lcom/google/android/gms/internal/fitness/zzgo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/fitness/zzgo<",
            "*>;"
        }
    .end annotation
.end field

.field private static final zzuy:Lcom/google/android/gms/internal/fitness/zzgo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/fitness/zzgo<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/fitness/zzgr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fitness/zzgr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fitness/zzgq;->zzux:Lcom/google/android/gms/internal/fitness/zzgo;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/fitness/zzgq;->zzbg()Lcom/google/android/gms/internal/fitness/zzgo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/fitness/zzgq;->zzuy:Lcom/google/android/gms/internal/fitness/zzgo;

    return-void
.end method

.method private static zzbg()Lcom/google/android/gms/internal/fitness/zzgo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/fitness/zzgo<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-string v1, "com.google.protobuf.ExtensionSchemaFull"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/fitness/zzgo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method static zzbh()Lcom/google/android/gms/internal/fitness/zzgo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/fitness/zzgo<",
            "*>;"
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/fitness/zzgq;->zzux:Lcom/google/android/gms/internal/fitness/zzgo;

    return-object v0
.end method

.method static zzbi()Lcom/google/android/gms/internal/fitness/zzgo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/fitness/zzgo<",
            "*>;"
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/fitness/zzgq;->zzuy:Lcom/google/android/gms/internal/fitness/zzgo;

    if-eqz v0, :cond_0

    return-object v0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Protobuf runtime is not correctly loaded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
