.class final Lcom/google/android/gms/fitness/request/zzal;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@20.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier<",
        "Lcom/google/android/gms/fitness/request/OnDataPointListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzrp:Lcom/google/android/gms/fitness/data/DataPoint;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/request/zzam;Lcom/google/android/gms/fitness/data/DataPoint;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzal;->zzrp:Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic notifyListener(Ljava/lang/Object;)V
    .locals 1

    .line 3
    check-cast p1, Lcom/google/android/gms/fitness/request/OnDataPointListener;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzal;->zzrp:Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-interface {p1, v0}, Lcom/google/android/gms/fitness/request/OnDataPointListener;->onDataPoint(Lcom/google/android/gms/fitness/data/DataPoint;)V

    return-void
.end method

.method public final onNotifyListenerFailed()V
    .locals 0

    return-void
.end method
