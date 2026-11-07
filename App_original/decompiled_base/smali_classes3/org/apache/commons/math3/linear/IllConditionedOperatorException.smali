.class public Lorg/apache/commons/math3/linear/IllConditionedOperatorException;
.super Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
.source "IllConditionedOperatorException.java"


# static fields
.field private static final serialVersionUID:J = -0x6d66faca4c627317L


# direct methods
.method public constructor <init>(D)V
    .locals 2

    .line 41
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ILL_CONDITIONED_OPERATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    return-void
.end method
