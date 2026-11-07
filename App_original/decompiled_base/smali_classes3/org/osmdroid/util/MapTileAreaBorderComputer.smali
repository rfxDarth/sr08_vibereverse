.class public Lorg/osmdroid/util/MapTileAreaBorderComputer;
.super Ljava/lang/Object;
.source "MapTileAreaBorderComputer.java"

# interfaces
.implements Lorg/osmdroid/util/MapTileAreaComputer;


# instance fields
.field private final mBorder:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lorg/osmdroid/util/MapTileAreaBorderComputer;->mBorder:I

    return-void
.end method


# virtual methods
.method public computeFromSource(Lorg/osmdroid/util/MapTileArea;Lorg/osmdroid/util/MapTileArea;)Lorg/osmdroid/util/MapTileArea;
    .locals 6

    if-eqz p2, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    new-instance p2, Lorg/osmdroid/util/MapTileArea;

    invoke-direct {p2}, Lorg/osmdroid/util/MapTileArea;-><init>()V

    :goto_0
    move-object v0, p2

    .line 25
    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->size()I

    move-result p2

    if-nez p2, :cond_1

    .line 26
    invoke-virtual {v0}, Lorg/osmdroid/util/MapTileArea;->reset()Lorg/osmdroid/util/MapTileArea;

    return-object v0

    .line 29
    :cond_1
    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getLeft()I

    move-result p2

    iget v1, p0, Lorg/osmdroid/util/MapTileAreaBorderComputer;->mBorder:I

    sub-int v2, p2, v1

    .line 30
    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getTop()I

    move-result p2

    iget v1, p0, Lorg/osmdroid/util/MapTileAreaBorderComputer;->mBorder:I

    sub-int v3, p2, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    move p2, v1

    .line 32
    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getZoom()I

    move-result v1

    .line 34
    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr v4, p2

    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getHeight()I

    move-result p1

    add-int/2addr p1, v3

    add-int v5, p1, p2

    .line 32
    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/MapTileArea;->set(IIIII)Lorg/osmdroid/util/MapTileArea;

    return-object v0
.end method

.method public getBorder()I
    .locals 1

    .line 19
    iget v0, p0, Lorg/osmdroid/util/MapTileAreaBorderComputer;->mBorder:I

    return v0
.end method
