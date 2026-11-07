.class public final Lcom/qiniu/android/common/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static interval:D = 0.0

.field public static isRecord:Z = true

.field public static isUpload:Z = true

.field public static maxRecordFileSize:I = 0x0

.field public static preQueryHost00:Ljava/lang/String; = null

.field public static preQueryHost01:Ljava/lang/String; = null

.field public static preQueryHost02:Ljava/lang/String; = null

.field public static preQueryHost03:Ljava/lang/String; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static recordDir:Ljava/lang/String; = null

.field public static final upLogURL:Ljava/lang/String; = "uplog.qbox.me"

.field public static uploadThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    :try_start_0
    invoke-static {}, Lcom/qiniu/android/utils/ContextGetter;->applicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qiniu/android/common/Config;->recordDir:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    :goto_0
    const/high16 v0, 0x400000

    .line 59
    sput v0, Lcom/qiniu/android/common/Config;->maxRecordFileSize:I

    const/16 v0, 0x4000

    .line 65
    sput v0, Lcom/qiniu/android/common/Config;->uploadThreshold:I

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 70
    sput-wide v0, Lcom/qiniu/android/common/Config;->interval:D

    .line 75
    const-string/jumbo v0, "uc.qiniuapi.com"

    sput-object v0, Lcom/qiniu/android/common/Config;->preQueryHost00:Ljava/lang/String;

    .line 80
    const-string v0, "kodo-config.qiniuapi.com"

    sput-object v0, Lcom/qiniu/android/common/Config;->preQueryHost01:Ljava/lang/String;

    .line 85
    const-string/jumbo v0, "uc.qbox.me"

    sput-object v0, Lcom/qiniu/android/common/Config;->preQueryHost02:Ljava/lang/String;

    .line 91
    const-string v0, "api.qiniu.com"

    sput-object v0, Lcom/qiniu/android/common/Config;->preQueryHost03:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static normal()V
    .locals 2

    const/16 v0, 0x4000

    .line 114
    sput v0, Lcom/qiniu/android/common/Config;->uploadThreshold:I

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 115
    sput-wide v0, Lcom/qiniu/android/common/Config;->interval:D

    return-void
.end method

.method public static preQueryHosts()[Ljava/lang/String;
    .locals 3

    .line 99
    sget-object v0, Lcom/qiniu/android/common/Config;->preQueryHost00:Ljava/lang/String;

    sget-object v1, Lcom/qiniu/android/common/Config;->preQueryHost01:Ljava/lang/String;

    sget-object v2, Lcom/qiniu/android/common/Config;->preQueryHost02:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static quick()V
    .locals 2

    const/16 v0, 0x400

    .line 106
    sput v0, Lcom/qiniu/android/common/Config;->uploadThreshold:I

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 107
    sput-wide v0, Lcom/qiniu/android/common/Config;->interval:D

    return-void
.end method

.method public static slow()V
    .locals 2

    const v0, 0x25800

    .line 122
    sput v0, Lcom/qiniu/android/common/Config;->uploadThreshold:I

    const-wide v0, 0x4072c00000000000L    # 300.0

    .line 123
    sput-wide v0, Lcom/qiniu/android/common/Config;->interval:D

    return-void
.end method
