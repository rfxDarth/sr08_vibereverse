.class Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;
.super Ljava/lang/Object;
.source "AdamsMoultonIntegrator.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Corrector"
.end annotation


# instance fields
.field private final after:[D

.field private final before:[D

.field private final previous:[D

.field private final scaled:[D

.field final synthetic this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;[D[D[D)V
    .locals 0

    .line 371
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-object p2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->previous:[D

    .line 373
    iput-object p3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->scaled:[D

    .line 374
    iput-object p4, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->after:[D

    .line 375
    invoke-virtual {p4}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->before:[D

    return-void
.end method


# virtual methods
.method public end()D
    .locals 11

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 405
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->after:[D

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 406
    aget-wide v4, v3, v2

    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->previous:[D

    aget-wide v7, v6, v2

    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->scaled:[D

    aget-wide v9, v6, v2

    add-double/2addr v7, v9

    add-double/2addr v4, v7

    aput-wide v4, v3, v2

    .line 407
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;

    iget v3, v3, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->mainSetDimension:I

    if-ge v2, v3, :cond_1

    .line 408
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->previous:[D

    aget-wide v4, v3, v2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->after:[D

    aget-wide v6, v5, v2

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v3

    .line 409
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;

    iget-object v5, v5, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->vecAbsoluteTolerance:[D

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;

    iget-wide v5, v5, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->scalAbsoluteTolerance:D

    iget-object v7, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;

    iget-wide v7, v7, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->scalRelativeTolerance:D

    mul-double v7, v7, v3

    add-double/2addr v5, v7

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;

    iget-object v5, v5, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v6, v5, v2

    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;

    iget-object v5, v5, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->vecRelativeTolerance:[D

    aget-wide v8, v5, v2

    mul-double v8, v8, v3

    add-double v5, v6, v8

    .line 412
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->after:[D

    aget-wide v7, v3, v2

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->before:[D

    aget-wide v9, v3, v2

    sub-double/2addr v7, v9

    div-double/2addr v7, v5

    mul-double v7, v7, v7

    add-double/2addr v0, v7

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 417
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;

    iget v2, v2, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->mainSetDimension:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public start(IIIIII)V
    .locals 0

    .line 381
    iget-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->after:[D

    const-wide/16 p2, 0x0

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->fill([DD)V

    return-void
.end method

.method public visit(IID)V
    .locals 2

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_0

    .line 387
    iget-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->after:[D

    aget-wide v0, p1, p2

    sub-double/2addr v0, p3

    aput-wide v0, p1, p2

    return-void

    .line 389
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->after:[D

    aget-wide v0, p1, p2

    add-double/2addr v0, p3

    aput-wide v0, p1, p2

    return-void
.end method
