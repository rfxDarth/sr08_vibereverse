.class synthetic Lorg/apache/commons/math3/util/MathArrays$3;
.super Ljava/lang/Object;
.source "MathArrays.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/MathArrays;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$apache$commons$math3$util$MathArrays$OrderDirection:[I

.field static final synthetic $SwitchMap$org$apache$commons$math3$util$MathArrays$Position:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1477
    invoke-static {}, Lorg/apache/commons/math3/util/MathArrays$Position;->values()[Lorg/apache/commons/math3/util/MathArrays$Position;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/commons/math3/util/MathArrays$3;->$SwitchMap$org$apache$commons$math3$util$MathArrays$Position:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/apache/commons/math3/util/MathArrays$Position;->TAIL:Lorg/apache/commons/math3/util/MathArrays$Position;

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/MathArrays$Position;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lorg/apache/commons/math3/util/MathArrays$3;->$SwitchMap$org$apache$commons$math3$util$MathArrays$Position:[I

    sget-object v3, Lorg/apache/commons/math3/util/MathArrays$Position;->HEAD:Lorg/apache/commons/math3/util/MathArrays$Position;

    invoke-virtual {v3}, Lorg/apache/commons/math3/util/MathArrays$Position;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 319
    :catch_1
    invoke-static {}, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->values()[Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lorg/apache/commons/math3/util/MathArrays$3;->$SwitchMap$org$apache$commons$math3$util$MathArrays$OrderDirection:[I

    :try_start_2
    sget-object v3, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->INCREASING:Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    invoke-virtual {v3}, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lorg/apache/commons/math3/util/MathArrays$3;->$SwitchMap$org$apache$commons$math3$util$MathArrays$OrderDirection:[I

    sget-object v2, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->DECREASING:Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
