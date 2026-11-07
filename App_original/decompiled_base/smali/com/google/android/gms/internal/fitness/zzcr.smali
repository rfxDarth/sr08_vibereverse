.class final Lcom/google/android/gms/internal/fitness/zzcr;
.super Lcom/google/android/gms/internal/fitness/zzr;
.source "com.google.android.gms:play-services-fitness@@20.0.0"


# instance fields
.field private final synthetic zzpb:Lcom/google/android/gms/fitness/request/zzad;

.field private final synthetic zzpc:Lcom/google/android/gms/fitness/request/StartBleScanRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fitness/zzco;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/StartBleScanRequest;Lcom/google/android/gms/fitness/request/zzad;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/fitness/zzcr;->zzpc:Lcom/google/android/gms/fitness/request/StartBleScanRequest;

    iput-object p4, p0, Lcom/google/android/gms/internal/fitness/zzcr;->zzpb:Lcom/google/android/gms/fitness/request/zzad;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/fitness/zzr;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 5
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

    new-instance v1, Lcom/google/android/gms/fitness/request/StartBleScanRequest;

    iget-object v2, p0, Lcom/google/android/gms/internal/fitness/zzcr;->zzpc:Lcom/google/android/gms/fitness/request/StartBleScanRequest;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->getDataTypes()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/fitness/zzcr;->zzpb:Lcom/google/android/gms/fitness/request/zzad;

    iget-object v4, p0, Lcom/google/android/gms/internal/fitness/zzcr;->zzpc:Lcom/google/android/gms/fitness/request/StartBleScanRequest;

    .line 7
    invoke-virtual {v4}, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->getTimeoutSecs()I

    move-result v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/gms/fitness/request/StartBleScanRequest;-><init>(Ljava/util/List;Lcom/google/android/gms/fitness/request/zzad;ILcom/google/android/gms/internal/fitness/zzcn;)V

    .line 8
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/fitness/zzbo;->zza(Lcom/google/android/gms/fitness/request/StartBleScanRequest;)V

    return-void
.end method
