.class public final enum Lcom/king/zxing/camera/open/CameraFacing;
.super Ljava/lang/Enum;
.source "CameraFacing.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/king/zxing/camera/open/CameraFacing;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/king/zxing/camera/open/CameraFacing;

.field public static final enum BACK:Lcom/king/zxing/camera/open/CameraFacing;

.field public static final enum FRONT:Lcom/king/zxing/camera/open/CameraFacing;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 19
    new-instance v0, Lcom/king/zxing/camera/open/CameraFacing;

    const-string v1, "BACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/king/zxing/camera/open/CameraFacing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/king/zxing/camera/open/CameraFacing;->BACK:Lcom/king/zxing/camera/open/CameraFacing;

    .line 20
    new-instance v1, Lcom/king/zxing/camera/open/CameraFacing;

    const-string v3, "FRONT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/king/zxing/camera/open/CameraFacing;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/king/zxing/camera/open/CameraFacing;->FRONT:Lcom/king/zxing/camera/open/CameraFacing;

    const/4 v3, 0x2

    .line 17
    new-array v3, v3, [Lcom/king/zxing/camera/open/CameraFacing;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/king/zxing/camera/open/CameraFacing;->$VALUES:[Lcom/king/zxing/camera/open/CameraFacing;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/king/zxing/camera/open/CameraFacing;
    .locals 1

    .line 17
    const-class v0, Lcom/king/zxing/camera/open/CameraFacing;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/king/zxing/camera/open/CameraFacing;

    return-object p0
.end method

.method public static values()[Lcom/king/zxing/camera/open/CameraFacing;
    .locals 1

    .line 17
    sget-object v0, Lcom/king/zxing/camera/open/CameraFacing;->$VALUES:[Lcom/king/zxing/camera/open/CameraFacing;

    invoke-virtual {v0}, [Lcom/king/zxing/camera/open/CameraFacing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/king/zxing/camera/open/CameraFacing;

    return-object v0
.end method
