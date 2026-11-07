.class public Lorg/osmdroid/util/SideOptimizationPointAccepter;
.super Ljava/lang/Object;
.source "SideOptimizationPointAccepter.java"

# interfaces
.implements Lorg/osmdroid/util/PointAccepter;


# static fields
.field private static final STATUS_DIFFERENT:I = 0x0

.field private static final STATUS_SAME_X:I = 0x1

.field private static final STATUS_SAME_Y:I = 0x2


# instance fields
.field private mFirst:Z

.field private final mLatestPoint:Lorg/osmdroid/util/PointL;

.field private mMax:J

.field private mMin:J

.field private final mPointAccepter:Lorg/osmdroid/util/PointAccepter;

.field private final mStartPoint:Lorg/osmdroid/util/PointL;

.field private mStatus:I


# direct methods
.method public constructor <init>(Lorg/osmdroid/util/PointAccepter;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    .line 23
    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStartPoint:Lorg/osmdroid/util/PointL;

    .line 34
    iput-object p1, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mPointAccepter:Lorg/osmdroid/util/PointAccepter;

    return-void
.end method

.method private addToAccepter(JJ)V
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mPointAccepter:Lorg/osmdroid/util/PointAccepter;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/osmdroid/util/PointAccepter;->add(JJ)V

    return-void
.end method

.method private flushSides()V
    .locals 9

    .line 104
    iget v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStartPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->y:J

    .line 126
    iget-object v2, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStartPoint:Lorg/osmdroid/util/PointL;

    iget-wide v2, v2, Lorg/osmdroid/util/PointL;->x:J

    iget-object v4, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v4, v4, Lorg/osmdroid/util/PointL;->x:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    .line 127
    iget-object v2, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStartPoint:Lorg/osmdroid/util/PointL;

    iget-wide v2, v2, Lorg/osmdroid/util/PointL;->x:J

    .line 128
    iget-object v4, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v4, v4, Lorg/osmdroid/util/PointL;->x:J

    goto :goto_0

    .line 130
    :cond_1
    iget-object v2, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v2, v2, Lorg/osmdroid/util/PointL;->x:J

    .line 131
    iget-object v4, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStartPoint:Lorg/osmdroid/util/PointL;

    iget-wide v4, v4, Lorg/osmdroid/util/PointL;->x:J

    .line 133
    :goto_0
    iget-wide v6, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMin:J

    cmp-long v8, v6, v2

    if-gez v8, :cond_2

    .line 134
    invoke-direct {p0, v6, v7, v0, v1}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->addToAccepter(JJ)V

    .line 136
    :cond_2
    iget-wide v2, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMax:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    .line 137
    invoke-direct {p0, v2, v3, v0, v1}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->addToAccepter(JJ)V

    .line 139
    :cond_3
    iget-object v2, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v2, v2, Lorg/osmdroid/util/PointL;->x:J

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->addToAccepter(JJ)V

    goto :goto_2

    .line 108
    :cond_4
    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStartPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->x:J

    .line 109
    iget-object v2, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStartPoint:Lorg/osmdroid/util/PointL;

    iget-wide v2, v2, Lorg/osmdroid/util/PointL;->y:J

    iget-object v4, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v4, v4, Lorg/osmdroid/util/PointL;->y:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_5

    .line 110
    iget-object v2, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStartPoint:Lorg/osmdroid/util/PointL;

    iget-wide v2, v2, Lorg/osmdroid/util/PointL;->y:J

    .line 111
    iget-object v4, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v4, v4, Lorg/osmdroid/util/PointL;->y:J

    goto :goto_1

    .line 113
    :cond_5
    iget-object v2, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v2, v2, Lorg/osmdroid/util/PointL;->y:J

    .line 114
    iget-object v4, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStartPoint:Lorg/osmdroid/util/PointL;

    iget-wide v4, v4, Lorg/osmdroid/util/PointL;->y:J

    .line 116
    :goto_1
    iget-wide v6, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMin:J

    cmp-long v8, v6, v2

    if-gez v8, :cond_6

    .line 117
    invoke-direct {p0, v0, v1, v6, v7}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->addToAccepter(JJ)V

    .line 119
    :cond_6
    iget-wide v2, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMax:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_7

    .line 120
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->addToAccepter(JJ)V

    .line 122
    :cond_7
    iget-object v2, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v2, v2, Lorg/osmdroid/util/PointL;->y:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->addToAccepter(JJ)V

    :goto_2
    const/4 v0, 0x0

    .line 142
    iput v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStatus:I

    return-void
.end method


# virtual methods
.method public add(JJ)V
    .locals 3

    .line 46
    iget-boolean v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mFirst:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mFirst:Z

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->addToAccepter(JJ)V

    .line 49
    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/osmdroid/util/PointL;->set(JJ)V

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->x:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->y:J

    cmp-long v2, v0, p3

    if-nez v2, :cond_1

    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->x:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_4

    .line 56
    iget v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 57
    iget-wide v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMin:J

    cmp-long v2, v0, p3

    if-lez v2, :cond_2

    .line 58
    iput-wide p3, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMin:J

    .line 60
    :cond_2
    iget-wide v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMax:J

    cmp-long v2, v0, p3

    if-gez v2, :cond_8

    .line 61
    iput-wide p3, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMax:J

    goto :goto_0

    .line 64
    :cond_3
    invoke-direct {p0}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->flushSides()V

    .line 65
    iput v1, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStatus:I

    .line 66
    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStartPoint:Lorg/osmdroid/util/PointL;

    iget-object v1, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/PointL;->set(Lorg/osmdroid/util/PointL;)V

    .line 67
    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->y:J

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMin:J

    .line 68
    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->y:J

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMax:J

    goto :goto_0

    .line 70
    :cond_4
    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->y:J

    cmp-long v2, v0, p3

    if-nez v2, :cond_7

    .line 71
    iget v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 72
    iget-wide v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMin:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_5

    .line 73
    iput-wide p1, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMin:J

    .line 75
    :cond_5
    iget-wide v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMax:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_8

    .line 76
    iput-wide p1, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMax:J

    goto :goto_0

    .line 79
    :cond_6
    invoke-direct {p0}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->flushSides()V

    .line 80
    iput v1, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStatus:I

    .line 81
    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStartPoint:Lorg/osmdroid/util/PointL;

    iget-object v1, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/PointL;->set(Lorg/osmdroid/util/PointL;)V

    .line 82
    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->x:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMin:J

    .line 83
    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->x:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMax:J

    goto :goto_0

    .line 86
    :cond_7
    invoke-direct {p0}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->flushSides()V

    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->addToAccepter(JJ)V

    .line 89
    :cond_8
    :goto_0
    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/osmdroid/util/PointL;->set(JJ)V

    return-void
.end method

.method public end()V
    .locals 1

    .line 94
    invoke-direct {p0}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->flushSides()V

    .line 95
    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mPointAccepter:Lorg/osmdroid/util/PointAccepter;

    invoke-interface {v0}, Lorg/osmdroid/util/PointAccepter;->end()V

    return-void
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mFirst:Z

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStatus:I

    .line 41
    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mPointAccepter:Lorg/osmdroid/util/PointAccepter;

    invoke-interface {v0}, Lorg/osmdroid/util/PointAccepter;->init()V

    return-void
.end method
