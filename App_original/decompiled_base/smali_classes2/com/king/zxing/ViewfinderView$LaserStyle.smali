.class public final enum Lcom/king/zxing/ViewfinderView$LaserStyle;
.super Ljava/lang/Enum;
.source "ViewfinderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/king/zxing/ViewfinderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LaserStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/king/zxing/ViewfinderView$LaserStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/king/zxing/ViewfinderView$LaserStyle;

.field public static final enum GRID:Lcom/king/zxing/ViewfinderView$LaserStyle;

.field public static final enum LINE:Lcom/king/zxing/ViewfinderView$LaserStyle;

.field public static final enum NONE:Lcom/king/zxing/ViewfinderView$LaserStyle;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 193
    new-instance v0, Lcom/king/zxing/ViewfinderView$LaserStyle;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/king/zxing/ViewfinderView$LaserStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/king/zxing/ViewfinderView$LaserStyle;->NONE:Lcom/king/zxing/ViewfinderView$LaserStyle;

    new-instance v1, Lcom/king/zxing/ViewfinderView$LaserStyle;

    const-string v3, "LINE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/king/zxing/ViewfinderView$LaserStyle;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/king/zxing/ViewfinderView$LaserStyle;->LINE:Lcom/king/zxing/ViewfinderView$LaserStyle;

    new-instance v3, Lcom/king/zxing/ViewfinderView$LaserStyle;

    const-string v5, "GRID"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/king/zxing/ViewfinderView$LaserStyle;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/king/zxing/ViewfinderView$LaserStyle;->GRID:Lcom/king/zxing/ViewfinderView$LaserStyle;

    const/4 v5, 0x3

    .line 192
    new-array v5, v5, [Lcom/king/zxing/ViewfinderView$LaserStyle;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/king/zxing/ViewfinderView$LaserStyle;->$VALUES:[Lcom/king/zxing/ViewfinderView$LaserStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 195
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 196
    iput p3, p0, Lcom/king/zxing/ViewfinderView$LaserStyle;->mValue:I

    return-void
.end method

.method static synthetic access$100(Lcom/king/zxing/ViewfinderView$LaserStyle;)I
    .locals 0

    .line 192
    iget p0, p0, Lcom/king/zxing/ViewfinderView$LaserStyle;->mValue:I

    return p0
.end method

.method static synthetic access$200(I)Lcom/king/zxing/ViewfinderView$LaserStyle;
    .locals 0

    .line 192
    invoke-static {p0}, Lcom/king/zxing/ViewfinderView$LaserStyle;->getFromInt(I)Lcom/king/zxing/ViewfinderView$LaserStyle;

    move-result-object p0

    return-object p0
.end method

.method private static getFromInt(I)Lcom/king/zxing/ViewfinderView$LaserStyle;
    .locals 5

    .line 201
    invoke-static {}, Lcom/king/zxing/ViewfinderView$LaserStyle;->values()[Lcom/king/zxing/ViewfinderView$LaserStyle;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 202
    iget v4, v3, Lcom/king/zxing/ViewfinderView$LaserStyle;->mValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    :cond_1
    sget-object p0, Lcom/king/zxing/ViewfinderView$LaserStyle;->LINE:Lcom/king/zxing/ViewfinderView$LaserStyle;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/king/zxing/ViewfinderView$LaserStyle;
    .locals 1

    .line 192
    const-class v0, Lcom/king/zxing/ViewfinderView$LaserStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/king/zxing/ViewfinderView$LaserStyle;

    return-object p0
.end method

.method public static values()[Lcom/king/zxing/ViewfinderView$LaserStyle;
    .locals 1

    .line 192
    sget-object v0, Lcom/king/zxing/ViewfinderView$LaserStyle;->$VALUES:[Lcom/king/zxing/ViewfinderView$LaserStyle;

    invoke-virtual {v0}, [Lcom/king/zxing/ViewfinderView$LaserStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/king/zxing/ViewfinderView$LaserStyle;

    return-object v0
.end method
