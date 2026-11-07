.class public final Lcom/google/android/gms/internal/fitness/zzjt;
.super Ljava/util/AbstractList;
.source "com.google.android.gms:play-services-fitness@@20.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/fitness/zzhr;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/android/gms/internal/fitness/zzhr;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final zzabu:Lcom/google/android/gms/internal/fitness/zzhr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fitness/zzhr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/fitness/zzjt;->zzabu:Lcom/google/android/gms/internal/fitness/zzhr;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/fitness/zzjt;)Lcom/google/android/gms/internal/fitness/zzhr;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/google/android/gms/internal/fitness/zzjt;->zzabu:Lcom/google/android/gms/internal/fitness/zzhr;

    return-object p0
.end method


# virtual methods
.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/fitness/zzjt;->zzabu:Lcom/google/android/gms/internal/fitness/zzhr;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/fitness/zzhr;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/fitness/zzjv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fitness/zzjv;-><init>(Lcom/google/android/gms/internal/fitness/zzjt;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/fitness/zzjw;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/fitness/zzjw;-><init>(Lcom/google/android/gms/internal/fitness/zzjt;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/fitness/zzjt;->zzabu:Lcom/google/android/gms/internal/fitness/zzhr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fitness/zzhr;->size()I

    move-result v0

    return v0
.end method

.method public final zzaf(I)Ljava/lang/Object;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/fitness/zzjt;->zzabu:Lcom/google/android/gms/internal/fitness/zzhr;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/fitness/zzhr;->zzaf(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzch()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/fitness/zzjt;->zzabu:Lcom/google/android/gms/internal/fitness/zzhr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fitness/zzhr;->zzch()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzci()Lcom/google/android/gms/internal/fitness/zzhr;
    .locals 0

    return-object p0
.end method
