.class public final enum Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;
.super Ljava/lang/Enum;
.source "CustomZoomButtonsDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/CustomZoomButtonsDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HorizontalPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;

.field public static final enum CENTER:Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;

.field public static final enum LEFT:Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;

.field public static final enum RIGHT:Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;


# direct methods
.method private static synthetic $values()[Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;
    .locals 3

    const/4 v0, 0x3

    .line 19
    new-array v0, v0, [Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;

    sget-object v1, Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;->LEFT:Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;->CENTER:Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;->RIGHT:Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;->LEFT:Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;

    new-instance v0, Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;

    const-string v1, "CENTER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;->CENTER:Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;

    new-instance v0, Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;

    const-string v1, "RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;->RIGHT:Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;

    invoke-static {}, Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;->$values()[Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;->$VALUES:[Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;
    .locals 1

    .line 19
    const-class v0, Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;

    return-object p0
.end method

.method public static values()[Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;
    .locals 1

    .line 19
    sget-object v0, Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;->$VALUES:[Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;

    invoke-virtual {v0}, [Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/osmdroid/views/CustomZoomButtonsDisplay$HorizontalPosition;

    return-object v0
.end method
