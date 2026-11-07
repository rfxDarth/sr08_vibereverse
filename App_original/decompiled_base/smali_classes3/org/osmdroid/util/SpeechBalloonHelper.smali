.class public Lorg/osmdroid/util/SpeechBalloonHelper;
.super Ljava/lang/Object;
.source "SpeechBalloonHelper.java"


# static fields
.field public static final CORNER_BOTTOM:I = 0x8

.field public static final CORNER_INSIDE:I = -0x1

.field public static final CORNER_LEFT:I = 0x1

.field public static final CORNER_NONE:I = 0x0

.field public static final CORNER_RIGHT:I = 0x2

.field public static final CORNER_TOP:I = 0x4


# instance fields
.field private mPoint:Lorg/osmdroid/util/PointL;

.field private mRect:Lorg/osmdroid/util/RectL;

.field private final mTrianglePoint:Lorg/osmdroid/util/PointL;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mTrianglePoint:Lorg/osmdroid/util/PointL;

    return-void
.end method

.method private checkIntersection(Lorg/osmdroid/util/PointL;)I
    .locals 5

    .line 55
    iget-object v0, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->y:J

    iget-object v2, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    iget-wide v2, v2, Lorg/osmdroid/util/RectL;->top:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    iget-object v0, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    iget-wide v0, v0, Lorg/osmdroid/util/RectL;->top:J

    invoke-direct {p0, v0, v1, p1}, Lorg/osmdroid/util/SpeechBalloonHelper;->checkIntersectionY(JLorg/osmdroid/util/PointL;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x4

    return p1

    .line 58
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->y:J

    iget-object v2, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    iget-wide v2, v2, Lorg/osmdroid/util/RectL;->bottom:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    iget-object v0, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    iget-wide v0, v0, Lorg/osmdroid/util/RectL;->bottom:J

    invoke-direct {p0, v0, v1, p1}, Lorg/osmdroid/util/SpeechBalloonHelper;->checkIntersectionY(JLorg/osmdroid/util/PointL;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x8

    return p1

    .line 61
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->x:J

    iget-object v2, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    iget-wide v2, v2, Lorg/osmdroid/util/RectL;->left:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    iget-object v0, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    iget-wide v0, v0, Lorg/osmdroid/util/RectL;->left:J

    invoke-direct {p0, v0, v1, p1}, Lorg/osmdroid/util/SpeechBalloonHelper;->checkIntersectionX(JLorg/osmdroid/util/PointL;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 64
    :cond_2
    iget-object v0, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->x:J

    iget-object v2, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    iget-wide v2, v2, Lorg/osmdroid/util/RectL;->right:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    iget-object v0, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    iget-wide v0, v0, Lorg/osmdroid/util/RectL;->right:J

    invoke-direct {p0, v0, v1, p1}, Lorg/osmdroid/util/SpeechBalloonHelper;->checkIntersectionX(JLorg/osmdroid/util/PointL;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    return p1

    .line 67
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private checkIntersectionX(JLorg/osmdroid/util/PointL;)Z
    .locals 20

    move-object/from16 v0, p0

    .line 71
    iget-object v1, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v1, v1, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v3, v1

    iget-object v1, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v1, v1, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v5, v1

    iget-object v1, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mTrianglePoint:Lorg/osmdroid/util/PointL;

    iget-wide v1, v1, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v7, v1

    iget-object v1, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mTrianglePoint:Lorg/osmdroid/util/PointL;

    iget-wide v1, v1, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v9, v1

    move-wide/from16 v1, p1

    long-to-double v11, v1

    iget-object v1, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    iget-wide v1, v1, Lorg/osmdroid/util/RectL;->top:J

    long-to-double v13, v1

    iget-object v1, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    iget-wide v1, v1, Lorg/osmdroid/util/RectL;->bottom:J

    long-to-double v1, v1

    move-wide v15, v11

    move-object/from16 v19, p3

    move-wide/from16 v17, v1

    invoke-static/range {v3 .. v19}, Lorg/osmdroid/util/SegmentIntersection;->intersection(DDDDDDDDLorg/osmdroid/util/PointL;)Z

    move-result v1

    return v1
.end method

.method private checkIntersectionY(JLorg/osmdroid/util/PointL;)Z
    .locals 20

    move-object/from16 v0, p0

    .line 78
    iget-object v1, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v1, v1, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v3, v1

    iget-object v1, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v1, v1, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v5, v1

    iget-object v1, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mTrianglePoint:Lorg/osmdroid/util/PointL;

    iget-wide v1, v1, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v7, v1

    iget-object v1, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mTrianglePoint:Lorg/osmdroid/util/PointL;

    iget-wide v1, v1, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v9, v1

    iget-object v1, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    iget-wide v1, v1, Lorg/osmdroid/util/RectL;->left:J

    long-to-double v11, v1

    move-wide/from16 v1, p1

    long-to-double v13, v1

    iget-object v1, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    iget-wide v1, v1, Lorg/osmdroid/util/RectL;->right:J

    long-to-double v1, v1

    move-wide/from16 v17, v13

    move-object/from16 v19, p3

    move-wide v15, v1

    invoke-static/range {v3 .. v19}, Lorg/osmdroid/util/SegmentIntersection;->intersection(DDDDDDDDLorg/osmdroid/util/PointL;)Z

    move-result v1

    return v1
.end method

.method private computeCirclePoint(Lorg/osmdroid/util/PointL;DDZ)V
    .locals 10

    .line 86
    iget-object v0, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    invoke-virtual {v0}, Lorg/osmdroid/util/RectL;->centerX()J

    move-result-wide v1

    iget-object v0, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    invoke-virtual {v0}, Lorg/osmdroid/util/RectL;->centerY()J

    move-result-wide v3

    if-eqz p6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    int-to-double v5, v0

    const-wide v7, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double v5, v5, v7

    add-double v7, p4, v5

    move-object v9, p1

    move-wide v5, p2

    invoke-static/range {v1 .. v9}, Lorg/osmdroid/util/MyMath;->computeCirclePoint(JJDDLorg/osmdroid/util/PointL;)V

    return-void
.end method


# virtual methods
.method public compute(Lorg/osmdroid/util/RectL;Lorg/osmdroid/util/PointL;DLorg/osmdroid/util/PointL;Lorg/osmdroid/util/PointL;)I
    .locals 10

    .line 35
    iput-object p1, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    .line 36
    iput-object p2, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mPoint:Lorg/osmdroid/util/PointL;

    .line 38
    iget-wide v2, p2, Lorg/osmdroid/util/PointL;->x:J

    iget-object v4, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v4, v4, Lorg/osmdroid/util/PointL;->y:J

    invoke-virtual {p1, v2, v3, v4, v5}, Lorg/osmdroid/util/RectL;->contains(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    return v1

    .line 42
    :cond_0
    iget-object v1, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    invoke-virtual {v1}, Lorg/osmdroid/util/RectL;->centerX()J

    move-result-wide v2

    iget-object v1, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    invoke-virtual {v1}, Lorg/osmdroid/util/RectL;->centerY()J

    move-result-wide v4

    iget-object v1, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v6, v1, Lorg/osmdroid/util/PointL;->x:J

    iget-object v1, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v8, v1, Lorg/osmdroid/util/PointL;->y:J

    invoke-static/range {v2 .. v9}, Lorg/osmdroid/util/MyMath;->computeAngle(JJJJ)D

    move-result-wide v4

    .line 44
    iget-object v1, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mTrianglePoint:Lorg/osmdroid/util/PointL;

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v2, p3

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/util/SpeechBalloonHelper;->computeCirclePoint(Lorg/osmdroid/util/PointL;DDZ)V

    .line 45
    invoke-direct {p0, p5}, Lorg/osmdroid/util/SpeechBalloonHelper;->checkIntersection(Lorg/osmdroid/util/PointL;)I

    move-result v7

    .line 46
    iget-object v1, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mTrianglePoint:Lorg/osmdroid/util/PointL;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/util/SpeechBalloonHelper;->computeCirclePoint(Lorg/osmdroid/util/PointL;DDZ)V

    move-object/from16 v1, p6

    .line 47
    invoke-direct {p0, v1}, Lorg/osmdroid/util/SpeechBalloonHelper;->checkIntersection(Lorg/osmdroid/util/PointL;)I

    move-result v1

    if-ne v7, v1, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    or-int/2addr v1, v7

    return v1
.end method
