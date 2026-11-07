.class public final enum Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;
.super Ljava/lang/Enum;
.source "BSPTreeVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Order"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

.field public static final enum MINUS_PLUS_SUB:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

.field public static final enum MINUS_SUB_PLUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

.field public static final enum PLUS_MINUS_SUB:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

.field public static final enum PLUS_SUB_MINUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

.field public static final enum SUB_MINUS_PLUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

.field public static final enum SUB_PLUS_MINUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 58
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    const-string v1, "PLUS_MINUS_SUB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->PLUS_MINUS_SUB:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    .line 63
    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    const-string v3, "PLUS_SUB_MINUS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->PLUS_SUB_MINUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    .line 68
    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    const-string v5, "MINUS_PLUS_SUB"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->MINUS_PLUS_SUB:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    .line 73
    new-instance v5, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    const-string v7, "MINUS_SUB_PLUS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->MINUS_SUB_PLUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    .line 78
    new-instance v7, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    const-string v9, "SUB_PLUS_MINUS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->SUB_PLUS_MINUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    .line 83
    new-instance v9, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    const-string v11, "SUB_MINUS_PLUS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->SUB_MINUS_PLUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    const/4 v11, 0x6

    .line 54
    new-array v11, v11, [Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->$VALUES:[Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;
    .locals 1

    .line 54
    const-class v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;
    .locals 1

    .line 54
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->$VALUES:[Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    return-object v0
.end method
