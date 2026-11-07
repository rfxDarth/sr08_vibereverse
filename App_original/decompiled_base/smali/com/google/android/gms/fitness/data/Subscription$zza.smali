.class public final Lcom/google/android/gms/fitness/data/Subscription$zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@20.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/data/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private zzkp:Lcom/google/android/gms/fitness/data/DataType;

.field private zzkq:Lcom/google/android/gms/fitness/data/DataSource;

.field private zzof:J

.field private zzog:I

.field private zzoh:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->zzof:J

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->zzog:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->zzoh:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/Subscription$zza;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->zzkq:Lcom/google/android/gms/fitness/data/DataSource;

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/Subscription$zza;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->zzkp:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0
.end method

.method public final zzr()Lcom/google/android/gms/fitness/data/Subscription;
    .locals 9

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->zzkq:Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->zzkp:Lcom/google/android/gms/fitness/data/DataType;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v3, "Must call setDataSource() or setDataType()"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->zzkp:Lcom/google/android/gms/fitness/data/DataType;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->zzkq:Lcom/google/android/gms/fitness/data/DataSource;

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSource;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    const-string v0, "Specified data type is incompatible with specified data source"

    .line 13
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 14
    new-instance v2, Lcom/google/android/gms/fitness/data/Subscription;

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->zzkq:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v4, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->zzkp:Lcom/google/android/gms/fitness/data/DataType;

    iget-wide v5, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->zzof:J

    iget v7, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->zzog:I

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/fitness/data/Subscription;-><init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;JII)V

    return-object v2
.end method
