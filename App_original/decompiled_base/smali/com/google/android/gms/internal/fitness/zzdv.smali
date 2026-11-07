.class final Lcom/google/android/gms/internal/fitness/zzdv;
.super Lcom/google/android/gms/internal/fitness/zzam;
.source "com.google.android.gms:play-services-fitness@@20.0.0"


# instance fields
.field private final synthetic zzpw:Lcom/google/android/gms/fitness/data/DataSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fitness/zzdo;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataSource;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/fitness/zzdv;->zzpw:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/fitness/zzam;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/fitness/zzaj;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/fitness/zzei;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fitness/zzei;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fitness/zzaj;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/fitness/zzbw;

    new-instance v1, Lcom/google/android/gms/fitness/request/zzbm;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/fitness/zzdv;->zzpw:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/fitness/request/zzbm;-><init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/internal/fitness/zzcn;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/fitness/zzbw;->zza(Lcom/google/android/gms/fitness/request/zzbm;)V

    return-void
.end method
