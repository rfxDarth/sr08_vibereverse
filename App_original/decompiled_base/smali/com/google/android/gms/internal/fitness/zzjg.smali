.class final Lcom/google/android/gms/internal/fitness/zzjg;
.super Lcom/google/android/gms/internal/fitness/zzjm;
.source "com.google.android.gms:play-services-fitness@@20.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/fitness/zzjm;"
    }
.end annotation


# instance fields
.field private final synthetic zzabl:Lcom/google/android/gms/internal/fitness/zzjb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/fitness/zzjb;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/fitness/zzjg;->zzabl:Lcom/google/android/gms/internal/fitness/zzjb;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/fitness/zzjm;-><init>(Lcom/google/android/gms/internal/fitness/zzjb;Lcom/google/android/gms/internal/fitness/zzje;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/fitness/zzjb;Lcom/google/android/gms/internal/fitness/zzje;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fitness/zzjg;-><init>(Lcom/google/android/gms/internal/fitness/zzjb;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/fitness/zzjd;

    iget-object v1, p0, Lcom/google/android/gms/internal/fitness/zzjg;->zzabl:Lcom/google/android/gms/internal/fitness/zzjb;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/fitness/zzjd;-><init>(Lcom/google/android/gms/internal/fitness/zzjb;Lcom/google/android/gms/internal/fitness/zzje;)V

    return-object v0
.end method
