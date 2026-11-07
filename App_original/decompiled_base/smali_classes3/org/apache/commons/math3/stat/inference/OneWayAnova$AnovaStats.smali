.class Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;
.super Ljava/lang/Object;
.source "OneWayAnova.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/stat/inference/OneWayAnova;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnovaStats"
.end annotation


# instance fields
.field private final F:D

.field private final dfbg:I

.field private final dfwg:I


# direct methods
.method private constructor <init>(IID)V
    .locals 0

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput p1, p0, Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;->dfbg:I

    .line 349
    iput p2, p0, Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;->dfwg:I

    .line 350
    iput-wide p3, p0, Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;->F:D

    return-void
.end method

.method synthetic constructor <init>(IIDLorg/apache/commons/math3/stat/inference/OneWayAnova$1;)V
    .locals 0

    .line 330
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;-><init>(IID)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;)D
    .locals 2

    .line 330
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;->F:D

    return-wide v0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;)I
    .locals 0

    .line 330
    iget p0, p0, Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;->dfbg:I

    return p0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;)I
    .locals 0

    .line 330
    iget p0, p0, Lorg/apache/commons/math3/stat/inference/OneWayAnova$AnovaStats;->dfwg:I

    return p0
.end method
