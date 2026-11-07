.class final Lcom/google/android/gms/internal/fitness/zzdm;
.super Lcom/google/android/gms/internal/fitness/zzba;
.source "com.google.android.gms:play-services-fitness@@20.0.0"


# instance fields
.field private final synthetic zzpq:Lcom/google/android/gms/internal/fitness/zzdn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fitness/zzdn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/fitness/zzdm;->zzpq:Lcom/google/android/gms/internal/fitness/zzdn;

    invoke-direct {p0}, Lcom/google/android/gms/internal/fitness/zzba;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/fitness/result/DailyTotalResult;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/fitness/zzdm;->zzpq:Lcom/google/android/gms/internal/fitness/zzdn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fitness/zzdn;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
