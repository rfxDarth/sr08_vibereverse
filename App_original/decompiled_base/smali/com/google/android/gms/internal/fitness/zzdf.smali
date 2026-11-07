.class final Lcom/google/android/gms/internal/fitness/zzdf;
.super Lcom/google/android/gms/internal/fitness/zzbm;
.source "com.google.android.gms:play-services-fitness@@20.0.0"


# instance fields
.field private final synthetic zzpi:Lcom/google/android/gms/internal/fitness/zzdc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fitness/zzdc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/fitness/zzdf;->zzpi:Lcom/google/android/gms/internal/fitness/zzdc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/fitness/zzbm;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/fitness/result/GoalsResult;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/fitness/zzdf;->zzpi:Lcom/google/android/gms/internal/fitness/zzdc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fitness/zzdc;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
