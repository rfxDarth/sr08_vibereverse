.class public final enum Lorg/apache/commons/math3/transform/DstNormalization;
.super Ljava/lang/Enum;
.source "DstNormalization.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/math3/transform/DstNormalization;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/transform/DstNormalization;

.field public static final enum ORTHOGONAL_DST_I:Lorg/apache/commons/math3/transform/DstNormalization;

.field public static final enum STANDARD_DST_I:Lorg/apache/commons/math3/transform/DstNormalization;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 41
    new-instance v0, Lorg/apache/commons/math3/transform/DstNormalization;

    const-string v1, "STANDARD_DST_I"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/transform/DstNormalization;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/transform/DstNormalization;->STANDARD_DST_I:Lorg/apache/commons/math3/transform/DstNormalization;

    .line 56
    new-instance v1, Lorg/apache/commons/math3/transform/DstNormalization;

    const-string v3, "ORTHOGONAL_DST_I"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/math3/transform/DstNormalization;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/math3/transform/DstNormalization;->ORTHOGONAL_DST_I:Lorg/apache/commons/math3/transform/DstNormalization;

    const/4 v3, 0x2

    .line 28
    new-array v3, v3, [Lorg/apache/commons/math3/transform/DstNormalization;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/apache/commons/math3/transform/DstNormalization;->$VALUES:[Lorg/apache/commons/math3/transform/DstNormalization;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/transform/DstNormalization;
    .locals 1

    .line 28
    const-class v0, Lorg/apache/commons/math3/transform/DstNormalization;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/transform/DstNormalization;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/math3/transform/DstNormalization;
    .locals 1

    .line 28
    sget-object v0, Lorg/apache/commons/math3/transform/DstNormalization;->$VALUES:[Lorg/apache/commons/math3/transform/DstNormalization;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/transform/DstNormalization;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/transform/DstNormalization;

    return-object v0
.end method
