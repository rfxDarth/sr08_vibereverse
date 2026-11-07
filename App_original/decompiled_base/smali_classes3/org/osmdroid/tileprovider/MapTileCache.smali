.class public Lorg/osmdroid/tileprovider/MapTileCache;
.super Ljava/lang/Object;
.source "MapTileCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/tileprovider/MapTileCache$TileRemovedListener;
    }
.end annotation


# instance fields
.field private final mAdditionalMapTileList:Lorg/osmdroid/util/MapTileAreaList;

.field private mAutoEnsureCapacity:Z

.field private final mCachedTiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mCapacity:I

.field private final mComputers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/util/MapTileAreaComputer;",
            ">;"
        }
    .end annotation
.end field

.field private final mGC:Lorg/osmdroid/util/MapTileList;

.field private final mMapTileArea:Lorg/osmdroid/util/MapTileArea;

.field private final mPreCache:Lorg/osmdroid/tileprovider/MapTilePreCache;

.field private final mProtectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/util/MapTileContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mStressedMemory:Z

.field private mTileRemovedListener:Lorg/osmdroid/tileprovider/MapTileCache$TileRemovedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getCacheMapTileCount()S

    move-result v0

    invoke-direct {p0, v0}, Lorg/osmdroid/tileprovider/MapTileCache;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTiles:Ljava/util/HashMap;

    .line 46
    new-instance v0, Lorg/osmdroid/util/MapTileArea;

    invoke-direct {v0}, Lorg/osmdroid/util/MapTileArea;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mMapTileArea:Lorg/osmdroid/util/MapTileArea;

    .line 50
    new-instance v0, Lorg/osmdroid/util/MapTileAreaList;

    invoke-direct {v0}, Lorg/osmdroid/util/MapTileAreaList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mAdditionalMapTileList:Lorg/osmdroid/util/MapTileAreaList;

    .line 54
    new-instance v0, Lorg/osmdroid/util/MapTileList;

    invoke-direct {v0}, Lorg/osmdroid/util/MapTileList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mGC:Lorg/osmdroid/util/MapTileList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mComputers:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mProtectors:Ljava/util/List;

    .line 89
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/MapTileCache;->ensureCapacity(I)Z

    .line 90
    new-instance p1, Lorg/osmdroid/tileprovider/MapTilePreCache;

    invoke-direct {p1, p0}, Lorg/osmdroid/tileprovider/MapTilePreCache;-><init>(Lorg/osmdroid/tileprovider/MapTileCache;)V

    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mPreCache:Lorg/osmdroid/tileprovider/MapTilePreCache;

    return-void
.end method

.method private populateSyncCachedTiles(Lorg/osmdroid/util/MapTileList;)V
    .locals 4

    .line 317
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTiles:Ljava/util/HashMap;

    monitor-enter v0

    .line 318
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTiles:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/osmdroid/util/MapTileList;->ensureCapacity(I)V

    .line 319
    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileList;->clear()V

    .line 320
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTiles:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 321
    invoke-virtual {p1, v2, v3}, Lorg/osmdroid/util/MapTileList;->put(J)V

    goto :goto_0

    .line 323
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private refreshAdditionalLists()V
    .locals 5

    .line 202
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mComputers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/util/MapTileAreaComputer;

    .line 204
    iget-object v3, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mAdditionalMapTileList:Lorg/osmdroid/util/MapTileAreaList;

    invoke-virtual {v3}, Lorg/osmdroid/util/MapTileAreaList;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 205
    iget-object v3, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mAdditionalMapTileList:Lorg/osmdroid/util/MapTileAreaList;

    invoke-virtual {v3}, Lorg/osmdroid/util/MapTileAreaList;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/util/MapTileArea;

    goto :goto_1

    .line 207
    :cond_0
    new-instance v3, Lorg/osmdroid/util/MapTileArea;

    invoke-direct {v3}, Lorg/osmdroid/util/MapTileArea;-><init>()V

    .line 208
    iget-object v4, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mAdditionalMapTileList:Lorg/osmdroid/util/MapTileAreaList;

    invoke-virtual {v4}, Lorg/osmdroid/util/MapTileAreaList;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :goto_1
    iget-object v4, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mMapTileArea:Lorg/osmdroid/util/MapTileArea;

    invoke-interface {v2, v4, v3}, Lorg/osmdroid/util/MapTileAreaComputer;->computeFromSource(Lorg/osmdroid/util/MapTileArea;Lorg/osmdroid/util/MapTileArea;)Lorg/osmdroid/util/MapTileArea;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    :cond_1
    :goto_2
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mAdditionalMapTileList:Lorg/osmdroid/util/MapTileAreaList;

    invoke-virtual {v0}, Lorg/osmdroid/util/MapTileAreaList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 214
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mAdditionalMapTileList:Lorg/osmdroid/util/MapTileAreaList;

    invoke-virtual {v0}, Lorg/osmdroid/util/MapTileAreaList;->getList()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mAdditionalMapTileList:Lorg/osmdroid/util/MapTileAreaList;

    invoke-virtual {v2}, Lorg/osmdroid/util/MapTileAreaList;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    return-void
