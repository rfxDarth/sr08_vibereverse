.class final Lcom/google/android/gms/internal/fitness/zzff;
.super Lcom/google/android/gms/internal/fitness/zzfb;
.source "com.google.android.gms:play-services-fitness@@20.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/fitness/zzfb<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final zzti:Lcom/google/android/gms/internal/fitness/zzfc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/fitness/zzfc<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fitness/zzfc;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/fitness/zzfc<",
            "TE;>;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fitness/zzfc;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/fitness/zzfb;-><init>(II)V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/fitness/zzff;->zzti:Lcom/google/android/gms/internal/fitness/zzfc;

    return-void
.end method


# virtual methods
.method protected final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/fitness/zzff;->zzti:Lcom/google/android/gms/internal/fitness/zzfc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fitness/zzfc;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
