.class public final enum Lorg/apache/commons/math3/optimization/linear/Relationship;
.super Ljava/lang/Enum;
.source "Relationship.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/math3/optimization/linear/Relationship;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/optimization/linear/Relationship;

.field public static final enum EQ:Lorg/apache/commons/math3/optimization/linear/Relationship;

.field public static final enum GEQ:Lorg/apache/commons/math3/optimization/linear/Relationship;

.field public static final enum LEQ:Lorg/apache/commons/math3/optimization/linear/Relationship;


# instance fields
.field private final stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 30
    new-instance v0, Lorg/apache/commons/math3/optimization/linear/Relationship;

    const-string v1, "="

    const-string v2, "EQ"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/commons/math3/optimization/linear/Relationship;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/math3/optimization/linear/Relationship;->EQ:Lorg/apache/commons/math3/optimization/linear/Relationship;

    .line 33
    new-instance v1, Lorg/apache/commons/math3/optimization/linear/Relationship;

    const-string v2, "<="

    const-string v4, "LEQ"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lorg/apache/commons/math3/optimization/linear/Relationship;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/commons/math3/optimization/linear/Relationship;->LEQ:Lorg/apache/commons/math3/optimization/linear/Relationship;

    .line 36
    new-instance v2, Lorg/apache/commons/math3/optimization/linear/Relationship;

    const-string v4, ">="

    const-string v6, "GEQ"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lorg/apache/commons/math3/optimization/linear/Relationship;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/commons/math3/optimization/linear/Relationship;->GEQ:Lorg/apache/commons/math3/optimization/linear/Relationship;

    const/4 v4, 0x3

    .line 26
    new-array v4, v4, [Lorg/apache/commons/math3/optimization/linear/Relationship;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    sput-object v4, Lorg/apache/commons/math3/optimization/linear/Relationship;->$VALUES:[Lorg/apache/commons/math3/optimization/linear/Relationship;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lorg/apache/commons/math3/optimization/linear/Relationship;->stringValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/optimization/linear/Relationship;
    .locals 1

    .line 26
    const-class v0, Lorg/apache/commons/math3/optimization/linear/Relationship;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/optimization/linear/Relationship;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/math3/optimization/linear/Relationship;
    .locals 1

    .line 26
    sget-object v0, Lorg/apache/commons/math3/optimization/linear/Relationship;->$VALUES:[Lorg/apache/commons/math3/optimization/linear/Relationship;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/optimization/linear/Relationship;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/optimization/linear/Relationship;

    return-object v0
.end method


# virtual methods
.method public oppositeRelationship()Lorg/apache/commons/math3/optimization/linear/Relationship;
    .locals 2

    .line 58
    sget-object v0, Lorg/apache/commons/math3/optimization/linear/Relationship$1;->$SwitchMap$org$apache$commons$math3$optimization$linear$Relationship:[I

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/Relationship;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 64
    sget-object v0, Lorg/apache/commons/math3/optimization/linear/Relationship;->EQ:Lorg/apache/commons/math3/optimization/linear/Relationship;

    return-object v0

    .line 62
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/optimization/linear/Relationship;->LEQ:Lorg/apache/commons/math3/optimization/linear/Relationship;

    return-object v0

    .line 60
    :cond_1
    sget-object v0, Lorg/apache/commons/math3/optimization/linear/Relationship;->GEQ:Lorg/apache/commons/math3/optimization/linear/Relationship;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/linear/Relationship;->stringValue:Ljava/lang/String;

    return-object v0
.end method
