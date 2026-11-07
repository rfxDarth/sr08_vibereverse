.class final Lcom/google/android/gms/internal/fitness/zzir;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@20.0.0"


# static fields
.field private static final zzaar:Lcom/google/android/gms/internal/fitness/zzip;

.field private static final zzaas:Lcom/google/android/gms/internal/fitness/zzip;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/fitness/zzir;->zzcx()Lcom/google/android/gms/internal/fitness/zzip;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/fitness/zzir;->zzaar:Lcom/google/android/gms/internal/fitness/zzip;

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/fitness/zzis;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fitness/zzis;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fitness/zzir;->zzaas:Lcom/google/android/gms/internal/fitness/zzip;

    return-void
.end method

.method static zzcv()Lcom/google/android/gms/internal/fitness/zzip;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/fitness/zzir;->zzaar:Lcom/google/android/gms/internal/fitness/zzip;

    return-object v0
.end method

.method static zzcw()Lcom/google/android/gms/internal/fitness/zzip;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/fitness/zzir;->zzaas:Lcom/google/android/gms/internal/fitness/zzip;

    return-object v0
.end method

.method private static zzcx()Lcom/google/android/gms/internal/fitness/zzip;
    .locals 2

    const/4 v0, 0x0

    .line 3
    :try_start_0
    const-string v1, "com.google.protobuf.NewInstanceSchemaFull"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/fitness/zzip;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method
