.class abstract Lcom/google/android/gms/internal/fitness/zzhu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@20.0.0"


# static fields
.field private static final zzzl:Lcom/google/android/gms/internal/fitness/zzhu;

.field private static final zzzm:Lcom/google/android/gms/internal/fitness/zzhu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/fitness/zzhw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fitness/zzhw;-><init>(Lcom/google/android/gms/internal/fitness/zzht;)V

    sput-object v0, Lcom/google/android/gms/internal/fitness/zzhu;->zzzl:Lcom/google/android/gms/internal/fitness/zzhu;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/fitness/zzhv;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fitness/zzhv;-><init>(Lcom/google/android/gms/internal/fitness/zzht;)V

    sput-object v0, Lcom/google/android/gms/internal/fitness/zzhu;->zzzm:Lcom/google/android/gms/internal/fitness/zzhu;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/fitness/zzht;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/fitness/zzhu;-><init>()V

    return-void
.end method

.method static zzcj()Lcom/google/android/gms/internal/fitness/zzhu;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/fitness/zzhu;->zzzl:Lcom/google/android/gms/internal/fitness/zzhu;

    return-object v0
.end method

.method static zzck()Lcom/google/android/gms/internal/fitness/zzhu;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/fitness/zzhu;->zzzm:Lcom/google/android/gms/internal/fitness/zzhu;

    return-object v0
.end method


# virtual methods
.method abstract zza(Ljava/lang/Object;J)V
.end method

.method abstract zza(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method
