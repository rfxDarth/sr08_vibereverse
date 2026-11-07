.class public Lcom/scwang/smartrefresh/header/waveswipe/DropBounceInterpolator;
.super Ljava/lang/Object;
.source "DropBounceInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 7

    const/high16 v0, 0x3e800000    # 0.25f

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    float-to-double v3, p1

    const-wide/high16 v5, 0x3fc0000000000000L    # 0.125

    sub-double/2addr v3, v5

    .line 40
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    const v0, -0x3de66666    # -38.4f

    mul-float p1, p1, v0

    const v0, 0x3f19999a    # 0.6f

    :goto_0
    add-float/2addr p1, v0

    return p1

    :cond_0
    float-to-double v3, p1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpl-double p1, v3, v5

    if-ltz p1, :cond_1

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    cmpg-double p1, v3, v5

    if-gez p1, :cond_1

    const-wide/high16 v5, 0x3fe4000000000000L    # 0.625

    sub-double/2addr v3, v5

    .line 42
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    const v0, -0x3e666666    # -19.2f

    mul-float p1, p1, v0

    const v0, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
