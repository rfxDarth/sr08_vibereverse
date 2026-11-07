.class public Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;
.super Lorg/osmdroid/util/TileLooper;
.source "TilesOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/overlay/TilesOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OverlayTileLooper"
.end annotation


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field final synthetic this$0:Lorg/osmdroid/views/overlay/TilesOverlay;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/overlay/TilesOverlay;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    .line 230
    invoke-direct {p0}, Lorg/osmdroid/util/TileLooper;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/overlay/TilesOverlay;ZZ)V
    .locals 0

    .line 233
    iput-object p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    .line 234
    invoke-direct {p0, p2, p3}, Lorg/osmdroid/util/TileLooper;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public finaliseLoop()V
    .locals 1

    .line 297
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$000(Lorg/osmdroid/views/overlay/TilesOverlay;)Lorg/osmdroid/tileprovider/TileStates;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/TileStates;->finaliseLoop()V

    return-void
.end method

.method public handleTile(JII)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p3

    move/from16 v2, p4

    .line 255
    iget-object v3, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v3, v3, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    move-wide/from16 v4, p1

    invoke-virtual {v3, v4, v5}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getMapTile(J)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 256
    iget-object v6, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v6}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$000(Lorg/osmdroid/views/overlay/TilesOverlay;)Lorg/osmdroid/tileprovider/TileStates;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/osmdroid/tileprovider/TileStates;->handleTile(Landroid/graphics/drawable/Drawable;)V

    .line 257
    iget-object v6, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->mCanvas:Landroid/graphics/Canvas;

    if-nez v6, :cond_0

    goto/16 :goto_2

    .line 260
    :cond_0
    instance-of v6, v3, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    if-eqz v6, :cond_1

    .line 262
    move-object v7, v3

    check-cast v7, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    if-nez v3, :cond_2

    .line 264
    iget-object v3, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v3}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$100(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_6

    .line 268
    iget-object v8, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v8, v8, Lorg/osmdroid/views/overlay/TilesOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    iget-object v9, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v9}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v8, v0, v2, v9}, Lorg/osmdroid/views/Projection;->getPixelFromTile(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    if-eqz v6, :cond_3

    .line 270
    invoke-virtual {v7}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->beginUsingDrawable()V

    :cond_3
    if-eqz v6, :cond_4

    .line 273
    :try_start_0
    invoke-virtual {v7}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->isBitmapValid()Z

    move-result v8

    if-nez v8, :cond_4

    .line 274
    iget-object v3, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v3}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$100(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v6, 0x0

    .line 277
    :cond_4
    iget-object v8, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v9, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v8}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v8, v9, v3, v10}, Lorg/osmdroid/views/overlay/TilesOverlay;->onTileReadyToDraw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_6

    .line 280
    invoke-virtual {v7}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->finishUsingDrawable()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    invoke-virtual {v7}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->finishUsingDrawable()V

    .line 281
    :cond_5
    throw v0

    .line 284
    :cond_6
    :goto_1
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 285
    iget-object v3, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v3, v3, Lorg/osmdroid/views/overlay/TilesOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    iget-object v6, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v6}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v3, v0, v2, v6}, Lorg/osmdroid/views/Projection;->getPixelFromTile(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 286
    iget-object v0, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v4, v5}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v3}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget-object v4, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    .line 287
    invoke-static {v4}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget-object v5, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v5, v5, Lorg/osmdroid/views/overlay/TilesOverlay;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v5, v5, Lorg/osmdroid/views/overlay/TilesOverlay;->mDebugPaint:Landroid/graphics/Paint;

    .line 286
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 288
    iget-object v6, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v7, v0

    iget-object v0, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v8, v0

    iget-object v0, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v9, v0

    iget-object v0, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v10, v0

    iget-object v0, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v11, v0, Lorg/osmdroid/views/overlay/TilesOverlay;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 290
    iget-object v12, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v13, v0

    iget-object v0, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v14, v0

    iget-object v0, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v15, v0

    iget-object v0, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget-object v2, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v2, v2, Lorg/osmdroid/views/overlay/TilesOverlay;->mDebugPaint:Landroid/graphics/Paint;

    move/from16 v16, v0

    move-object/from16 v17, v2

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public initialiseLoop()V
    .locals 3

    .line 245
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->mTiles:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->mTiles:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 246
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->mTiles:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->mTiles:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int v1, v1, v0

    .line 248
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v2

    invoke-interface {v2}, Lorg/osmdroid/config/IConfigurationProvider;->getCacheMapTileOvershoot()S

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->ensureCapacity(I)V

    .line 249
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$000(Lorg/osmdroid/views/overlay/TilesOverlay;)Lorg/osmdroid/tileprovider/TileStates;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/TileStates;->initialiseLoop()V

    .line 250
    invoke-super {p0}, Lorg/osmdroid/util/TileLooper;->initialiseLoop()V

    return-void
.end method

.method public loop(DLorg/osmdroid/util/RectL;Landroid/graphics/Canvas;)V
    .locals 0

    .line 238
    iput-object p4, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->mCanvas:Landroid/graphics/Canvas;

    .line 239
    invoke-virtual {p0, p1, p2, p3}, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->loop(DLorg/osmdroid/util/RectL;)V

    return-void
.end method
