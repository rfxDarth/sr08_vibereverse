.class final Lcom/google/android/gms/internal/fitness/zzju;
.super Lcom/google/android/gms/internal/fitness/zzjs;
.source "com.google.android.gms:play-services-fitness@@20.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/fitness/zzjs<",
        "Lcom/google/android/gms/internal/fitness/zzjr;",
        "Lcom/google/android/gms/internal/fitness/zzjr;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fitness/zzjs;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic zza(Ljava/lang/Object;Lcom/google/android/gms/internal/fitness/zzkm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    check-cast p1, Lcom/google/android/gms/internal/fitness/zzjr;

    .line 21
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/fitness/zzjr;->zzb(Lcom/google/android/gms/internal/fitness/zzkm;)V

    return-void
.end method

.method final synthetic zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/fitness/zzkm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    check-cast p1, Lcom/google/android/gms/internal/fitness/zzjr;

    .line 18
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/fitness/zzjr;->zza(Lcom/google/android/gms/internal/fitness/zzkm;)V

    return-void
.end method

.method final zze(Ljava/lang/Object;)V
    .locals 0

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/fitness/zzgy;

    iget-object p1, p1, Lcom/google/android/gms/internal/fitness/zzgy;->zzxt:Lcom/google/android/gms/internal/fitness/zzjr;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fitness/zzjr;->zzar()V

    return-void
.end method

.method final synthetic zzf(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lcom/google/android/gms/internal/fitness/zzjr;

    .line 27
    check-cast p1, Lcom/google/android/gms/internal/fitness/zzgy;

    iput-object p2, p1, Lcom/google/android/gms/internal/fitness/zzgy;->zzxt:Lcom/google/android/gms/internal/fitness/zzjr;

    return-void
.end method

.method final synthetic zzg(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 12
    check-cast p1, Lcom/google/android/gms/internal/fitness/zzjr;

    check-cast p2, Lcom/google/android/gms/internal/fitness/zzjr;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/fitness/zzjr;->zzdp()Lcom/google/android/gms/internal/fitness/zzjr;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/fitness/zzjr;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 15
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/fitness/zzjr;->zza(Lcom/google/android/gms/internal/fitness/zzjr;Lcom/google/android/gms/internal/fitness/zzjr;)Lcom/google/android/gms/internal/fitness/zzjr;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzm(Ljava/lang/Object;)I
    .locals 0

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/fitness/zzjr;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fitness/zzjr;->zzbp()I

    move-result p1

    return p1
.end method

.method final synthetic zzo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Lcom/google/android/gms/internal/fitness/zzgy;

    iget-object p1, p1, Lcom/google/android/gms/internal/fitness/zzgy;->zzxt:Lcom/google/android/gms/internal/fitness/zzjr;

    return-object p1
.end method

.method final synthetic zzp(Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/fitness/zzjr;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fitness/zzjr;->zzdq()I

    move-result p1

    return p1
.end method
