.class public Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;
.super Ljava/lang/Object;
.source "ArcsSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Split"
.end annotation


# instance fields
.field private final minus:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

.field private final plus:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;


# direct methods
.method private constructor <init>(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;)V
    .locals 0

    .line 922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 923
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;->plus:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    .line 924
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;->minus:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$1;)V
    .locals 0

    .line 908
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;-><init>(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;)V

    return-void
.end method


# virtual methods
.method public getMinus()Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    .locals 1

    .line 938
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;->minus:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    return-object v0
.end method

.method public getPlus()Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    .locals 1

    .line 931
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;->plus:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    return-object v0
.end method
