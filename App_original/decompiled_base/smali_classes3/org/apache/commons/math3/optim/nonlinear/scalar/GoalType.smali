.class public final enum Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;
.super Ljava/lang/Enum;
.source "GoalType.java"

# interfaces
.implements Lorg/apache/commons/math3/optim/OptimizationData;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;",
        ">;",
        "Lorg/apache/commons/math3/optim/OptimizationData;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

.field public static final enum MAXIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

.field public static final enum MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 30
    new-instance v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    const-string v1, "MAXIMIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MAXIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    .line 32
    new-instance v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    const-string v3, "MINIMIZE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    const/4 v3, 0x2

    .line 28
    new-array v3, v3, [Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->$VALUES:[Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;
    .locals 1

    .line 28
    const-class v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;
    .locals 1

    .line 28
    sget-object v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->$VALUES:[Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    return-object v0
.end method
