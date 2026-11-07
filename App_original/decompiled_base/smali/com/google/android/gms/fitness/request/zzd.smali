.class public final Lcom/google/android/gms/fitness/request/zzd;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-fitness@@20.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/request/zzd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final deviceAddress:Ljava/lang/String;

.field private final zzqk:Lcom/google/android/gms/fitness/data/BleDevice;

.field private final zzql:Lcom/google/android/gms/internal/fitness/zzcn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/google/android/gms/fitness/request/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/fitness/data/BleDevice;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzd;->deviceAddress:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzd;->zzqk:Lcom/google/android/gms/fitness/data/BleDevice;

    .line 4
    invoke-static {p3}, Lcom/google/android/gms/internal/fitness/zzcm;->zzj(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fitness/zzcn;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzd;->zzql:Lcom/google/android/gms/internal/fitness/zzcn;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/fitness/data/BleDevice;Lcom/google/android/gms/internal/fitness/zzcn;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzd;->deviceAddress:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzd;->zzqk:Lcom/google/android/gms/fitness/data/BleDevice;

    .line 9
    iput-object p3, p0, Lcom/google/android/gms/fitness/request/zzd;->zzql:Lcom/google/android/gms/internal/fitness/zzcn;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzd;->deviceAddress:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzd;->zzqk:Lcom/google/android/gms/fitness/data/BleDevice;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "ClaimBleDeviceRequest{%s %s}"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzd;->deviceAddress:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 17
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x2

    .line 19
    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzd;->zzqk:Lcom/google/android/gms/fitness/data/BleDevice;

    .line 21
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 24
    iget-object p2, p0, Lcom/google/android/gms/fitness/request/zzd;->zzql:Lcom/google/android/gms/internal/fitness/zzcn;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/fitness/zzcn;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    :goto_0
    const/4 v1, 0x3

    .line 26
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 27
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
