.class public Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;
.super Ljava/lang/Object;
.source "Euclidean1D.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/math3/geometry/Space;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D$NoSubSpaceException;,
        Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D$LazyHolder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x10593cbf1250bf06L


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D$1;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;
    .locals 1

    .line 45
    invoke-static {}, Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D$LazyHolder;->access$000()Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;

    move-result-object v0

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 80
    invoke-static {}, Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D$LazyHolder;->access$000()Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDimension()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSubSpace()Lorg/apache/commons/math3/geometry/Space;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D$NoSubSpaceException;
        }
    .end annotation

    .line 62
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D$NoSubSpaceException;

    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D$NoSubSpaceException;-><init>()V

    throw v0
.end method
