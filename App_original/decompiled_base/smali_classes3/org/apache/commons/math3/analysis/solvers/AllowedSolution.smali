.class public final enum Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;
.super Ljava/lang/Enum;
.source "AllowedSolution.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

.field public static final enum ABOVE_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

.field public static final enum ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

.field public static final enum BELOW_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

.field public static final enum LEFT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

.field public static final enum RIGHT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 48
    new-instance v0, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    const-string v1, "ANY_SIDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 55
    new-instance v1, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    const-string v3, "LEFT_SIDE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->LEFT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 62
    new-instance v3, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    const-string v5, "RIGHT_SIDE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->RIGHT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 68
    new-instance v5, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    const-string v7, "BELOW_SIDE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->BELOW_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 74
    new-instance v7, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    const-string v9, "ABOVE_SIDE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ABOVE_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    const/4 v9, 0x5

    .line 41
    new-array v9, v9, [Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->$VALUES:[Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;
    .locals 1

    .line 41
    const-class v0, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;
    .locals 1

    .line 41
    sget-object v0, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->$VALUES:[Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    return-object v0
.end method
