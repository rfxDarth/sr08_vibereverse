.class public Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;
.super Lorg/osmdroid/views/overlay/milestones/MilestoneLister;
.source "MilestoneMeterDistanceLister.java"


# instance fields
.field private mDistance:D

.field private mIndex:I

.field private final mMilestoneMeters:[D

.field private mMilestoneMetersIndex:I

.field private final mNbMetersRecurrence:D

.field private mNeededForNext:D

.field private mSideEffectLastEpsilon:D

.field private mSideEffectLastFlag:Z

.field private mSideEffectLastOrientation:D

.field private mSideEffectLastX:J

.field private mSideEffectLastY:J


# direct methods
.method public constructor <init>(D)V
    .locals 2

    .line 36
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;-><init>()V

    const-wide v0, 0x3ee4f8b588e368f1L    # 1.0E-5

    .line 28
    iput-wide v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mSideEffectLastEpsilon:D

    .line 37
    iput-wide p1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mNbMetersRecurrence:D

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mMilestoneMeters:[D

    return-void
.end method

.method public constructor <init>([D)V
    .locals 2

    .line 47
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;-><init>()V

    const-wide v0, 0x3ee4f8b588e368f1L    # 1.0E-5

    .line 28
    iput-wide v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mSideEffectLastEpsilon:D

    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mNbMetersRecurrence:D

    .line 49
    iput-object p1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mMilestoneMeters:[D

    return-void
.end method

.method private add(JJD)V
    .locals 8

    .line 141
    new-instance v0, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;

    iget-wide v1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mDistance:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;-><init>(JJDLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->add(Lorg/osmdroid/views/overlay/milestones/MilestoneStep;)V

    return-void
.end method

.method private getNewNeededForNext()D
    .locals 8

    .line 105
    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mMilestoneMeters:[D

    if-nez v0, :cond_0

    .line 106
    iget-wide v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mNbMetersRecurrence:D

    return-wide v0

    .line 108
    :cond_0
    iget v1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mMilestoneMetersIndex:I

    array-length v2, v0

    if-lt v1, v2, :cond_1

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0

    :cond_1
    const-wide/16 v2, 0x0

    if-nez v1, :cond_2

    move-wide v4, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v1, -0x1

    .line 111
    aget-wide v4, v0, v4

    :goto_0
    add-int/lit8 v6, v1, 0x1

    .line 112
    iput v6, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mMilestoneMetersIndex:I

    aget-wide v6, v0, v1

    sub-double/2addr v6, v4

    cmpg-double v0, v6, v2

    if-ltz v0, :cond_3

    return-wide v6

    .line 114
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected add(JJJJ)V
    .locals 26

    move-object/from16 v0, p0

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    const/4 v1, 0x0

    .line 66
    iput-boolean v1, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mSideEffectLastFlag:Z

    .line 67
    iget-wide v1, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mNeededForNext:D

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    cmpl-double v3, v1, v11

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 70
    :cond_0
    iget v1, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mIndex:I

    const/4 v13, 0x1

    add-int/2addr v1, v13

    iput v1, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mIndex:I

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->getDistance(I)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    goto/16 :goto_1

    :cond_1
    move-wide/from16 v3, p1

    long-to-double v14, v3

    move-wide/from16 v5, p3

    move-wide/from16 v22, v11

    long-to-double v11, v5

    move-wide/from16 v16, v14

    long-to-double v13, v7

    move-wide/from16 v24, v1

    long-to-double v1, v9

    move-wide/from16 v20, v1

    move-wide/from16 v18, v13

    move-wide/from16 v14, v16

    move-wide/from16 v16, v11

    .line 74
    invoke-static/range {v14 .. v21}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToPoint(DDDD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    div-double v11, v1, v24

    .line 76
    invoke-static/range {p1 .. p8}, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->getOrientation(JJJJ)D

    move-result-wide v5

    move-wide/from16 v1, v24

    .line 80
    :goto_0
    iget-wide v3, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mNeededForNext:D

    cmpg-double v13, v1, v3

    if-gez v13, :cond_2

    .line 81
    iget-wide v11, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mDistance:D

    add-double/2addr v11, v1

    iput-wide v11, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mDistance:D

    sub-double/2addr v3, v1

    .line 82
    iput-wide v3, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mNeededForNext:D

    const/4 v13, 0x1

    .line 83
    iput-boolean v13, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mSideEffectLastFlag:Z

    .line 84
    iput-wide v7, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mSideEffectLastX:J

    .line 85
    iput-wide v9, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mSideEffectLastY:J

    .line 86
    iput-wide v5, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mSideEffectLastOrientation:D

    return-void

    :cond_2
    move-wide/from16 p1, v14

    .line 89
    iget-wide v13, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mDistance:D

    add-double/2addr v13, v3

    iput-wide v13, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mDistance:D

    sub-double v13, v1, v3

    const-wide v1, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v1, v1, v5

    .line 91
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v3, v3, v18

    mul-double v3, v3, v11

    add-double v3, p1, v3

    move-wide/from16 p1, v1

    .line 92
    iget-wide v1, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mNeededForNext:D

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v1, v1, v18

    mul-double v1, v1, v11

    add-double v1, v16, v1

    move-wide/from16 p1, v5

    double-to-long v5, v3

    move-wide v15, v3

    double-to-long v3, v1

    move-wide/from16 v17, v1

    move-wide v1, v5

    move-wide/from16 v5, p1

    .line 93
    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->add(JJD)V

    .line 94
    invoke-direct {v0}, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->getNewNeededForNext()D

    move-result-wide v1

    iput-wide v1, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mNeededForNext:D

    cmpl-double v3, v1, v22

    if-nez v3, :cond_3

    :goto_1
    return-void

    :cond_3
    move-wide v1, v13

    move-wide v14, v15

    move-wide/from16 v16, v17

    goto :goto_0
.end method

.method public end()V
    .locals 12

    .line 124
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mSideEffectLastFlag:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mNeededForNext:D

    iget-wide v2, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mSideEffectLastEpsilon:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 125
    iget-wide v6, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mSideEffectLastX:J

    iget-wide v8, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mSideEffectLastY:J

    iget-wide v10, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mSideEffectLastOrientation:D

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->add(JJD)V

    .line 127
    :cond_0
    invoke-super {p0}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->end()V

    return-void
.end method

.method public init()V
    .locals 3

    .line 54
    invoke-super {p0}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->init()V

    const-wide/16 v0, 0x0

    .line 55
    iput-wide v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mDistance:D

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mIndex:I

    .line 57
    iget-object v1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mMilestoneMeters:[D

    if-eqz v1, :cond_0

    .line 58
    iput v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mMilestoneMetersIndex:I

    .line 60
    :cond_0
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->getNewNeededForNext()D

    move-result-wide v1

    iput-wide v1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mNeededForNext:D

    .line 61
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mSideEffectLastFlag:Z

    return-void
.end method

.method public setSideEffectLastEpsilon(D)V
    .locals 0

    .line 134
    iput-wide p1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceLister;->mSideEffectLastEpsilon:D

    return-void
.end method
