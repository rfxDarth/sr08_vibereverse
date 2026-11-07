.class public Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;
.super Ljava/lang/Object;
.source "Euclidean3D.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/math3/geometry/Space;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D$LazyHolder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x56b93bf15eade9a1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D$1;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;
    .locals 1

    .line 44
    invoke-static {}, Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D$LazyHolder;->access$000()Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;

    move-result-object v0

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 72
    invoke-static {}, Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D$LazyHolder;->access$000()Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDimension()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public bridge synthetic getSubSpace()Lorg/apache/commons/math3/geometry/Space;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;->getSubSpace()Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;

    move-result-object v0

    return-object v0
.end method

.method public getSubSpace()Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;
    .locals 1

    .line 54
    invoke-static {}, Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;->getInstance()Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;

    move-result-object v0

    return-object v0
.end method
