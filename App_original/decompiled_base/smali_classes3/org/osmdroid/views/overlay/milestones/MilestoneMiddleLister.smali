.class public Lorg/osmdroid/views/overlay/milestones/MilestoneMiddleLister;
.super Lorg/osmdroid/views/overlay/milestones/MilestoneLister;
.source "MilestoneMiddleLister.java"


# instance fields
.field private final mMinimumSquaredPixelDistance:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;-><init>()V

    mul-double p1, p1, p1

    .line 17
    iput-wide p1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMiddleLister;->mMinimumSquaredPixelDistance:D

    return-void
.end method


# virtual methods
.method protected add(JJJJ)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    long-to-double v9, v1

    long-to-double v11, v3

    long-to-double v13, v5

    long-to-double v1, v7

    move-wide v15, v1

    .line 22
    invoke-static/range {v9 .. v16}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToPoint(DDDD)D

    move-result-wide v1

    iget-wide v9, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMiddleLister;->mMinimumSquaredPixelDistance:D

    cmpg-double v11, v1, v9

    if-gtz v11, :cond_0

    return-void

    :cond_0
    add-long v1, p1, v5

    const-wide/16 v9, 0x2

    .line 26
    div-long/2addr v1, v9

    add-long v11, v3, v7

    .line 27
    div-long/2addr v11, v9

    .line 28
    invoke-static/range {p1 .. p8}, Lorg/osmdroid/views/overlay/milestones/MilestoneMiddleLister;->getOrientation(JJJJ)D

    move-result-wide v3

    .line 29
    new-instance v5, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;

    move-wide/from16 p2, v1

    move-wide/from16 p6, v3

    move-object/from16 p1, v5

    move-wide/from16 p4, v11

    invoke-direct/range {p1 .. p7}, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;-><init>(JJD)V

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/milestones/MilestoneMiddleLister;->add(Lorg/osmdroid/views/overlay/milestones/MilestoneStep;)V

    return-void
.end method
