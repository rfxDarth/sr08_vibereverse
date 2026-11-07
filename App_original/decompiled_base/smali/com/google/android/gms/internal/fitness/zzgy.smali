.class public abstract Lcom/google/android/gms/internal/fitness/zzgy;
.super Lcom/google/android/gms/internal/fitness/zzfo;
.source "com.google.android.gms:play-services-fitness@@20.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fitness/zzgy$zza;,
        Lcom/google/android/gms/internal/fitness/zzgy$zzc;,
        Lcom/google/android/gms/internal/fitness/zzgy$zzd;,
        Lcom/google/android/gms/internal/fitness/zzgy$zzb;,
        Lcom/google/android/gms/internal/fitness/zzgy$zze;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/fitness/zzgy<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/fitness/zzgy$zzb<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/fitness/zzfo<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzxv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/fitness/zzgy<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzxt:Lcom/google/android/gms/internal/fitness/zzjr;

.field private zzxu:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fitness/zzgy;->zzxv:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fitness/zzfo;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/fitness/zzjr;->zzdp()Lcom/google/android/gms/internal/fitness/zzjr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/fitness/zzgy;->zzxt:Lcom/google/android/gms/internal/fitness/zzjr;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/fitness/zzgy;->zzxu:I

    return-void
.end method

.method static zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/fitness/zzgy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/fitness/zzgy<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/fitness/zzgy;->zzxv:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fitness/zzgy;

    if-nez v0, :cond_0

    .line 29
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    sget-object v0, Lcom/google/android/gms/internal/fitness/zzgy;->zzxv:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fitness/zzgy;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 35
    invoke-static {p0}, Lcom/google/android/gms/internal/fitness/zzjy;->zzg(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fitness/zzgy;

    .line 36
    sget v1, Lcom/google/android/gms/internal/fitness/zzgy$zze;->zzyi:I

    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/fitness/zzgy;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    check-cast v0, Lcom/google/android/gms/internal/fitness/zzgy;

    if-eqz v0, :cond_1

    .line 42
    sget-object v1, Lcom/google/android/gms/internal/fitness/zzgy;->zzxv:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 41
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    return-object v0
.end method

.method protected static zza(Lcom/google/android/gms/internal/fitness/zzik;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 46
    new-instance v0, Lcom/google/android/gms/internal/fitness/zzix;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/fitness/zzix;-><init>(Lcom/google/android/gms/internal/fitness/zzik;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static varargs zza(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 51
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 53
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 54
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 52
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 49
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/fitness/zzgy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/fitness/zzgy<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 44
    sget-object v0, Lcom/google/android/gms/internal/fitness/zzgy;->zzxv:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static final zza(Lcom/google/android/gms/internal/fitness/zzgy;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/fitness/zzgy<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 56
    sget v0, Lcom/google/android/gms/internal/fitness/zzgy$zze;->zzyd:I

    const/4 v1, 0x0

    .line 57
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/fitness/zzgy;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 63
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/fitness/zziv;->zzcy()Lcom/google/android/gms/internal/fitness/zziv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/fitness/zziv;->zzn(Ljava/lang/Object;)Lcom/google/android/gms/internal/fitness/zzja;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/fitness/zzja;->zzl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_3

    .line 65
    sget p1, Lcom/google/android/gms/internal/fitness/zzgy$zze;->zzye:I

    if-eqz v0, :cond_2

    move-object v2, p0

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 68
    :goto_0
    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/gms/internal/fitness/zzgy;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v0
.end method

.method protected static zzbq()Lcom/google/android/gms/internal/fitness/zzhg;
    .locals 1

    .line 70
    invoke-static {}, Lcom/google/android/gms/internal/fitness/zzha;->zzcb()Lcom/google/android/gms/internal/fitness/zzha;

    move-result-object v0

    return-object v0
.end method

.method protected static zzbr()Lcom/google/android/gms/internal/fitness/zzhi;
    .locals 1

    .line 71
    invoke-static {}, Lcom/google/android/gms/internal/fitness/zzhy;->zzcm()Lcom/google/android/gms/internal/fitness/zzhy;

    move-result-object v0

    return-object v0
.end method

.method protected static zzbs()Lcom/google/android/gms/internal/fitness/zzhh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/fitness/zzhh<",
            "TE;>;"
        }
    .end annotation

    .line 72
    invoke-static {}, Lcom/google/android/gms/internal/fitness/zziy;->zzdb()Lcom/google/android/gms/internal/fitness/zziy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 13
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 15
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/fitness/zziv;->zzcy()Lcom/google/android/gms/internal/fitness/zziv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/fitness/zziv;->zzn(Ljava/lang/Object;)Lcom/google/android/gms/internal/fitness/zzja;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/fitness/zzgy;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/fitness/zzja;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/fitness/zzgy;->zztu:I

    if-eqz v0, :cond_0

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/fitness/zzgy;->zztu:I

    return v0

    .line 7
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/fitness/zziv;->zzcy()Lcom/google/android/gms/internal/fitness/zziv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/fitness/zziv;->zzn(Ljava/lang/Object;)Lcom/google/android/gms/internal/fitness/zzja;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/fitness/zzja;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/fitness/zzgy;->zztu:I

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/fitness/zzgy;->zztu:I

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 16
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/fitness/zzgy;->zza(Lcom/google/android/gms/internal/fitness/zzgy;Z)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/fitness/zzil;->zza(Lcom/google/android/gms/internal/fitness/zzik;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method final zzan()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/google/android/gms/internal/fitness/zzgy;->zzxu:I

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/fitness/zzgk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/fitness/zziv;->zzcy()Lcom/google/android/gms/internal/fitness/zziv;

    move-result-object v0

    .line 21
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/fitness/zziv;->zzn(Ljava/lang/Object;)Lcom/google/android/gms/internal/fitness/zzja;

    move-result-object v0

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/fitness/zzgn;->zza(Lcom/google/android/gms/internal/fitness/zzgk;)Lcom/google/android/gms/internal/fitness/zzgn;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/fitness/zzja;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/fitness/zzkm;)V

    return-void
.end method

.method public final zzbp()I
    .locals 2

    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/fitness/zzgy;->zzxu:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/fitness/zziv;->zzcy()Lcom/google/android/gms/internal/fitness/zziv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/fitness/zziv;->zzn(Ljava/lang/Object;)Lcom/google/android/gms/internal/fitness/zzja;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/fitness/zzja;->zzm(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/fitness/zzgy;->zzxu:I

    .line 26
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/fitness/zzgy;->zzxu:I

    return v0
.end method

.method public final synthetic zzbt()Lcom/google/android/gms/internal/fitness/zzij;
    .locals 2

    .line 74
    sget v0, Lcom/google/android/gms/internal/fitness/zzgy$zze;->zzyh:I

    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/fitness/zzgy;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    check-cast v0, Lcom/google/android/gms/internal/fitness/zzgy$zzb;

    .line 77
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/fitness/zzgy$zzb;->zza(Lcom/google/android/gms/internal/fitness/zzgy;)Lcom/google/android/gms/internal/fitness/zzgy$zzb;

    return-object v0
.end method

.method public final synthetic zzbu()Lcom/google/android/gms/internal/fitness/zzik;
    .locals 2

    .line 81
    sget v0, Lcom/google/android/gms/internal/fitness/zzgy$zze;->zzyi:I

    const/4 v1, 0x0

    .line 82
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/fitness/zzgy;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 83
    check-cast v0, Lcom/google/android/gms/internal/fitness/zzgy;

    return-object v0
.end method

.method final zzi(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/google/android/gms/internal/fitness/zzgy;->zzxu:I

    return-void
.end method
