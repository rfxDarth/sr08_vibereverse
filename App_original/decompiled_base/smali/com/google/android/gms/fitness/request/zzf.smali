.class public final Lcom/google/android/gms/fitness/request/zzf;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-fitness@@20.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/request/zzf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzkp:Lcom/google/android/gms/fitness/data/DataType;

.field private final zzqo:Lcom/google/android/gms/internal/fitness/zzbb;

.field private final zzqp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/google/android/gms/fitness/request/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;Lcom/google/android/gms/fitness/data/DataType;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/fitness/zzba;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fitness/zzbb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzf;->zzqo:Lcom/google/android/gms/internal/fitness/zzbb;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzf;->zzkp:Lcom/google/android/gms/fitness/data/DataType;

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/fitness/request/zzf;->zzqp:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/fitness/zzbb;Lcom/google/android/gms/fitness/data/DataType;Z)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzf;->zzqo:Lcom/google/android/gms/internal/fitness/zzbb;

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzf;->zzkp:Lcom/google/android/gms/fitness/data/DataType;

    .line 9
    iput-boolean p3, p0, Lcom/google/android/gms/fitness/request/zzf;->zzqp:Z

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzf;->zzkp:Lcom/google/android/gms/fitness/data/DataType;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->zzm()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 13
    const-string v0, "DailyTotalRequest{%s}"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzf;->zzqo:Lcom/google/android/gms/internal/fitness/zzbb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/fitness/zzbb;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 19
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x2

    .line 21
    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzf;->zzkp:Lcom/google/android/gms/fitness/data/DataType;

    .line 23
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x4

    .line 25
    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/zzf;->zzqp:Z

    .line 26
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 27
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
