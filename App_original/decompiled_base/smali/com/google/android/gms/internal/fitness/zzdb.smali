.class final Lcom/google/android/gms/internal/fitness/zzdb;
.super Lcom/google/android/gms/internal/fitness/zzx;
.source "com.google.android.gms:play-services-fitness@@20.0.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fitness/zzcw;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/fitness/zzx;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/fitness/zzq;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/fitness/zzei;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fitness/zzei;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fitness/zzq;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/fitness/zzbq;

    new-instance v1, Lcom/google/android/gms/fitness/request/zzz;

    invoke-direct {v1, v0}, Lcom/google/android/gms/fitness/request/zzz;-><init>(Lcom/google/android/gms/internal/fitness/zzcn;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/fitness/zzbq;->zza(Lcom/google/android/gms/fitness/request/zzz;)V

    return-void
.end method
