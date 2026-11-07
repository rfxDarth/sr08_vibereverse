.class public Lorg/apache/commons/math3/random/UniformRandomGenerator;
.super Ljava/lang/Object;
.source "UniformRandomGenerator.java"

# interfaces
.implements Lorg/apache/commons/math3/random/NormalizedRandomGenerator;


# static fields
.field private static final SQRT3:D


# instance fields
.field private final generator:Lorg/apache/commons/math3/random/RandomGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .line 37
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/random/UniformRandomGenerator;->SQRT3:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/apache/commons/math3/random/UniformRandomGenerator;->generator:Lorg/apache/commons/math3/random/RandomGenerator;

    return-void
.end method


# virtual methods
.method public nextNormalizedDouble()D
    .locals 6

    .line 55
    sget-wide v0, Lorg/apache/commons/math3/random/UniformRandomGenerator;->SQRT3:D

    iget-object v2, p0, Lorg/apache/commons/math3/random/UniformRandomGenerator;->generator:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v2}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    mul-double v0, v0, v2

    return-wide v0
.end method
