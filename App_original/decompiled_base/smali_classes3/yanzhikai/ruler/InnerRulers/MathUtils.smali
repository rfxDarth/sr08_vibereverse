.class public Lyanzhikai/ruler/InnerRulers/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# static fields
.field private static inputCache:F

.field private static outputCache:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static round(F)F
    .locals 1

    .line 14
    sget v0, Lyanzhikai/ruler/InnerRulers/MathUtils;->inputCache:F

    cmpl-float v0, v0, p0

    if-nez v0, :cond_0

    .line 15
    sget p0, Lyanzhikai/ruler/InnerRulers/MathUtils;->outputCache:F

    return p0

    .line 17
    :cond_0
    sput p0, Lyanzhikai/ruler/InnerRulers/MathUtils;->inputCache:F

    .line 18
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    sput p0, Lyanzhikai/ruler/InnerRulers/MathUtils;->outputCache:F

    return p0
.end method
