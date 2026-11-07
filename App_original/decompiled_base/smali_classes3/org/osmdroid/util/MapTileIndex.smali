.class public Lorg/osmdroid/util/MapTileIndex;
.super Ljava/lang/Object;
.source "MapTileIndex.java"


# static fields
.field public static mMaxZoomLevel:I = 0x1d

.field private static mModulo:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    shl-int/lit8 v0, v0, 0x1d

    .line 16
    sput v0, Lorg/osmdroid/util/MapTileIndex;->mModulo:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkValues(III)V
    .locals 5

    if-ltz p0, :cond_0

    .line 55
    sget v0, Lorg/osmdroid/util/MapTileIndex;->mMaxZoomLevel:I

    if-le p0, v0, :cond_1

    .line 56
    :cond_0
    const-string v0, "Zoom"

    invoke-static {p0, p0, v0}, Lorg/osmdroid/util/MapTileIndex;->throwIllegalValue(IILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    shl-int/2addr v0, p0

    int-to-long v0, v0

    if-ltz p1, :cond_2

    int-to-long v2, p1

    cmp-long v4, v2, v0

    if-ltz v4, :cond_3

    .line 60
    :cond_2
    const-string v2, "X"

    invoke-static {p0, p1, v2}, Lorg/osmdroid/util/MapTileIndex;->throwIllegalValue(IILjava/lang/String;)V

    :cond_3
    if-ltz p2, :cond_5

    int-to-long v2, p2

    cmp-long p1, v2, v0

    if-ltz p1, :cond_4

    goto :goto_0

    :cond_4
    return-void

    .line 63
    :cond_5
    :goto_0
    const-string p1, "Y"

    invoke-static {p0, p2, p1}, Lorg/osmdroid/util/MapTileIndex;->throwIllegalValue(IILjava/lang/String;)V

    return-void
.end method

.method public static getTileIndex(III)J
    .locals 4

    .line 19
    invoke-static {p0, p1, p2}, Lorg/osmdroid/util/MapTileIndex;->checkValues(III)V

    int-to-long v0, p0

    .line 20
    sget p0, Lorg/osmdroid/util/MapTileIndex;->mMaxZoomLevel:I

    mul-int/lit8 v2, p0, 0x2

    shl-long/2addr v0, v2

    int-to-long v2, p1

    shl-long p0, v2, p0

    add-long/2addr v0, p0

    int-to-long p0, p2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static getX(J)I
    .locals 2

    .line 30
    sget v0, Lorg/osmdroid/util/MapTileIndex;->mMaxZoomLevel:I

    shr-long/2addr p0, v0

    sget v0, Lorg/osmdroid/util/MapTileIndex;->mModulo:I

    int-to-long v0, v0

    rem-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static getY(J)I
    .locals 2

    .line 34
    sget v0, Lorg/osmdroid/util/MapTileIndex;->mModulo:I

    int-to-long v0, v0

    rem-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static getZoom(J)I
    .locals 1

    .line 26
    sget v0, Lorg/osmdroid/util/MapTileIndex;->mMaxZoomLevel:I

    mul-int/lit8 v0, v0, 0x2

    shr-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method private static throwIllegalValue(IILjava/lang/String;)V
    .locals 3

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MapTileIndex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is too big (zoom="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toString(III)Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(J)Ljava/lang/String;
    .locals 2

    .line 48
    invoke-static {p0, p1}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result v0

    invoke-static {p0, p1}, Lorg/osmdroid/util/MapTileIndex;->getX(J)I

    move-result v1

    invoke-static {p0, p1}, Lorg/osmdroid/util/MapTileIndex;->getY(J)I

    move-result p0

    invoke-static {v0, v1, p0}, Lorg/osmdroid/util/MapTileIndex;->toString(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
