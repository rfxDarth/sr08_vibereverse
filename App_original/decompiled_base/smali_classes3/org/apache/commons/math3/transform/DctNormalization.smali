.class public final enum Lorg/apache/commons/math3/transform/DctNormalization;
.super Ljava/lang/Enum;
.source "DctNormalization.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/math3/transform/DctNormalization;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/transform/DctNormalization;

.field public static final enum ORTHOGONAL_DCT_I:Lorg/apache/commons/math3/transform/DctNormalization;

.field public static final enum STANDARD_DCT_I:Lorg/apache/commons/math3/transform/DctNormalization;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 46
    new-instance v0, Lorg/apache/commons/math3/transform/DctNormalization;

    const-string v1, "STANDARD_DCT_I"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/transform/DctNormalization;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/transform/DctNormalization;->STANDARD_DCT_I:Lorg/apache/commons/math3/transform/DctNormalization;

    .line 66
    new-instance v1, Lorg/apache/commons/math3/transform/DctNormalization;

    const-string v3, "ORTHOGONAL_DCT_I"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/math3/transform/DctNormalization;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/math3/transform/DctNormalization;->ORTHOGONAL_DCT_I:Lorg/apache/commons/math3/transform/DctNormalization;

    const/4 v3, 0x2

    .line 28
    new-array v3, v3, [Lorg/apache/commons/math3/transform/DctNormalization;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/apache/commons/math3/transform/DctNormalization;->$VALUES:[Lorg/apache/commons/math3/transform/DctNormalization;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/transform/DctNormalization;
    .locals 1

    .line 28
    const-class v0, Lorg/apache/commons/math3/transform/DctNormalization;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/transform/DctNormalization;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/math3/transform/DctNormalization;
    .locals 1

    .line 28
    sget-object v0, Lorg/apache/commons/math3/transform/DctNormalization;->$VALUES:[Lorg/apache/commons/math3/transform/DctNormalization;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/transform/DctNormalization;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/transform/DctNormalization;

    return-object v0
.end method
