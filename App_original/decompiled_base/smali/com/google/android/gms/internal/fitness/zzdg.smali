.class final Lcom/google/android/gms/internal/fitness/zzdg;
.super Lcom/google/android/gms/internal/fitness/zzag;
.source "com.google.android.gms:play-services-fitness@@20.0.0"


# instance fields
.field private final synthetic zzpj:Lcom/google/android/gms/fitness/request/DataDeleteRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fitness/zzde;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataDeleteRequest;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/fitness/zzdg;->zzpj:Lcom/google/android/gms/fitness/request/DataDeleteRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/fitness/zzag;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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
    check-cast p1, Lcom/google/android/gms/internal/fitness/zzad;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/fitness/zzei;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fitness/zzei;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fitness/zzad;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/fitness/zzbu;

    new-instance v1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;

    iget-object v2, p0, Lcom/google/android/gms/internal/fitness/zzdg;->zzpj:Lcom/google/android/gms/fitness/request/DataDeleteRequest;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;-><init>(Lcom/google/android/gms/fitness/request/DataDeleteRequest;Lcom/google/android/gms/internal/fitness/zzcn;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/fitness/zzbu;->zza(Lcom/google/android/gms/fitness/request/DataDeleteRequest;)V

    return-void
.end method
