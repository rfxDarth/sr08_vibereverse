.class public final Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;
.super Ljava/lang/Object;
.source "RotationOrder.java"


# static fields
.field public static final XYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

.field public static final XYZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

.field public static final XZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

.field public static final XZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

.field public static final YXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

.field public static final YXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

.field public static final YZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

.field public static final YZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

.field public static final ZXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

.field public static final ZXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

.field public static final ZYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

.field public static final ZYZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;


# instance fields
.field private final a1:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private final a2:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private final a3:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 38
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-string v4, "XYZ"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;-><init>(Ljava/lang/String;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XYZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    .line 45
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-string v4, "XZY"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;-><init>(Ljava/lang/String;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    .line 52
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-string v4, "YXZ"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;-><init>(Ljava/lang/String;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    .line 59
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-string v4, "YZX"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;-><init>(Ljava/lang/String;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    .line 66
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-string v4, "ZXY"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;-><init>(Ljava/lang/String;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    .line 73
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-string v4, "ZYX"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;-><init>(Ljava/lang/String;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    .line 80
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-string v4, "XYX"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;-><init>(Ljava/lang/String;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    .line 87
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-string v4, "XZX"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;-><init>(Ljava/lang/String;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    .line 94
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-string v4, "YXY"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;-><init>(Ljava/lang/String;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    .line 101
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-string v4, "YZY"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;-><init>(Ljava/lang/String;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    .line 108
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-string v4, "ZXZ"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;-><init>(Ljava/lang/String;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    .line 115
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-string v4, "ZYZ"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;-><init>(Ljava/lang/String;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZYZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->name:Ljava/lang/String;

    .line 141
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->a1:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 142
    iput-object p3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->a2:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 143
    iput-object p4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->a3:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-void
.end method


# virtual methods
.method public getA1()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->a1:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public getA2()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->a2:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public getA3()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->a3:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->name:Ljava/lang/String;

    return-object v0
.end method
