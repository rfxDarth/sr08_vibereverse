.class final Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$Sides;
.super Ljava/lang/Object;
.source "AbstractRegion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Sides"
.end annotation


# instance fields
.field private minusFound:Z

.field private plusFound:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 639
    iput-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$Sides;->plusFound:Z

    .line 640
    iput-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$Sides;->minusFound:Z

    return-void
.end method


# virtual methods
.method public minusFound()Z
    .locals 1

    .line 666
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$Sides;->minusFound:Z

    return v0
.end method

.method public plusFound()Z
    .locals 1

    .line 653
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$Sides;->plusFound:Z

    return v0
.end method

.method public rememberMinusFound()V
    .locals 1

    const/4 v0, 0x1

    .line 659
    iput-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$Sides;->minusFound:Z

    return-void
.end method

.method public rememberPlusFound()V
    .locals 1

    const/4 v0, 0x1

    .line 646
    iput-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$Sides;->plusFound:Z

    return-void
.end method
