.class final Lcom/google/android/gms/internal/fitness/zzgr;
.super Lcom/google/android/gms/internal/fitness/zzgo;
.source "com.google.android.gms:play-services-fitness@@20.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/fitness/zzgo<",
        "Lcom/google/android/gms/internal/fitness/zzgy$zzc;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fitness/zzgo;-><init>()V

    return-void
.end method


# virtual methods
.method final zza(Ljava/util/Map$Entry;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    .line 12
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/fitness/zzgy$zzc;

    .line 13
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final zza(Lcom/google/android/gms/internal/fitness/zzkm;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/fitness/zzkm;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/fitness/zzgy$zzc;

    .line 16
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/fitness/zzgt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/fitness/zzgt<",
            "Lcom/google/android/gms/internal/fitness/zzgy$zzc;",
            ">;"
        }
    .end annotation

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/fitness/zzgy$zzd;

    iget-object p1, p1, Lcom/google/android/gms/internal/fitness/zzgy$zzd;->zzya:Lcom/google/android/gms/internal/fitness/zzgt;

    return-object p1
.end method

.method final zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/fitness/zzgt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/fitness/zzgt<",
            "Lcom/google/android/gms/internal/fitness/zzgy$zzc;",
            ">;"
        }
    .end annotation

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/fitness/zzgy$zzd;

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/internal/fitness/zzgy$zzd;->zzya:Lcom/google/android/gms/internal/fitness/zzgt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fitness/zzgt;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p1, Lcom/google/android/gms/internal/fitness/zzgy$zzd;->zzya:Lcom/google/android/gms/internal/fitness/zzgt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fitness/zzgt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fitness/zzgt;

    iput-object v0, p1, Lcom/google/android/gms/internal/fitness/zzgy$zzd;->zzya:Lcom/google/android/gms/internal/fitness/zzgt;

    .line 7
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/fitness/zzgy$zzd;->zzya:Lcom/google/android/gms/internal/fitness/zzgt;

    return-object p1
.end method

.method final zze(Ljava/lang/Object;)V
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fitness/zzgo;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/fitness/zzgt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fitness/zzgt;->zzar()V

    return-void
.end method

.method final zze(Lcom/google/android/gms/internal/fitness/zzik;)Z
    .locals 0

    .line 2
    instance-of p1, p1, Lcom/google/android/gms/internal/fitness/zzgy$zzd;

    return p1
.end method
