.class public final enum Lorg/osmdroid/views/drawing/MapSnapshot$Status;
.super Ljava/lang/Enum;
.source "MapSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/drawing/MapSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/osmdroid/views/drawing/MapSnapshot$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/osmdroid/views/drawing/MapSnapshot$Status;

.field public static final enum CANVAS_OK:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

.field public static final enum NOTHING:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

.field public static final enum PAINTING:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

.field public static final enum STARTED:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

.field public static final enum TILES_OK:Lorg/osmdroid/views/drawing/MapSnapshot$Status;


# direct methods
.method private static synthetic $values()[Lorg/osmdroid/views/drawing/MapSnapshot$Status;
    .locals 3

    const/4 v0, 0x5

    .line 33
    new-array v0, v0, [Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    sget-object v1, Lorg/osmdroid/views/drawing/MapSnapshot$Status;->NOTHING:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/osmdroid/views/drawing/MapSnapshot$Status;->STARTED:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/osmdroid/views/drawing/MapSnapshot$Status;->TILES_OK:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/osmdroid/views/drawing/MapSnapshot$Status;->PAINTING:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/osmdroid/views/drawing/MapSnapshot$Status;->CANVAS_OK:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    const-string v1, "NOTHING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/drawing/MapSnapshot$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/drawing/MapSnapshot$Status;->NOTHING:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    .line 35
    new-instance v0, Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    const-string v1, "STARTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/drawing/MapSnapshot$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/drawing/MapSnapshot$Status;->STARTED:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    .line 36
    new-instance v0, Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    const-string v1, "TILES_OK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/drawing/MapSnapshot$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/drawing/MapSnapshot$Status;->TILES_OK:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    .line 37
    new-instance v0, Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    const-string v1, "PAINTING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/drawing/MapSnapshot$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/drawing/MapSnapshot$Status;->PAINTING:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    .line 38
    new-instance v0, Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    const-string v1, "CANVAS_OK"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/drawing/MapSnapshot$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/drawing/MapSnapshot$Status;->CANVAS_OK:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    .line 33
    invoke-static {}, Lorg/osmdroid/views/drawing/MapSnapshot$Status;->$values()[Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/views/drawing/MapSnapshot$Status;->$VALUES:[Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/osmdroid/views/drawing/MapSnapshot$Status;
    .locals 1

    .line 33
    const-class v0, Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    return-object p0
.end method

.method public static values()[Lorg/osmdroid/views/drawing/MapSnapshot$Status;
    .locals 1

    .line 33
    sget-object v0, Lorg/osmdroid/views/drawing/MapSnapshot$Status;->$VALUES:[Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    invoke-virtual {v0}, [Lorg/osmdroid/views/drawing/MapSnapshot$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    return-object v0
.end method
