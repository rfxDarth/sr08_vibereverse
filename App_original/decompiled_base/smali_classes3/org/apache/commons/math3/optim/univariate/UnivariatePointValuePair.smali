.class public Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
.super Ljava/lang/Object;
.source "UnivariatePointValuePair.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xdee872d75051531L


# instance fields
.field private final point:D

.field private final value:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->point:D

    .line 47
    iput-wide p3, p0, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->value:D

    return-void
.end method


# virtual methods
.method public getPoint()D
    .locals 2

    .line 56
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->point:D

    return-wide v0
.end method

.method public getValue()D
    .locals 2

    .line 65
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->value:D

    return-wide v0
.end method
