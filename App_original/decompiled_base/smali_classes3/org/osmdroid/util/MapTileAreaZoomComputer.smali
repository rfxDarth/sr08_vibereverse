.class public Lorg/osmdroid/util/MapTileAreaZoomComputer;
.super Ljava/lang/Object;
.source "MapTileAreaZoomComputer.java"

# interfaces
.implements Lorg/osmdroid/util/MapTileAreaComputer;


# instance fields
.field private final mZoomDelta:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    return-void
.end method


# virtual methods
.method public computeFromSource(Lorg/osmdroid/util/MapTileArea;Lorg/osmdroid/util/MapTileArea;)Lorg/osmdroid/util/MapTileArea;
    .locals 6

    if-eqz p2, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    new-instance p2, Lorg/osmdroid/util/MapTileArea;

    invoke-direct {p2}, Lorg/osmdroid/util/MapTileArea;-><init>()V

    :goto_0
    move-object v0, p2

    .line 21
    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->size()I

    move-result p2

    if-nez p2, :cond_1

    .line 22
    invoke-virtual {v0}, Lorg/osmdroid/util/MapTileArea;->reset()Lorg/osmdroid/util/MapTileArea;

    return-object v0

    .line 25
    :cond_1
    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getZoom()I

    move-result p2

    .line 26
    iget v1, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    add-int/2addr v1, p2

    if-ltz v1, :cond_4

    .line 27
    sget p2, Lorg/osmdroid/util/MapTileIndex;->mMaxZoomLevel:I

    if-le v1, p2, :cond_2

    goto :goto_1

    .line 31
    :cond_2
    iget p2, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    if-gtz p2, :cond_3

    .line 33
    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getLeft()I

    move-result p2

    iget v2, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    neg-int v2, v2

    shr-int v2, p2, v2

    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getTop()I

    move-result p2

    iget v3, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    neg-int v3, v3

    shr-int v3, p2, v3

    .line 34
    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getRight()I

    move-result p2

    iget v4, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    neg-int v4, v4

    shr-int v4, p2, v4

    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getBottom()I

    move-result p1

    iget p2, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    neg-int p2, p2

    shr-int v5, p1, p2

    .line 32
    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/MapTileArea;->set(IIIII)Lorg/osmdroid/util/MapTileArea;

    return-object v0

    .line 38
    :cond_3
    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getLeft()I

    move-result p2

    iget v2, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    shl-int v2, p2, v2

    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getTop()I

    move-result p2

    iget v3, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    shl-int v3, p2, v3

    .line 39
    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getRight()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    iget v4, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    shl-int/2addr p2, v4

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getBottom()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget p2, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    shl-int/2addr p1, p2

    add-int/lit8 v5, p1, -0x1

    .line 37
    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/MapTileArea;->set(IIIII)Lorg/osmdroid/util/MapTileArea;

    return-object v0

    .line 28
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lorg/osmdroid/util/MapTileArea;->reset()Lorg/osmdroid/util/MapTileArea;

    return-object v0
.end method
