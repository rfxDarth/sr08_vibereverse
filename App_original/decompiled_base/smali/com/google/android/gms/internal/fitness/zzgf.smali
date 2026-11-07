.class final Lcom/google/android/gms/internal/fitness/zzgf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@20.0.0"


# instance fields
.field private final buffer:[B

.field private final zzuh:Lcom/google/android/gms/internal/fitness/zzgk;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/fitness/zzgf;->buffer:[B

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/fitness/zzgk;->zza([B)Lcom/google/android/gms/internal/fitness/zzgk;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/fitness/zzgf;->zzuh:Lcom/google/android/gms/internal/fitness/zzgk;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/fitness/zzfw;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fitness/zzgf;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzaz()Lcom/google/android/gms/internal/fitness/zzfx;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/fitness/zzgf;->zzuh:Lcom/google/android/gms/internal/fitness/zzgk;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fitness/zzgk;->zzbc()I

    move-result v0

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/fitness/zzgh;

    iget-object v1, p0, Lcom/google/android/gms/internal/fitness/zzgf;->buffer:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fitness/zzgh;-><init>([B)V

    return-object v0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzba()Lcom/google/android/gms/internal/fitness/zzgk;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/fitness/zzgf;->zzuh:Lcom/google/android/gms/internal/fitness/zzgk;

    return-object v0
.end method
