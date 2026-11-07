.class final enum Lorg/apache/commons/math3/stat/clustering/DBSCANClusterer$PointStatus;
.super Ljava/lang/Enum;
.source "DBSCANClusterer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/stat/clustering/DBSCANClusterer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PointStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/math3/stat/clustering/DBSCANClusterer$PointStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/stat/clustering/DBSCANClusterer$PointStatus;

.field public static final enum NOISE:Lorg/apache/commons/math3/stat/clustering/DBSCANClusterer$PointStatus;

.field public static final enum PART_OF_CLUSTER:Lorg/apache/commons/math3/stat/clustering/DBSCANClusterer$PointStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 75
    new-instance v0, Lorg/apache/commons/math3/stat/clustering/DBSCANClusterer$PointStatus;

    const-string v1, "NOISE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/stat/clustering/DBSCANClusterer$PointStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/stat/clustering/DBSCANClusterer$PointStatus;->NOISE:Lorg/apache/commons/math3/stat/clustering/DBSCANClusterer$PointStatus;

    .line 77
    new-instance v1, Lorg/apache/commons/math3/stat/clustering/DBSCANClusterer$PointStatus;

    const-string v3, "PART_OF_CLUSTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/math3/stat/clustering/DBSCANClusterer$PointStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/math3/stat/clustering/DBSCANClusterer$PointStatus;->PART_OF_CLUSTER:Lorg/apache/commons/math3/stat/clustering/DBSCANClusterer$PointStatus;

    const/4 v3, 0x2

    .line 73
    new-array v3, v3, [Lorg/apache/commons/math3/stat/clustering/DBSCANClusterer$PointStatus;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/apache/commons/math3/stat/clustering/DBSCANClusterer$PointStatus;->$VALUES:[Lorg/apache/commons/math3/stat/clustering/DBSCANClusterer$PointStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/stat/clustering/DBSCANClusterer$PointStatus;
    .locals 1

    .line 73
    const-class v0, Lorg/apache/commons/math3/stat/clustering/DBSCANClusterer$PointStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/stat/clustering/DBSCANClusterer$PointStatus;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/math3/stat/clustering/DBSCANClusterer$PointStatus;
    .locals 1

    .line 73
    sget-object v0, Lorg/apache/commons/math3/stat/clustering/DBSCANClusterer$PointStatus;->$VALUES:[Lorg/apache/commons/math3/stat/clustering/DBSCANClusterer$PointStatus;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/stat/clustering/DBSCANClusterer$PointStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/stat/clustering/DBSCANClusterer$PointStatus;

    return-object v0
.end method
