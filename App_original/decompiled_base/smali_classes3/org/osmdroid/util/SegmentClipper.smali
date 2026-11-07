.class public Lorg/osmdroid/util/SegmentClipper;
.super Ljava/lang/Object;
.source "SegmentClipper.java"

# interfaces
.implements Lorg/osmdroid/util/PointAccepter;


# instance fields
.field private final cornerX:[J

.field private final cornerY:[J

.field private mCurrentSegmentIndex:I

.field private mFirstPoint:Z

.field private mIntegerAccepter:Lorg/osmdroid/util/IntegerAccepter;

.field private final mOptimIntersection:Lorg/osmdroid/util/PointL;

.field private final mOptimIntersection1:Lorg/osmdroid/util/PointL;

.field private final mOptimIntersection2:Lorg/osmdroid/util/PointL;

.field private mPathMode:Z

.field private final mPoint0:Lorg/osmdroid/util/PointL;

.field private final mPoint1:Lorg/osmdroid/util/PointL;

.field private mPointAccepter:Lorg/osmdroid/util/PointAccepter;

.field private mXMax:J

.field private mXMin:J

.field private mYMax:J

.field private mYMin:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection:Lorg/osmdroid/util/PointL;

    .line 14
    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection1:Lorg/osmdroid/util/PointL;

    .line 15
    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection2:Lorg/osmdroid/util/PointL;

    const/4 v0, 0x4

    .line 23
    new-array v1, v0, [J

    iput-object v1, p0, Lorg/osmdroid/util/SegmentClipper;->cornerX:[J

    .line 24
    new-array v0, v0, [J

    iput-object v0, p0, Lorg/osmdroid/util/SegmentClipper;->cornerY:[J

    .line 25
    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/SegmentClipper;->mPoint0:Lorg/osmdroid/util/PointL;

    .line 26
    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/SegmentClipper;->mPoint1:Lorg/osmdroid/util/PointL;

    return-void
.end method

.method private static clip(JJJ)J
    .locals 1

    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    return-wide p2

    :cond_0
    cmp-long p2, p0, p4

    if-ltz p2, :cond_1

    return-wide p4

    :cond_1
    return-wide p0
.end method

.method private clipX(J)J
    .locals 6

    .line 191
    iget-wide v2, p0, Lorg/osmdroid/util/SegmentClipper;->mXMin:J

    iget-wide v4, p0, Lorg/osmdroid/util/SegmentClipper;->mXMax:J

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/SegmentClipper;->clip(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private clipY(J)J
    .locals 6

    .line 195
    iget-wide v2, p0, Lorg/osmdroid/util/SegmentClipper;->mYMin:J

    iget-wide v4, p0, Lorg/osmdroid/util/SegmentClipper;->mYMax:J

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/SegmentClipper;->clip(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private getClosestCorner(JJJJ)I
    .locals 22

    move-object/from16 v0, p0

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 245
    :goto_0
    iget-object v5, v0, Lorg/osmdroid/util/SegmentClipper;->cornerX:[J

    array-length v6, v5

    if-ge v3, v6, :cond_1

    .line 246
    aget-wide v6, v5, v3

    long-to-double v8, v6

    iget-object v5, v0, Lorg/osmdroid/util/SegmentClipper;->cornerY:[J

    aget-wide v6, v5, v3

    long-to-double v10, v6

    move-wide/from16 v5, p1

    long-to-double v12, v5

    move-wide/from16 v14, p3

    move-wide/from16 v20, v1

    long-to-double v0, v14

    move-wide/from16 v16, v0

    move v7, v3

    move-wide/from16 v0, p5

    long-to-double v2, v0

    move-wide/from16 v0, p7

    move-wide/from16 v18, v2

    long-to-double v2, v0

    move-wide/from16 v14, v16

    move-wide/from16 v16, v18

    move-wide/from16 v18, v2

    invoke-static/range {v8 .. v19}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToSegment(DDDDDD)D

    move-result-wide v2

    cmpl-double v8, v20, v2

    if-lez v8, :cond_0

    move v4, v7

    goto :goto_1

    :cond_0
    move-wide/from16 v2, v20

    :goto_1
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-wide v1, v2

    move v3, v7

    goto :goto_0

    :cond_1
    return v4
.end method

.method private intersection(JJJJ)Z
    .locals 18

    move-object/from16 v1, p0

    .line 221
    iget-wide v10, v1, Lorg/osmdroid/util/SegmentClipper;->mXMin:J

    iget-wide v12, v1, Lorg/osmdroid/util/SegmentClipper;->mYMin:J

    iget-wide v2, v1, Lorg/osmdroid/util/SegmentClipper;->mYMax:J

    move-wide v14, v10

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v16, v2

    move-wide/from16 v2, p1

    invoke-direct/range {v1 .. v17}, Lorg/osmdroid/util/SegmentClipper;->intersection(JJJJJJJJ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v10, v1, Lorg/osmdroid/util/SegmentClipper;->mXMax:J

    iget-wide v12, v1, Lorg/osmdroid/util/SegmentClipper;->mYMin:J

    iget-wide v2, v1, Lorg/osmdroid/util/SegmentClipper;->mYMax:J

    move-wide v14, v10

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v16, v2

    move-wide/from16 v2, p1

    .line 222
    invoke-direct/range {v1 .. v17}, Lorg/osmdroid/util/SegmentClipper;->intersection(JJJJJJJJ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v10, v1, Lorg/osmdroid/util/SegmentClipper;->mXMin:J

    iget-wide v12, v1, Lorg/osmdroid/util/SegmentClipper;->mYMin:J

    iget-wide v14, v1, Lorg/osmdroid/util/SegmentClipper;->mXMax:J

    move-wide/from16 v16, v12

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    .line 223
    invoke-direct/range {v1 .. v17}, Lorg/osmdroid/util/SegmentClipper;->intersection(JJJJJJJJ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v10, v1, Lorg/osmdroid/util/SegmentClipper;->mXMin:J

    iget-wide v12, v1, Lorg/osmdroid/util/SegmentClipper;->mYMax:J

    iget-wide v14, v1, Lorg/osmdroid/util/SegmentClipper;->mXMax:J

    move-wide/from16 v16, v12

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    .line 224
    invoke-direct/range {v1 .. v17}, Lorg/osmdroid/util/SegmentClipper;->intersection(JJJJJJJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private intersection(JJJJJJJJ)Z
    .locals 18

    move-wide/from16 v0, p1

    long-to-double v1, v0

    move-wide/from16 v3, p3

    long-to-double v3, v3

    move-wide/from16 v5, p5

    long-to-double v5, v5

    move-wide/from16 v7, p7

    long-to-double v7, v7

    move-wide/from16 v9, p9

    long-to-double v9, v9

    move-wide/from16 v11, p11

    long-to-double v11, v11

    move-wide/from16 v13, p13

    long-to-double v13, v13

    move-wide v15, v1

    move-wide/from16 v0, p15

    long-to-double v0, v0

    move-object/from16 v2, p0

    move-wide/from16 p1, v0

    .line 212
    iget-object v0, v2, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection:Lorg/osmdroid/util/PointL;

    move-object/from16 v17, v0

    move-wide v1, v15

    move-wide/from16 v15, p1

    invoke-static/range {v1 .. v17}, Lorg/osmdroid/util/SegmentIntersection;->intersection(DDDDDDDDLorg/osmdroid/util/PointL;)Z

    move-result v0

    return v0
.end method

.method private isOnTheSameSideOut(JJJJ)Z
    .locals 3

    .line 265
    iget-wide v0, p0, Lorg/osmdroid/util/SegmentClipper;->mXMin:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    cmp-long v2, p5, v0

    if-ltz v2, :cond_3

    :cond_0
    iget-wide v0, p0, Lorg/osmdroid/util/SegmentClipper;->mXMax:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    cmp-long p1, p5, v0

    if-gtz p1, :cond_3

    :cond_1
    iget-wide p1, p0, Lorg/osmdroid/util/SegmentClipper;->mYMin:J

    cmp-long p5, p3, p1

    if-gez p5, :cond_2

    cmp-long p5, p7, p1

    if-ltz p5, :cond_3

    :cond_2
    iget-wide p1, p0, Lorg/osmdroid/util/SegmentClipper;->mYMax:J

    cmp-long p5, p3, p1

    if-lez p5, :cond_4

    cmp-long p3, p7, p1

    if-lez p3, :cond_4

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private nextVertex(JJ)V
    .locals 2

    .line 199
    iget-object v0, p0, Lorg/osmdroid/util/SegmentClipper;->mIntegerAccepter:Lorg/osmdroid/util/IntegerAccepter;

    if-eqz v0, :cond_0

    .line 200
    iget v1, p0, Lorg/osmdroid/util/SegmentClipper;->mCurrentSegmentIndex:I

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/IntegerAccepter;->add(I)V

    .line 202
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/util/SegmentClipper;->mPointAccepter:Lorg/osmdroid/util/PointAccepter;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/osmdroid/util/PointAccepter;->add(JJ)V

    return-void
.end method


# virtual methods
.method public add(JJ)V
    .locals 9

    .line 66
    iget-object v0, p0, Lorg/osmdroid/util/SegmentClipper;->mPoint1:Lorg/osmdroid/util/PointL;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/osmdroid/util/PointL;->set(JJ)V

    .line 67
    iget-boolean p1, p0, Lorg/osmdroid/util/SegmentClipper;->mFirstPoint:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lorg/osmdroid/util/SegmentClipper;->mFirstPoint:Z

    .line 69
    iput p1, p0, Lorg/osmdroid/util/SegmentClipper;->mCurrentSegmentIndex:I

    move-object v0, p0

    goto :goto_0

    .line 71
    :cond_0
    iget-object p1, p0, Lorg/osmdroid/util/SegmentClipper;->mPoint0:Lorg/osmdroid/util/PointL;

    iget-wide v1, p1, Lorg/osmdroid/util/PointL;->x:J

    iget-object p1, p0, Lorg/osmdroid/util/SegmentClipper;->mPoint0:Lorg/osmdroid/util/PointL;

    iget-wide v3, p1, Lorg/osmdroid/util/PointL;->y:J

    iget-object p1, p0, Lorg/osmdroid/util/SegmentClipper;->mPoint1:Lorg/osmdroid/util/PointL;

    iget-wide v5, p1, Lorg/osmdroid/util/PointL;->x:J

    iget-object p1, p0, Lorg/osmdroid/util/SegmentClipper;->mPoint1:Lorg/osmdroid/util/PointL;

    iget-wide v7, p1, Lorg/osmdroid/util/PointL;->y:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/osmdroid/util/SegmentClipper;->clip(JJJJ)V

    .line 72
    iget p1, v0, Lorg/osmdroid/util/SegmentClipper;->mCurrentSegmentIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lorg/osmdroid/util/SegmentClipper;->mCurrentSegmentIndex:I

    .line 74
    :goto_0
    iget-object p1, v0, Lorg/osmdroid/util/SegmentClipper;->mPoint0:Lorg/osmdroid/util/PointL;

    iget-object p2, v0, Lorg/osmdroid/util/SegmentClipper;->mPoint1:Lorg/osmdroid/util/PointL;

    invoke-virtual {p1, p2}, Lorg/osmdroid/util/PointL;->set(Lorg/osmdroid/util/PointL;)V

    return-void
.end method

.method public clip(JJJJ)V
    .locals 22

    move-object/from16 v1, p0

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    .line 89
    iget-boolean v0, v1, Lorg/osmdroid/util/SegmentClipper;->mPathMode:Z

    if-nez v0, :cond_0

    .line 90
    invoke-direct/range {p0 .. p8}, Lorg/osmdroid/util/SegmentClipper;->isOnTheSameSideOut(JJJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 94
    :cond_0
    invoke-virtual/range {p0 .. p4}, Lorg/osmdroid/util/SegmentClipper;->isInClipArea(JJ)Z

    move-result v0

    const-string v2, "Cannot find expected mOptimIntersection for "

    if-eqz v0, :cond_3

    .line 95
    invoke-virtual {v1, v6, v7, v8, v9}, Lorg/osmdroid/util/SegmentClipper;->isInClipArea(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-direct/range {p0 .. p4}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    .line 97
    invoke-direct {v1, v6, v7, v8, v9}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    return-void

    .line 100
    :cond_1
    invoke-direct/range {p0 .. p8}, Lorg/osmdroid/util/SegmentClipper;->intersection(JJJJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    invoke-direct/range {p0 .. p4}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    .line 102
    iget-object v0, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection:Lorg/osmdroid/util/PointL;

    iget-wide v2, v0, Lorg/osmdroid/util/PointL;->x:J

    iget-object v0, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection:Lorg/osmdroid/util/PointL;

    iget-wide v4, v0, Lorg/osmdroid/util/PointL;->y:J

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    .line 103
    iget-boolean v0, v1, Lorg/osmdroid/util/SegmentClipper;->mPathMode:Z

    if-eqz v0, :cond_13

    .line 104
    invoke-direct {v1, v6, v7}, Lorg/osmdroid/util/SegmentClipper;->clipX(J)J

    move-result-wide v2

    invoke-direct {v1, v8, v9}, Lorg/osmdroid/util/SegmentClipper;->clipY(J)J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    return-void

    .line 108
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/osmdroid/util/RectL;

    move-wide/from16 v3, p1

    move-wide v9, v8

    move-wide v7, v6

    move-wide/from16 v5, p3

    invoke-direct/range {v2 .. v10}, Lorg/osmdroid/util/RectL;-><init>(JJJJ)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-wide/from16 v4, p3

    .line 110
    invoke-virtual {v1, v6, v7, v8, v9}, Lorg/osmdroid/util/SegmentClipper;->isInClipArea(JJ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 111
    invoke-direct/range {p0 .. p8}, Lorg/osmdroid/util/SegmentClipper;->intersection(JJJJ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 112
    iget-boolean v0, v1, Lorg/osmdroid/util/SegmentClipper;->mPathMode:Z

    if-eqz v0, :cond_4

    .line 113
    invoke-direct/range {p0 .. p2}, Lorg/osmdroid/util/SegmentClipper;->clipX(J)J

    move-result-wide v2

    invoke-direct {v1, v4, v5}, Lorg/osmdroid/util/SegmentClipper;->clipY(J)J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    .line 115
    :cond_4
    iget-object v0, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection:Lorg/osmdroid/util/PointL;

    iget-wide v2, v0, Lorg/osmdroid/util/PointL;->x:J

    iget-object v0, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection:Lorg/osmdroid/util/PointL;

    iget-wide v4, v0, Lorg/osmdroid/util/PointL;->y:J

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    .line 116
    invoke-direct {v1, v6, v7, v8, v9}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    return-void

    .line 119
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/osmdroid/util/RectL;

    move-wide v9, v8

    move-wide v7, v6

    move-wide v5, v4

    move-wide/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Lorg/osmdroid/util/RectL;-><init>(JJJJ)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_6
    iget-wide v10, v1, Lorg/osmdroid/util/SegmentClipper;->mXMin:J

    iget-wide v12, v1, Lorg/osmdroid/util/SegmentClipper;->mYMin:J

    iget-wide v2, v1, Lorg/osmdroid/util/SegmentClipper;->mYMax:J

    move-wide v14, v10

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v16, v2

    move-wide/from16 v2, p1

    invoke-direct/range {v1 .. v17}, Lorg/osmdroid/util/SegmentClipper;->intersection(JJJJJJJJ)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    .line 124
    iget-object v0, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection1:Lorg/osmdroid/util/PointL;

    .line 125
    iget-object v3, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection:Lorg/osmdroid/util/PointL;

    invoke-virtual {v0, v3}, Lorg/osmdroid/util/PointL;->set(Lorg/osmdroid/util/PointL;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    .line 127
    :goto_0
    iget-wide v10, v1, Lorg/osmdroid/util/SegmentClipper;->mXMax:J

    iget-wide v12, v1, Lorg/osmdroid/util/SegmentClipper;->mYMin:J

    iget-wide v3, v1, Lorg/osmdroid/util/SegmentClipper;->mYMax:J

    move-wide v14, v10

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v18, v0

    move-wide/from16 v16, v3

    const/4 v0, 0x1

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-direct/range {v1 .. v17}, Lorg/osmdroid/util/SegmentClipper;->intersection(JJJJJJJJ)Z

    move-result v10

    if-eqz v10, :cond_9

    add-int/lit8 v2, v18, 0x1

    if-nez v18, :cond_8

    .line 128
    iget-object v3, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection1:Lorg/osmdroid/util/PointL;

    goto :goto_1

    :cond_8
    iget-object v3, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection2:Lorg/osmdroid/util/PointL;

    .line 129
    :goto_1
    iget-object v4, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection:Lorg/osmdroid/util/PointL;

    invoke-virtual {v3, v4}, Lorg/osmdroid/util/PointL;->set(Lorg/osmdroid/util/PointL;)V

    move/from16 v18, v2

    .line 131
    :cond_9
    iget-wide v10, v1, Lorg/osmdroid/util/SegmentClipper;->mXMin:J

    iget-wide v12, v1, Lorg/osmdroid/util/SegmentClipper;->mYMin:J

    iget-wide v14, v1, Lorg/osmdroid/util/SegmentClipper;->mXMax:J

    move-wide/from16 v16, v12

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v17}, Lorg/osmdroid/util/SegmentClipper;->intersection(JJJJJJJJ)Z

    move-result v10

    if-eqz v10, :cond_b

    add-int/lit8 v2, v18, 0x1

    if-nez v18, :cond_a

    .line 132
    iget-object v3, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection1:Lorg/osmdroid/util/PointL;

    goto :goto_2

    :cond_a
    iget-object v3, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection2:Lorg/osmdroid/util/PointL;

    .line 133
    :goto_2
    iget-object v4, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection:Lorg/osmdroid/util/PointL;

    invoke-virtual {v3, v4}, Lorg/osmdroid/util/PointL;->set(Lorg/osmdroid/util/PointL;)V

    move/from16 v18, v2

    .line 135
    :cond_b
    iget-wide v10, v1, Lorg/osmdroid/util/SegmentClipper;->mXMin:J

    iget-wide v12, v1, Lorg/osmdroid/util/SegmentClipper;->mYMax:J

    iget-wide v14, v1, Lorg/osmdroid/util/SegmentClipper;->mXMax:J

    move-wide/from16 v16, v12

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v17}, Lorg/osmdroid/util/SegmentClipper;->intersection(JJJJJJJJ)Z

    move-result v10

    if-eqz v10, :cond_d

    add-int/lit8 v2, v18, 0x1

    if-nez v18, :cond_c

    .line 136
    iget-object v3, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection1:Lorg/osmdroid/util/PointL;

    goto :goto_3

    :cond_c
    iget-object v3, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection2:Lorg/osmdroid/util/PointL;

    .line 137
    :goto_3
    iget-object v10, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection:Lorg/osmdroid/util/PointL;

    invoke-virtual {v3, v10}, Lorg/osmdroid/util/PointL;->set(Lorg/osmdroid/util/PointL;)V

    goto :goto_4

    :cond_d
    move/from16 v2, v18

    :goto_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_11

    .line 140
    iget-object v0, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection1:Lorg/osmdroid/util/PointL;

    iget-wide v2, v0, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v10, v2

    iget-object v0, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection1:Lorg/osmdroid/util/PointL;

    iget-wide v2, v0, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v12, v2

    move-wide/from16 v2, p1

    long-to-double v14, v2

    long-to-double v2, v4

    move-wide/from16 v16, v2

    invoke-static/range {v10 .. v17}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToPoint(DDDD)D

    move-result-wide v2

    .line 142
    iget-object v0, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection2:Lorg/osmdroid/util/PointL;

    iget-wide v10, v0, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v10, v10

    iget-object v0, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection2:Lorg/osmdroid/util/PointL;

    iget-wide v12, v0, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v12, v12

    move-wide/from16 v18, v14

    move-wide/from16 v20, v16

    move-wide v14, v10

    move-wide/from16 v16, v12

    invoke-static/range {v14 .. v21}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToPoint(DDDD)D

    move-result-wide v10

    cmpg-double v0, v2, v10

    if-gez v0, :cond_e

    .line 144
    iget-object v2, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection1:Lorg/osmdroid/util/PointL;

    goto :goto_5

    :cond_e
    iget-object v2, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection2:Lorg/osmdroid/util/PointL;

    :goto_5
    if-gez v0, :cond_f

    .line 145
    iget-object v0, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection2:Lorg/osmdroid/util/PointL;

    goto :goto_6

    :cond_f
    iget-object v0, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection1:Lorg/osmdroid/util/PointL;

    .line 146
    :goto_6
    iget-boolean v3, v1, Lorg/osmdroid/util/SegmentClipper;->mPathMode:Z

    if-eqz v3, :cond_10

    .line 147
    invoke-direct/range {p0 .. p2}, Lorg/osmdroid/util/SegmentClipper;->clipX(J)J

    move-result-wide v10

    invoke-direct {v1, v4, v5}, Lorg/osmdroid/util/SegmentClipper;->clipY(J)J

    move-result-wide v3

    invoke-direct {v1, v10, v11, v3, v4}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    .line 149
    :cond_10
    iget-wide v3, v2, Lorg/osmdroid/util/PointL;->x:J

    iget-wide v10, v2, Lorg/osmdroid/util/PointL;->y:J

    invoke-direct {v1, v3, v4, v10, v11}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    .line 150
    iget-wide v2, v0, Lorg/osmdroid/util/PointL;->x:J

    iget-wide v4, v0, Lorg/osmdroid/util/PointL;->y:J

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    .line 151
    iget-boolean v0, v1, Lorg/osmdroid/util/SegmentClipper;->mPathMode:Z

    if-eqz v0, :cond_13

    .line 152
    invoke-direct {v1, v6, v7}, Lorg/osmdroid/util/SegmentClipper;->clipX(J)J

    move-result-wide v2

    invoke-direct {v1, v8, v9}, Lorg/osmdroid/util/SegmentClipper;->clipY(J)J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    return-void

    :cond_11
    if-ne v2, v0, :cond_12

    .line 157
    iget-boolean v0, v1, Lorg/osmdroid/util/SegmentClipper;->mPathMode:Z

    if-eqz v0, :cond_13

    .line 158
    invoke-direct/range {p0 .. p2}, Lorg/osmdroid/util/SegmentClipper;->clipX(J)J

    move-result-wide v2

    invoke-direct {v1, v4, v5}, Lorg/osmdroid/util/SegmentClipper;->clipY(J)J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    .line 159
    iget-object v0, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection1:Lorg/osmdroid/util/PointL;

    iget-wide v2, v0, Lorg/osmdroid/util/PointL;->x:J

    iget-object v0, v1, Lorg/osmdroid/util/SegmentClipper;->mOptimIntersection1:Lorg/osmdroid/util/PointL;

    iget-wide v4, v0, Lorg/osmdroid/util/PointL;->y:J

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    .line 160
    invoke-direct {v1, v6, v7}, Lorg/osmdroid/util/SegmentClipper;->clipX(J)J

    move-result-wide v2

    invoke-direct {v1, v8, v9}, Lorg/osmdroid/util/SegmentClipper;->clipY(J)J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    return-void

    :cond_12
    if-nez v2, :cond_14

    .line 165
    iget-boolean v0, v1, Lorg/osmdroid/util/SegmentClipper;->mPathMode:Z

    if-eqz v0, :cond_13

    .line 166
    invoke-direct/range {p0 .. p2}, Lorg/osmdroid/util/SegmentClipper;->clipX(J)J

    move-result-wide v2

    invoke-direct {v1, v4, v5}, Lorg/osmdroid/util/SegmentClipper;->clipY(J)J

    move-result-wide v10

    invoke-direct {v1, v2, v3, v10, v11}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    .line 167
    invoke-direct/range {p0 .. p8}, Lorg/osmdroid/util/SegmentClipper;->getClosestCorner(JJJJ)I

    move-result v0

    .line 168
    iget-object v2, v1, Lorg/osmdroid/util/SegmentClipper;->cornerX:[J

    aget-wide v3, v2, v0

    iget-object v2, v1, Lorg/osmdroid/util/SegmentClipper;->cornerY:[J

    aget-wide v10, v2, v0

    invoke-direct {v1, v3, v4, v10, v11}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    .line 169
    invoke-direct {v1, v6, v7}, Lorg/osmdroid/util/SegmentClipper;->clipX(J)J

    move-result-wide v2

    invoke-direct {v1, v8, v9}, Lorg/osmdroid/util/SegmentClipper;->clipY(J)J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/SegmentClipper;->nextVertex(JJ)V

    :cond_13
    :goto_7
    return-void

    .line 173
    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Impossible mOptimIntersection count ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()V
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/osmdroid/util/SegmentClipper;->mIntegerAccepter:Lorg/osmdroid/util/IntegerAccepter;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lorg/osmdroid/util/IntegerAccepter;->end()V

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/util/SegmentClipper;->mPointAccepter:Lorg/osmdroid/util/PointAccepter;

    invoke-interface {v0}, Lorg/osmdroid/util/PointAccepter;->end()V

    return-void
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lorg/osmdroid/util/SegmentClipper;->mFirstPoint:Z

    .line 58
    iget-object v0, p0, Lorg/osmdroid/util/SegmentClipper;->mIntegerAccepter:Lorg/osmdroid/util/IntegerAccepter;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lorg/osmdroid/util/IntegerAccepter;->init()V

    .line 61
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/util/SegmentClipper;->mPointAccepter:Lorg/osmdroid/util/PointAccepter;

    invoke-interface {v0}, Lorg/osmdroid/util/PointAccepter;->init()V

    return-void
.end method

.method public isInClipArea(JJ)Z
    .locals 3

    .line 180
    iget-wide v0, p0, Lorg/osmdroid/util/SegmentClipper;->mXMin:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    iget-wide v0, p0, Lorg/osmdroid/util/SegmentClipper;->mXMax:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    iget-wide p1, p0, Lorg/osmdroid/util/SegmentClipper;->mYMin:J

    cmp-long v0, p3, p1

    if-lez v0, :cond_0

    iget-wide p1, p0, Lorg/osmdroid/util/SegmentClipper;->mYMax:J

    cmp-long v0, p3, p1

    if-gez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public set(JJJJLorg/osmdroid/util/PointAccepter;Lorg/osmdroid/util/IntegerAccepter;Z)V
    .locals 3

    .line 37
    iput-wide p1, p0, Lorg/osmdroid/util/SegmentClipper;->mXMin:J

    .line 38
    iput-wide p3, p0, Lorg/osmdroid/util/SegmentClipper;->mYMin:J

    .line 39
    iput-wide p5, p0, Lorg/osmdroid/util/SegmentClipper;->mXMax:J

    .line 40
    iput-wide p7, p0, Lorg/osmdroid/util/SegmentClipper;->mYMax:J

    .line 41
    iget-object v0, p0, Lorg/osmdroid/util/SegmentClipper;->cornerX:[J

    const/4 v1, 0x1

    aput-wide p1, v0, v1

    const/4 v2, 0x0

    aput-wide p1, v0, v2

    const/4 p1, 0x3

    .line 42
    aput-wide p5, v0, p1

    const/4 p2, 0x2

    aput-wide p5, v0, p2

    .line 43
    iget-object p5, p0, Lorg/osmdroid/util/SegmentClipper;->cornerY:[J

    aput-wide p3, p5, p2

    aput-wide p3, p5, v2

    .line 44
    aput-wide p7, p5, p1

    aput-wide p7, p5, v1

    .line 45
    iput-object p9, p0, Lorg/osmdroid/util/SegmentClipper;->mPointAccepter:Lorg/osmdroid/util/PointAccepter;

    .line 46
    iput-object p10, p0, Lorg/osmdroid/util/SegmentClipper;->mIntegerAccepter:Lorg/osmdroid/util/IntegerAccepter;

    .line 47
    iput-boolean p11, p0, Lorg/osmdroid/util/SegmentClipper;->mPathMode:Z

    return-void
.end method

.method public set(JJJJLorg/osmdroid/util/PointAccepter;Z)V
    .locals 12

    const/4 v10, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move/from16 v11, p10

    .line 52
    invoke-virtual/range {v0 .. v11}, Lorg/osmdroid/util/SegmentClipper;->set(JJJJLorg/osmdroid/util/PointAccepter;Lorg/osmdroid/util/IntegerAccepter;Z)V

    return-void
.end method
