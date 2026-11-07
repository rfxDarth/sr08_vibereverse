.class public final Lcom/google/android/gms/fitness/request/zzbg;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-fitness@@20.0.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/request/zzbg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzql:Lcom/google/android/gms/internal/fitness/zzcn;

.field private final zzsn:Lcom/google/android/gms/fitness/request/zzad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/google/android/gms/fitness/request/zzbj;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzbj;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzbg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 5
    :cond_0
    const-string v1, "com.google.android.gms.fitness.request.IBleScanCallback"

    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 6
    instance-of v2, v1, Lcom/google/android/gms/fitness/request/zzad;

    if-eqz v2, :cond_1

    .line 7
    check-cast v1, Lcom/google/android/gms/fitness/request/zzad;

    goto :goto_0

    .line 8
    :cond_1
    new-instance v1, Lcom/google/android/gms/fitness/request/zzaf;

    invoke-direct {v1, p1}, Lcom/google/android/gms/fitness/request/zzaf;-><init>(Landroid/os/IBinder;)V

    .line 9
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/fitness/request/zzbg;->zzsn:Lcom/google/android/gms/fitness/request/zzad;

    if-nez p2, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {p2}, Lcom/google/android/gms/internal/fitness/zzcm;->zzj(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fitness/zzcn;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzbg;->zzql:Lcom/google/android/gms/internal/fitness/zzcn;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/request/zzad;Lcom/google/android/gms/internal/fitness/zzcn;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzbg;->zzsn:Lcom/google/android/gms/fitness/request/zzad;

    .line 14
    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzbg;->zzql:Lcom/google/android/gms/internal/fitness/zzcn;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzbg;->zzsn:Lcom/google/android/gms/fitness/request/zzad;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/request/zzad;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 21
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzbg;->zzql:Lcom/google/android/gms/internal/fitness/zzcn;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/fitness/zzcn;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    const/4 v1, 0x2

    .line 26
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 27
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
