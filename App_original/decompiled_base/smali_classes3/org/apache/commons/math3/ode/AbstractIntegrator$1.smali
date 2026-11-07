.class Lorg/apache/commons/math3/ode/AbstractIntegrator$1;
.super Ljava/lang/Object;
.source "AbstractIntegrator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/ode/AbstractIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/math3/ode/events/EventState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/ode/AbstractIntegrator;

.field final synthetic val$orderingSign:I


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/ode/AbstractIntegrator;I)V
    .locals 0

    .line 330
    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator$1;->this$0:Lorg/apache/commons/math3/ode/AbstractIntegrator;

    iput p2, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator$1;->val$orderingSign:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 330
    check-cast p1, Lorg/apache/commons/math3/ode/events/EventState;

    check-cast p2, Lorg/apache/commons/math3/ode/events/EventState;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/ode/AbstractIntegrator$1;->compare(Lorg/apache/commons/math3/ode/events/EventState;Lorg/apache/commons/math3/ode/events/EventState;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/apache/commons/math3/ode/events/EventState;Lorg/apache/commons/math3/ode/events/EventState;)I
    .locals 3

    .line 334
    iget v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator$1;->val$orderingSign:I

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/events/EventState;->getEventTime()D

    move-result-wide v1

    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/events/EventState;->getEventTime()D

    move-result-wide p1

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    mul-int v0, v0, p1

    return v0
.end method
