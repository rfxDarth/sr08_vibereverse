.class public Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
.super Lorg/apache/commons/math3/exception/MaxCountExceededException;
.source "TooManyEvaluationsException.java"


# static fields
.field private static final serialVersionUID:J = 0x3c1742cdad69f2e7L


# direct methods
.method public constructor <init>(Ljava/lang/Number;)V
    .locals 2

    .line 37
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/MaxCountExceededException;-><init>(Ljava/lang/Number;)V

    .line 38
    invoke-virtual {p0}, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object p1

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EVALUATIONS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    return-void
.end method
