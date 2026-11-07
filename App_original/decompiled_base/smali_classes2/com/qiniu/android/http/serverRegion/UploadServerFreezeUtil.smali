.class public Lcom/qiniu/android/http/serverRegion/UploadServerFreezeUtil;
.super Ljava/lang/Object;
.source "UploadServerFreezeUtil.java"


# static fields
.field private static final globalHttp2Freezer:Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;

.field private static final globalHttp3Freezer:Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;

    invoke-direct {v0}, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;-><init>()V

    sput-object v0, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeUtil;->globalHttp3Freezer:Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;

    .line 25
    new-instance v0, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;

    invoke-direct {v0}, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;-><init>()V

    sput-object v0, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeUtil;->globalHttp2Freezer:Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFrozenType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 69
    invoke-static {p1, p0}, Lcom/qiniu/android/utils/Utils;->getIpType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    .line 70
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const-string p0, "%s-%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static globalHttp2Freezer()Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;
    .locals 1

    .line 33
    sget-object v0, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeUtil;->globalHttp2Freezer:Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;

    return-object v0
.end method

.method public static globalHttp3Freezer()Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;
    .locals 1

    .line 22
    sget-object v0, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeUtil;->globalHttp3Freezer:Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;

    return-object v0
.end method

.method public static isTypeFrozenByFreezeManagers(Ljava/lang/String;[Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;)Z
    .locals 3

    if-eqz p0, :cond_5

    .line 44
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 47
    array-length v1, p1

    if-nez v1, :cond_1

    goto :goto_1

    .line 52
    :cond_1
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    aget-object v2, p1, v0

    .line 53
    invoke-virtual {v2, p0}, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;->isTypeFrozen(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_1
    return v0

    :cond_5
    :goto_2
    const/4 p0, 0x1

    return p0
.end method
