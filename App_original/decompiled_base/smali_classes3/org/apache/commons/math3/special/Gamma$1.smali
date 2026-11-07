.class final Lorg/apache/commons/math3/special/Gamma$1;
.super Lorg/apache/commons/math3/util/ContinuedFraction;
.source "Gamma.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/special/Gamma;->regularizedGammaQ(DDDI)D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$a:D


# direct methods
.method constructor <init>(D)V
    .locals 0

    .line 404
    iput-wide p1, p0, Lorg/apache/commons/math3/special/Gamma$1;->val$a:D

    invoke-direct {p0}, Lorg/apache/commons/math3/util/ContinuedFraction;-><init>()V

    return-void
.end method


# virtual methods
.method protected getA(ID)D
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    int-to-double v2, p1

    mul-double v2, v2, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v0

    .line 408
    iget-wide v0, p0, Lorg/apache/commons/math3/special/Gamma$1;->val$a:D

    sub-double/2addr v2, v0

    add-double/2addr v2, p2

    return-wide v2
.end method

.method protected getB(ID)D
    .locals 2

    int-to-double p1, p1

    .line 413
    iget-wide v0, p0, Lorg/apache/commons/math3/special/Gamma$1;->val$a:D

    sub-double/2addr v0, p1

    mul-double p1, p1, v0

    return-wide p1
.end method
