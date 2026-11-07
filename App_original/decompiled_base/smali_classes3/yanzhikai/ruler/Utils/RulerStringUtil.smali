.class public Lyanzhikai/ruler/Utils/RulerStringUtil;
.super Ljava/lang/Object;
.source "RulerStringUtil.java"


# static fields
.field private static mDividerCache:F = 1.0f

.field private static mFactorCache:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resultValueOf(FF)Ljava/lang/String;
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    mul-float p0, p0, p1

    float-to-int p0, p0

    .line 24
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    .line 26
    sget v1, Lyanzhikai/ruler/Utils/RulerStringUtil;->mFactorCache:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 27
    sput p1, Lyanzhikai/ruler/Utils/RulerStringUtil;->mFactorCache:F

    div-float/2addr v0, p1

    .line 28
    sput v0, Lyanzhikai/ruler/Utils/RulerStringUtil;->mDividerCache:F

    .line 30
    :cond_1
    sget p1, Lyanzhikai/ruler/Utils/RulerStringUtil;->mDividerCache:F

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 33
    :cond_2
    :try_start_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Invalid factor!"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    const-string p0, ""

    return-object p0
.end method
