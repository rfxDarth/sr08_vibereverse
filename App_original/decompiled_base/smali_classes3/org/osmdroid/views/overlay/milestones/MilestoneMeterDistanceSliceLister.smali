.class public Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;
.super Lorg/osmdroid/views/overlay/milestones/MilestoneLister;
.source "MilestoneMeterDistanceSliceLister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;
    }
.end annotation


# instance fields
.field private mDistance:D

.field private mIndex:I

.field private mNbMetersEnd:D

.field private mNbMetersStart:D

.field private mStep:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;-><init>()V

    return-void
.end method


# virtual methods
.method protected add(JJJJ)V
    .locals 25

    move-object/from16 v0, p0

    .line 42
    iget-object v1, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mStep:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    sget-object v2, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;->STEP_ENDED:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    if-ne v1, v2, :cond_0

    goto/16 :goto_0

    .line 45
    :cond_0
    iget v1, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mIndex:I

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->getDistance(I)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    goto/16 :goto_0

    :cond_1
    move-wide/from16 v3, p1

    long-to-double v5, v3

    move-wide/from16 v13, p3

    long-to-double v7, v13

    move-wide/from16 v9, p5

    long-to-double v11, v9

    move-wide v15, v1

    move-wide v9, v11

    move-wide/from16 v1, p7

    long-to-double v11, v1

    .line 49
    invoke-static/range {v5 .. v12}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToPoint(DDDD)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    div-double/2addr v9, v15

    .line 51
    invoke-static/range {p1 .. p8}, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->getOrientation(JJJJ)D

    move-result-wide v22

    .line 54
    iget-object v3, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mStep:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    sget-object v4, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;->STEP_INIT:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    const-wide v11, 0x3f91df46a2529d39L    # 0.017453292519943295

    if-ne v3, v4, :cond_3

    .line 55
    iget-wide v3, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mNbMetersStart:D

    iget-wide v13, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mDistance:D

    sub-double/2addr v3, v13

    cmpl-double v17, v3, v15

    if-lez v17, :cond_2

    add-double/2addr v13, v15

    .line 57
    iput-wide v13, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mDistance:D

    return-void

    .line 60
    :cond_2
    sget-object v13, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;->STEP_STARTED:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    iput-object v13, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mStep:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    .line 61
    iget-wide v13, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mDistance:D

    add-double/2addr v13, v3

    iput-wide v13, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mDistance:D

    sub-double v13, v15, v3

    mul-double v15, v22, v11

    .line 63
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v17, v17, v3

    mul-double v17, v17, v9

    add-double v5, v5, v17

    .line 64
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double v3, v3, v15

    mul-double v3, v3, v9

    add-double/2addr v7, v3

    .line 65
    new-instance v17, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;

    double-to-long v3, v5

    move-wide/from16 p1, v11

    double-to-long v11, v7

    const/16 v24, 0x0

    move-wide/from16 v18, v3

    move-wide/from16 v20, v11

    invoke-direct/range {v17 .. v24}, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;-><init>(JJDLjava/lang/Object;)V

    move-object/from16 v3, v17

    invoke-virtual {v0, v3}, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->add(Lorg/osmdroid/views/overlay/milestones/MilestoneStep;)V

    .line 66
    iget-wide v3, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mNbMetersStart:D

    iget-wide v11, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mNbMetersEnd:D

    cmpl-double v15, v3, v11

    if-nez v15, :cond_4

    .line 67
    sget-object v1, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;->STEP_ENDED:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    iput-object v1, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mStep:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    return-void

    :cond_3
    move-wide/from16 p1, v11

    move-wide v13, v15

    .line 71
    :cond_4
    iget-object v3, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mStep:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    sget-object v4, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;->STEP_STARTED:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    if-ne v3, v4, :cond_6

    .line 72
    iget-wide v3, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mNbMetersEnd:D

    iget-wide v11, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mDistance:D

    sub-double/2addr v3, v11

    cmpl-double v15, v3, v13

    if-lez v15, :cond_5

    add-double/2addr v11, v13

    .line 74
    iput-wide v11, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mDistance:D

    .line 75
    new-instance v9, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;

    const/16 v16, 0x0

    move-wide/from16 v10, p5

    move-wide v12, v1

    move-wide/from16 v14, v22

    invoke-direct/range {v9 .. v16}, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;-><init>(JJDLjava/lang/Object;)V

    invoke-virtual {v0, v9}, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->add(Lorg/osmdroid/views/overlay/milestones/MilestoneStep;)V

    return-void

    .line 78
    :cond_5
    sget-object v1, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;->STEP_ENDED:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    iput-object v1, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mStep:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    mul-double v1, v22, p1

    .line 79
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double v11, v11, v3

    mul-double v11, v11, v9

    add-double/2addr v5, v11

    .line 80
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double v3, v3, v1

    mul-double v3, v3, v9

    add-double/2addr v7, v3

    .line 81
    new-instance v1, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;

    double-to-long v2, v5

    double-to-long v4, v7

    const/4 v6, 0x0

    move-object/from16 p1, v1

    move-wide/from16 p2, v2

    move-wide/from16 p4, v4

    move-object/from16 p8, v6

    move-wide/from16 p6, v22

    invoke-direct/range {p1 .. p8}, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;-><init>(JJDLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->add(Lorg/osmdroid/views/overlay/milestones/MilestoneStep;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public init()V
    .locals 2

    .line 34
    invoke-super {p0}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->init()V

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mDistance:D

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mIndex:I

    .line 37
    sget-object v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;->STEP_INIT:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    iput-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mStep:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    return-void
.end method

.method public setMeterDistanceSlice(DD)V
    .locals 0

    .line 28
    iput-wide p1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mNbMetersStart:D

    .line 29
    iput-wide p3, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mNbMetersEnd:D

    return-void
.end method