.end method

.method private shouldKeepTile(J)Z
    .locals 3

    .line 222
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mMapTileArea:Lorg/osmdroid/util/MapTileArea;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/MapTileArea;->contains(J)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 225
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mAdditionalMapTileList:Lorg/osmdroid/util/MapTileAreaList;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/MapTileAreaList;->contains(J)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 228
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mProtectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/util/MapTileContainer;

    .line 229
    invoke-interface {v2, p1, p2}, Lorg/osmdroid/util/MapTileContainer;->contains(J)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 270
    new-instance v0, Lorg/osmdroid/util/MapTileList;

    invoke-direct {v0}, Lorg/osmdroid/util/MapTileList;-><init>()V

    .line 271
    invoke-direct {p0, v0}, Lorg/osmdroid/tileprovider/MapTileCache;->populateSyncCachedTiles(Lorg/osmdroid/util/MapTileList;)V

    const/4 v1, 0x0

    .line 272
    :goto_0
    invoke-virtual {v0}, Lorg/osmdroid/util/MapTileList;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 273
    invoke-virtual {v0, v1}, Lorg/osmdroid/util/MapTileList;->get(I)J

    move-result-wide v2

    .line 274
    invoke-virtual {p0, v2, v3}, Lorg/osmdroid/tileprovider/MapTileCache;->remove(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public containsTile(J)Z
    .locals 2

    .line 259
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTiles:Ljava/util/HashMap;

    monitor-enter v0

    .line 260
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTiles:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 261
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ensureCapacity(I)Z
    .locals 2

    .line 132
    iget v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCapacity:I

    if-ge v0, p1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tile cache increased from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCapacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OsmDroid"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iput p1, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCapacity:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public garbageCollection()V
    .locals 5

    .line 162
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 163
    iget-boolean v1, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mStressedMemory:Z

    if-nez v1, :cond_0

    .line 164
    iget v1, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCapacity:I

    sub-int v1, v0, v1

    if-gtz v1, :cond_1

    goto :goto_2

    :cond_0
    const v1, 0x7fffffff

    .line 170
    :cond_1
    invoke-direct {p0}, Lorg/osmdroid/tileprovider/MapTileCache;->refreshAdditionalLists()V

    .line 172
    iget-boolean v2, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mAutoEnsureCapacity:Z

    if-eqz v2, :cond_2

    .line 173
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mMapTileArea:Lorg/osmdroid/util/MapTileArea;

    invoke-virtual {v2}, Lorg/osmdroid/util/MapTileArea;->size()I

    move-result v2

    iget-object v3, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mAdditionalMapTileList:Lorg/osmdroid/util/MapTileAreaList;

    invoke-virtual {v3}, Lorg/osmdroid/util/MapTileAreaList;->size()I

    move-result v3

    add-int/2addr v2, v3

    .line 174
    invoke-virtual {p0, v2}, Lorg/osmdroid/tileprovider/MapTileCache;->ensureCapacity(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 175
    iget-boolean v2, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mStressedMemory:Z

    if-nez v2, :cond_2

    .line 176
    iget v1, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCapacity:I

    sub-int v1, v0, v1

    if-gtz v1, :cond_2

    goto :goto_2

    .line 183
    :cond_2
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mGC:Lorg/osmdroid/util/MapTileList;

    invoke-direct {p0, v0}, Lorg/osmdroid/tileprovider/MapTileCache;->populateSyncCachedTiles(Lorg/osmdroid/util/MapTileList;)V

    const/4 v0, 0x0

    .line 184
    :goto_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mGC:Lorg/osmdroid/util/MapTileList;

    invoke-virtual {v2}, Lorg/osmdroid/util/MapTileList;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 185
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mGC:Lorg/osmdroid/util/MapTileList;

    invoke-virtual {v2, v0}, Lorg/osmdroid/util/MapTileList;->get(I)J

    move-result-wide v2

    .line 186
    invoke-direct {p0, v2, v3}, Lorg/osmdroid/tileprovider/MapTileCache;->shouldKeepTile(J)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 189
    :cond_3
    invoke-virtual {p0, v2, v3}, Lorg/osmdroid/tileprovider/MapTileCache;->remove(J)V

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public getAdditionalMapTileList()Lorg/osmdroid/util/MapTileAreaList;
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mAdditionalMapTileList:Lorg/osmdroid/util/MapTileAreaList;

    return-object v0
.end method

.method public getMapTile(J)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 141
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTiles:Ljava/util/HashMap;

    monitor-enter v0

    .line 142
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTiles:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 143
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getMapTileArea()Lorg/osmdroid/util/MapTileArea;
    .locals 1

    .line 240
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mMapTileArea:Lorg/osmdroid/util/MapTileArea;

    return-object v0
.end method

.method public getPreCache()Lorg/osmdroid/tileprovider/MapTilePreCache;
    .locals 1

    .line 347
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mPreCache:Lorg/osmdroid/tileprovider/MapTilePreCache;

    return-object v0
.end method

.method public getProtectedTileComputers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/MapTileAreaComputer;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mComputers:Ljava/util/List;

    return-object v0
.end method

.method public getProtectedTileContainers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/MapTileContainer;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mProtectors:Ljava/util/List;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 330
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getTileRemovedListener()Lorg/osmdroid/tileprovider/MapTileCache$TileRemovedListener;
    .locals 1

    .line 300
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mTileRemovedListener:Lorg/osmdroid/tileprovider/MapTileCache$TileRemovedListener;

    return-object v0
.end method

.method public maintenance()V
    .locals 1

    .line 339
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileCache;->garbageCollection()V

    .line 340
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mPreCache:Lorg/osmdroid/tileprovider/MapTilePreCache;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTilePreCache;->fill()V

    return-void
.end method

.method public putTile(JLandroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p3, :cond_0

    .line 148
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTiles:Ljava/util/HashMap;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTiles:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    return-void
.end method

.method protected remove(J)V
    .locals 3

    .line 287
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTiles:Ljava/util/HashMap;

    monitor-enter v0

    .line 288
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTiles:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 289
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileCache;->getTileRemovedListener()Lorg/osmdroid/tileprovider/MapTileCache$TileRemovedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileCache;->getTileRemovedListener()Lorg/osmdroid/tileprovider/MapTileCache$TileRemovedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/tileprovider/MapTileCache$TileRemovedListener;->onTileRemoved(J)V

    .line 292
    :cond_0
    invoke-static {}, Lorg/osmdroid/tileprovider/BitmapPool;->getInstance()Lorg/osmdroid/tileprovider/BitmapPool;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/osmdroid/tileprovider/BitmapPool;->asyncRecycle(Landroid/graphics/drawable/Drawable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 289
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setAutoEnsureCapacity(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mAutoEnsureCapacity:Z

    return-void
.end method

.method public setStressedMemory(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mStressedMemory:Z

    return-void
.end method

.method public setTileRemovedListener(Lorg/osmdroid/tileprovider/MapTileCache$TileRemovedListener;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mTileRemovedListener:Lorg/osmdroid/tileprovider/MapTileCache$TileRemovedListener;

    return-void
.end method
