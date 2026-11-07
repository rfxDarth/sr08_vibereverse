.class public final Lcom/google/android/gms/internal/fitness/zzgy$zza;
.super Lcom/google/android/gms/internal/fitness/zzft;
.source "com.google.android.gms:play-services-fitness@@20.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fitness/zzgy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/internal/fitness/zzgy<",
        "TT;*>;>",
        "Lcom/google/android/gms/internal/fitness/zzft<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zzxx:Lcom/google/android/gms/internal/fitness/zzgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fitness/zzgy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fitness/zzft;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/fitness/zzgy$zza;->zzxx:Lcom/google/android/gms/internal/fitness/zzgy;

    return-void
.end method
