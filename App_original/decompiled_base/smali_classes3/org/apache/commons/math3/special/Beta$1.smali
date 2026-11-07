.class final Lorg/apache/commons/math3/special/Beta$1;
.super Lorg/apache/commons/math3/util/ContinuedFraction;
.source "Beta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/special/Beta;->regularizedBeta(DDDDI)D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$a:D

.field final synthetic val$b:D


# direct methods
.method constructor <init>(DD)V
    .locals 0

    .line 199
    iput-wide p1, p0, Lorg/apache/commons/math3/special/Beta$1;->val$b:D

    iput-wide p3, p0, Lorg/apache/commons/math3/special/Beta$1;->val$a:D

    invoke-direct {p0}, Lorg/apache/commons/math3/util/ContinuedFraction;-><init>()V

    return-void
.end method


# virtual methods
.method protected getA(ID)D
    .locals 0

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    return-wide p1
.end method

.method protected getB(ID)D
    .locals 12

    .line 205
    rem-int/lit8 v1, p1, 0x2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    if-nez v1, :cond_0

    int-to-double v0, p1

    div-double/2addr v0, v4

    .line 207
    iget-wide v6, p0, Lorg/apache/commons/math3/special/Beta$1;->val$b:D

    sub-double/2addr v6, v0

    mul-double v6, v6, v0

    mul-double v6, v6, p2

    iget-wide v8, p0, Lorg/apache/commons/math3/special/Beta$1;->val$a:D

    mul-double v0, v0, v4

    add-double v4, v8, v0

    sub-double/2addr v4, v2

    add-double/2addr v8, v0

    mul-double v4, v4, v8

    div-double/2addr v6, v4

    return-wide v6

    :cond_0
    int-to-double v0, p1

    sub-double/2addr v0, v2

    div-double/2addr v0, v4

    .line 211
    iget-wide v6, p0, Lorg/apache/commons/math3/special/Beta$1;->val$a:D

    add-double v8, v6, v0

    iget-wide v10, p0, Lorg/apache/commons/math3/special/Beta$1;->val$b:D

    add-double/2addr v10, v6

    add-double/2addr v10, v0

    mul-double v8, v8, v10

    mul-double v8, v8, p2

    neg-double v8, v8

    mul-double v0, v0, v4

    add-double v4, v6, v0

    add-double/2addr v6, v0

    add-double/2addr v6, v2

    mul-double v4, v4, v6

    div-double/2addr v8, v4

    return-wide v8
.end method
