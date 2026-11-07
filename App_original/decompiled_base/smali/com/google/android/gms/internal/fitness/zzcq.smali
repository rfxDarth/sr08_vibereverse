.class final Lcom/google/android/gms/internal/fitness/zzcq;
.super Lcom/google/android/gms/internal/fitness/zzr;
.source "com.google.android.gms:play-services-fitness@@20.0.0"


# instance fields
.field private final synthetic zzpb:Lcom/google/android/gms/fitness/request/zzad;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fitness/zzco;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/zzad;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/fitness/zzcq;->zzpb:Lcom/google/android/gms/fitness/request/zzad;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/fitness/zzr;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/fitness/zzk;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/fitness/zzei;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fitness/zzei;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fitness/zzk;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/fitness/zzbo;

    new-instance v1, Lcom/google/android/gms/fitness/request/zzbg;

    iget-object v2, p0, Lcom/google/android/gms/internal/fitness/zzcq;->zzpb:Lcom/google/android/gms/fitness/request/zzad;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/fitness/request/zzbg;-><init>(Lcom/google/android/gms/fitness/request/zzad;Lcom/google/android/gms/internal/fitness/zzcn;)V

    .line 6
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/fitness/zzbo;->zza(Lcom/google/android/gms/fitness/request/zzbg;)V

    return-void
.end method
