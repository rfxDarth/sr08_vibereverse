.class final Lcom/google/android/gms/internal/fitness/zzed;
.super Lcom/google/android/gms/internal/fitness/zzaw;
.source "com.google.android.gms:play-services-fitness@@20.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/fitness/zzaw<",
        "Lcom/google/android/gms/fitness/result/SessionStopResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzqd:Ljava/lang/String;

.field private final synthetic zzqe:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fitness/zzeb;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/fitness/zzed;->zzqd:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/fitness/zzed;->zzqe:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/fitness/zzaw;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 2

    .line 8
    new-instance v0, Lcom/google/android/gms/fitness/result/SessionStopResult;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/fitness/result/SessionStopResult;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/List;)V

    return-object v0
.end method

.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/fitness/zzav;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/fitness/zzej;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/fitness/zzej;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/internal/fitness/zzea;)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fitness/zzav;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/fitness/zzca;

    new-instance v2, Lcom/google/android/gms/fitness/request/zzba;

    iget-object v3, p0, Lcom/google/android/gms/internal/fitness/zzed;->zzqe:Ljava/lang/String;

    invoke-direct {v2, v1, v3, v0}, Lcom/google/android/gms/fitness/request/zzba;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/fitness/zzci;)V

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/fitness/zzca;->zza(Lcom/google/android/gms/fitness/request/zzba;)V

    return-void
.end method
