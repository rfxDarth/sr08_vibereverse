.class public Lcom/google/android/gms/fitness/request/StartBleScanRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-fitness@@20.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/request/StartBleScanRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzlf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation
.end field

.field private final zzql:Lcom/google/android/gms/internal/fitness/zzcn;

.field private final zzsn:Lcom/google/android/gms/fitness/request/zzad;

.field private final zzso:I

.field private final zzsp:Lcom/google/android/gms/fitness/request/BleScanCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/google/android/gms/fitness/request/zzbh;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzbh;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Landroid/os/IBinder;ILandroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzlf:Ljava/util/List;

    const/4 p1, 0x0

    if-nez p2, :cond_0

    :goto_0
    move-object v0, p1

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    const-string v0, "com.google.android.gms.fitness.request.IBleScanCallback"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 8
    instance-of v1, v0, Lcom/google/android/gms/fitness/request/zzad;

    if-eqz v1, :cond_2

    .line 9
    check-cast v0, Lcom/google/android/gms/fitness/request/zzad;

    goto :goto_1

    .line 10
    :cond_2
    new-instance v0, Lcom/google/android/gms/fitness/request/zzaf;

    invoke-direct {v0, p2}, Lcom/google/android/gms/fitness/request/zzaf;-><init>(Landroid/os/IBinder;)V

    .line 11
    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzsn:Lcom/google/android/gms/fitness/request/zzad;

    .line 12
    iput p3, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzso:I

    if-nez p4, :cond_3

    move-object p2, p1

    goto :goto_2

    .line 13
    :cond_3
    invoke-static {p4}, Lcom/google/android/gms/internal/fitness/zzcm;->zzj(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fitness/zzcn;

    move-result-object p2

    :goto_2
    iput-object p2, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzql:Lcom/google/android/gms/internal/fitness/zzcn;

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzsp:Lcom/google/android/gms/fitness/request/BleScanCallback;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lcom/google/android/gms/fitness/request/BleScanCallback;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;",
            "Lcom/google/android/gms/fitness/request/BleScanCallback;",
            "I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzlf:Ljava/util/List;

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzsn:Lcom/google/android/gms/fitness/request/zzad;

    .line 19
    iput p3, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzso:I

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzql:Lcom/google/android/gms/internal/fitness/zzcn;

    .line 21
    iput-object p2, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzsp:Lcom/google/android/gms/fitness/request/BleScanCallback;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/google/android/gms/fitness/request/BleScanCallback;ILcom/google/android/gms/fitness/request/zzbf;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/fitness/request/StartBleScanRequest;-><init>(Ljava/util/List;Lcom/google/android/gms/fitness/request/BleScanCallback;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/google/android/gms/fitness/request/zzad;ILcom/google/android/gms/internal/fitness/zzcn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;",
            "Lcom/google/android/gms/fitness/request/zzad;",
            "I",
            "Lcom/google/android/gms/internal/fitness/zzcn;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzlf:Ljava/util/List;

    .line 25
    iput-object p2, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzsn:Lcom/google/android/gms/fitness/request/zzad;

    .line 26
    iput p3, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzso:I

    .line 27
    iput-object p4, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzql:Lcom/google/android/gms/internal/fitness/zzcn;

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzsp:Lcom/google/android/gms/fitness/request/BleScanCallback;

    return-void
.end method


# virtual methods
.method public getDataTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzlf:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimeoutSecs()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzso:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 33
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "dataTypes"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzlf:Ljava/util/List;

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzso:I

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "timeoutSecs"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 39
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->getDataTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzsn:Lcom/google/android/gms/fitness/request/zzad;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/fitness/request/zzad;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    const/4 v3, 0x2

    .line 47
    invoke-static {p1, v3, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x3

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->getTimeoutSecs()I

    move-result v3

    .line 50
    invoke-static {p1, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzql:Lcom/google/android/gms/internal/fitness/zzcn;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/fitness/zzcn;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_1
    const/4 v0, 0x4

    .line 55
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 56
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzaa()Lcom/google/android/gms/fitness/request/BleScanCallback;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->zzsp:Lcom/google/android/gms/fitness/request/BleScanCallback;

    return-object v0
.end method
