.class public final enum Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;
.super Ljava/lang/Enum;
.source "DfpField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/dfp/DfpField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RoundingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

.field public static final enum ROUND_CEIL:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

.field public static final enum ROUND_DOWN:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

.field public static final enum ROUND_FLOOR:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

.field public static final enum ROUND_HALF_DOWN:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

.field public static final enum ROUND_HALF_EVEN:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

.field public static final enum ROUND_HALF_ODD:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

.field public static final enum ROUND_HALF_UP:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

.field public static final enum ROUND_UP:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 33
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    const-string v1, "ROUND_DOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_DOWN:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    .line 36
    new-instance v1, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    const-string v3, "ROUND_UP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_UP:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    .line 39
    new-instance v3, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    const-string v5, "ROUND_HALF_UP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_HALF_UP:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    .line 42
    new-instance v5, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    const-string v7, "ROUND_HALF_DOWN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_HALF_DOWN:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    .line 47
    new-instance v7, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    const-string v9, "ROUND_HALF_EVEN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_HALF_EVEN:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    .line 50
    new-instance v9, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    const-string v11, "ROUND_HALF_ODD"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_HALF_ODD:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    .line 53
    new-instance v11, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    const-string v13, "ROUND_CEIL"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_CEIL:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    .line 56
    new-instance v13, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    const-string v15, "ROUND_FLOOR"

    const/16 v16, 0x0

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_FLOOR:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    const/16 v15, 0x8

    .line 30
    new-array v15, v15, [Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    aput-object v0, v15, v16

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    aput-object v11, v15, v14

    aput-object v13, v15, v2

    sput-object v15, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->$VALUES:[Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;
    .locals 1

    .line 30
    const-class v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;
    .locals 1

    .line 30
    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->$VALUES:[Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    return-object v0
.end method
