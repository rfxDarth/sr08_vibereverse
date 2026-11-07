.class final Lcom/google/android/gms/internal/fitness/zzfi;
.super Lcom/google/android/gms/internal/fitness/zzfc;
.source "com.google.android.gms:play-services-fitness@@20.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/fitness/zzfc<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final zztm:Lcom/google/android/gms/internal/fitness/zzfc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/fitness/zzfc<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient size:I

.field private final transient zztn:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/fitness/zzfi;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/fitness/zzfi;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/fitness/zzfi;->zztm:Lcom/google/android/gms/internal/fitness/zzfc;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fitness/zzfc;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/fitness/zzfi;->zztn:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/fitness/zzfi;->size:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/fitness/zzfi;->size:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/fitness/zzez;->zza(II)I

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/fitness/zzfi;->zztn:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/fitness/zzfi;->size:I

    return v0
.end method

.method final zzag()[Ljava/lang/Object;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/fitness/zzfi;->zztn:[Ljava/lang/Object;

    return-object v0
.end method

.method final zzah()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final zzai()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/fitness/zzfi;->size:I

    return v0
.end method

.method final zzaj()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final zzb([Ljava/lang/Object;I)I
    .locals 2

    .line 10
    iget-object p2, p0, Lcom/google/android/gms/internal/fitness/zzfi;->zztn:[Ljava/lang/Object;

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/fitness/zzfi;->size:I

    invoke-static {p2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget p1, p0, Lcom/google/android/gms/internal/fitness/zzfi;->size:I

    return p1
.end method
