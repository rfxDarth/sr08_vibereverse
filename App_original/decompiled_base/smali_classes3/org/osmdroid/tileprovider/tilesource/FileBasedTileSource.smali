.class public Lorg/osmdroid/tileprovider/tilesource/FileBasedTileSource;
.super Lorg/osmdroid/tileprovider/tilesource/XYTileSource;
.source "FileBasedTileSource.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct/range {p0 .. p6}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getSource(Ljava/lang/String;)Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .locals 7

    .line 18
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    move-object v1, p0

    .line 21
    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/FileBasedTileSource;

    const-string p0, "http://localhost"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    const/16 v3, 0x12

    const/16 v4, 0x100

    const-string v5, ".png"

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/tileprovider/tilesource/FileBasedTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method
