.class public Lcom/google/android/gms/internal/fitness/zzgy$zzb;
.super Lcom/google/android/gms/internal/fitness/zzfr;
.source "com.google.android.gms:play-services-fitness@@20.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fitness/zzgy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/fitness/zzgy<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/fitness/zzgy$zzb<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/fitness/zzfr<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final zzxx:Lcom/google/android/gms/internal/fitness/zzgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private zzxy:Lcom/google/android/gms/internal/fitness/zzgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private zzxz:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/fitness/zzgy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fitness/zzfr;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/fitness/zzgy$zzb;->zzxx:Lcom/google/android/gms/internal/fitness/zzgy;

    .line 3
    sget v0, Lcom/google/android/gms/internal/fitness/zzgy$zze;->zzyg:I

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/fitness/zzgy;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/fitness/zzgy;

    iput-object p1, p0, Lcom/google/android/gms/internal/fitness/zzgy$zzb;->zzxy:Lcom/google/android/gms/internal/fitness/zzgy;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/fitness/zzgy$zzb;->zzxz:Z

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/fitness/zzgy;Lcom/google/android/gms/internal/fitness/zzgy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/fitness/zziv;->zzcy()Lcom/google/android/gms/internal/fitness/zziv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/fitness/zziv;->zzn(Ljava/lang/Object;)Lcom/google/android/gms/internal/fitness/zzja;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/fitness/zzja;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/fitness/zzgy$zzb;->zzxx:Lcom/google/android/gms/internal/fitness/zzgy;

    .line 47
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/fitness/zzgy;

    .line 48
    sget v1, Lcom/google/android/gms/internal/fitness/zzgy$zze;->zzyh:I

    const/4 v2, 0x0

    .line 49
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/fitness/zzgy;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 50
    check-cast v0, Lcom/google/android/gms/internal/fitness/zzgy$zzb;

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fitness/zzgy$zzb;->zzbz()Lcom/google/android/gms/internal/fitness/zzik;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/fitness/zzgy;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fitness/zzgy$zzb;->zza(Lcom/google/android/gms/internal/fitness/zzgy;)Lcom/google/android/gms/internal/fitness/zzgy$zzb;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/fitness/zzgy$zzb;->zzxy:Lcom/google/android/gms/internal/fitness/zzgy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fitness/zzgy;->zza(Lcom/google/android/gms/internal/fitness/zzgy;Z)Z

    move-result v0

    return v0
.end method

.method protected final synthetic zza(Lcom/google/android/gms/internal/fitness/zzfo;)Lcom/google/android/gms/internal/fitness/zzfr;
    .locals 0

    .line 35
    check-cast p1, Lcom/google/android/gms/internal/fitness/zzgy;

    .line 36
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fitness/zzgy$zzb;->zza(Lcom/google/android/gms/internal/fitness/zzgy;)Lcom/google/android/gms/internal/fitness/zzgy$zzb;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/fitness/zzgy;)Lcom/google/android/gms/internal/fitness/zzgy$zzb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/internal/fitness/zzgy$zzb;->zzxz:Z

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fitness/zzgy$zzb;->zzbw()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/google/android/gms/internal/fitness/zzgy$zzb;->zzxz:Z

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fitness/zzgy$zzb;->zzxy:Lcom/google/android/gms/internal/fitness/zzgy;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/fitness/zzgy$zzb;->zza(Lcom/google/android/gms/internal/fitness/zzgy;Lcom/google/android/gms/internal/fitness/zzgy;)V

    return-object p0
.end method

.method public final synthetic zzap()Lcom/google/android/gms/internal/fitness/zzfr;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fitness/zzfr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fitness/zzgy$zzb;

    return-object v0
.end method

.method public final synthetic zzbu()Lcom/google/android/gms/internal/fitness/zzik;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/fitness/zzgy$zzb;->zzxx:Lcom/google/android/gms/internal/fitness/zzgy;

    return-object v0
.end method

.method protected zzbw()V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/fitness/zzgy$zzb;->zzxy:Lcom/google/android/gms/internal/fitness/zzgy;

    sget v1, Lcom/google/android/gms/internal/fitness/zzgy$zze;->zzyg:I

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/fitness/zzgy;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Lcom/google/android/gms/internal/fitness/zzgy;

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/fitness/zzgy$zzb;->zzxy:Lcom/google/android/gms/internal/fitness/zzgy;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fitness/zzgy$zzb;->zza(Lcom/google/android/gms/internal/fitness/zzgy;Lcom/google/android/gms/internal/fitness/zzgy;)V

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/fitness/zzgy$zzb;->zzxy:Lcom/google/android/gms/internal/fitness/zzgy;

    return-void
.end method

.method public zzbx()Lcom/google/android/gms/internal/fitness/zzgy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 15
    iget-boolean v0, p0, Lcom/google/android/gms/internal/fitness/zzgy$zzb;->zzxz:Z

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/fitness/zzgy$zzb;->zzxy:Lcom/google/android/gms/internal/fitness/zzgy;

    return-object v0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fitness/zzgy$zzb;->zzxy:Lcom/google/android/gms/internal/fitness/zzgy;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/fitness/zziv;->zzcy()Lcom/google/android/gms/internal/fitness/zziv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/fitness/zziv;->zzn(Ljava/lang/Object;)Lcom/google/android/gms/internal/fitness/zzja;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/fitness/zzja;->zze(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/google/android/gms/internal/fitness/zzgy$zzb;->zzxz:Z

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/fitness/zzgy$zzb;->zzxy:Lcom/google/android/gms/internal/fitness/zzgy;

    return-object v0
.end method

.method public final zzby()Lcom/google/android/gms/internal/fitness/zzgy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fitness/zzgy$zzb;->zzbz()Lcom/google/android/gms/internal/fitness/zzik;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fitness/zzgy;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fitness/zzgy;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 24
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/fitness/zzjp;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/fitness/zzjp;-><init>(Lcom/google/android/gms/internal/fitness/zzik;)V

    .line 25
    throw v1
.end method

.method public synthetic zzbz()Lcom/google/android/gms/internal/fitness/zzik;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fitness/zzgy$zzb;->zzbx()Lcom/google/android/gms/internal/fitness/zzgy;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzca()Lcom/google/android/gms/internal/fitness/zzik;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fitness/zzgy$zzb;->zzby()Lcom/google/android/gms/internal/fitness/zzgy;

    move-result-object v0

    return-object v0
.end method
