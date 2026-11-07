.class public final Lcom/google/android/gms/fitness/data/zzq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@20.0.0"


# static fields
.field private static zzmw:Ljava/lang/String; = null

.field private static zzmx:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static zza(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/fitness/data/zzq;->zzmw:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    sput-object p0, Lcom/google/android/gms/fitness/data/zzq;->zzmw:Ljava/lang/String;

    return-object p0
.end method

.method public static zzb(Landroid/content/Context;)I
    .locals 2

    .line 7
    sget v0, Lcom/google/android/gms/fitness/data/zzq;->zzmx:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 8
    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isWearable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x3

    .line 9
    sput p0, Lcom/google/android/gms/fitness/data/zzq;->zzmx:I

    goto :goto_1

    .line 10
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isTv(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isAuto(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/DeviceProperties;->isTablet(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/google/android/gms/fitness/data/zzq;->zzc(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x2

    .line 15
    sput p0, Lcom/google/android/gms/fitness/data/zzq;->zzmx:I

    goto :goto_1

    .line 16
    :cond_2
    sget-object p0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v0, "glass_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x6

    .line 18
    sput p0, Lcom/google/android/gms/fitness/data/zzq;->zzmx:I

    goto :goto_1

    :cond_3
    const/4 p0, 0x1

    .line 19
    sput p0, Lcom/google/android/gms/fitness/data/zzq;->zzmx:I

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 11
    sput p0, Lcom/google/android/gms/fitness/data/zzq;->zzmx:I

    .line 20
    :cond_5
    :goto_1
    sget p0, Lcom/google/android/gms/fitness/data/zzq;->zzmx:I

    return p0
.end method

.method private static zzc(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    .line 21
    :try_start_0
    const-string v1, "phone"

    .line 22
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 23
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    .line 25
    const-string v1, "Fitness"

    const-string v2, "Unable to determine type of device, assuming phone."

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method
