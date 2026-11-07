.class public Lorg/osmdroid/views/overlay/milestones/MilestonePixelDistanceLister;
.super Lorg/osmdroid/views/overlay/milestones/MilestoneLister;
.source "MilestonePixelDistanceLister.java"


# instance fields
.field private mDistance:D

.field private final mNbPixelsInit:D

.field private final mNbPixelsRecurrence:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;-><init>()V

    .line 20
    iput-wide p1, p0, Lorg/osmdroid/views/overlay/milestones/MilestonePixelDistanceLister;->mNbPixelsInit:D

    .line 21
    iput-wide p3, p0, Lorg/osmdroid/views/overlay/milestones/MilestonePixelDistanceLister;->mNbPixelsRecurrence:D

    return-void
.end method


# virtual methods
.method protected add(JJJJ)V
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    long-to-double v3, v1

    move-wide/from16 v11, p3

    long-to-double v5, v11

    move-wide/from16 v13, p5

    long-to-double v7, v13

    move-wide/from16 v9, p7

    long-to-double v1, v9

    move-wide v9, v1

    .line 32
    invoke-static/range {v3 .. v10}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToPoint(DDDD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/16 v7, 0x0

    cmpl-double v9, v1, v7

    if-nez v9, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-static/range {p1 .. p8}, Lorg/osmdroid/views/overlay/milestones/MilestonePixelDistanceLister;->getOrientation(JJJJ)D

    move-result-wide v7

    .line 40
    :goto_0
    iget-wide v9, v0, Lorg/osmdroid/views/overlay/milestones/MilestonePixelDistanceLister;->mDistance:D

    iget-wide v11, v0, Lorg/osmdroid/views/overlay/milestones/MilestonePixelDistanceLister;->mNbPixelsRecurrence:D

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    iget-wide v11, v0, Lorg/osmdroid/views/overlay/milestones/MilestonePixelDistanceLister;->mNbPixelsRecurrence:D

    mul-double v9, v9, v11

    add-double/2addr v9, v11

    .line 41
    iget-wide v11, v0, Lorg/osmdroid/views/overlay/milestones/MilestonePixelDistanceLister;->mDistance:D

    sub-double/2addr v9, v11

    cmpg-double v13, v1, v9

    if-gez v13, :cond_1

    add-double/2addr v11, v1

    .line 43
    iput-wide v11, v0, Lorg/osmdroid/views/overlay/milestones/MilestonePixelDistanceLister;->mDistance:D

    return-void

    :cond_1
    add-double/2addr v11, v9

    .line 46
    iput-wide v11, v0, Lorg/osmdroid/views/overlay/milestones/MilestonePixelDistanceLister;->mDistance:D

    sub-double/2addr v1, v9

    const-wide v11, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v11, v11, v7

    .line 48
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double v13, v13, v9

    add-double/2addr v3, v13

    .line 49
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double v9, v9, v11

    add-double/2addr v5, v9

    .line 50
    new-instance v9, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;

    double-to-long v10, v3

    double-to-long v12, v5

    iget-wide v14, v0, Lorg/osmdroid/views/overlay/milestones/MilestonePixelDistanceLister;->mDistance:D

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    move-wide/from16 p6, v7

    move-object/from16 p1, v9

    move-wide/from16 p2, v10

    move-wide/from16 p4, v12

    move-object/from16 p8, v14

    invoke-direct/range {p1 .. p8}, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;-><init>(JJDLjava/lang/Object;)V

    invoke-virtual {v0, v9}, Lorg/osmdroid/views/overlay/milestones/MilestonePixelDistanceLister;->add(Lorg/osmdroid/views/overlay/milestones/MilestoneStep;)V

    goto :goto_0
.end method

.method public init()V
    .locals 4

    .line 26
    invoke-super {p0}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->init()V

    .line 27
    iget-wide v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestonePixelDistanceLister;->mNbPixelsRecurrence:D

    iget-wide v2, p0, Lorg/osmdroid/views/overlay/milestones/MilestonePixelDistanceLister;->mNbPixelsInit:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestonePixelDistanceLister;->mDistance:D

    return-void
.end method
