.class public Lorg/osmdroid/util/BoundingBox;
.super Ljava/lang/Object;
.source "BoundingBox.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/osmdroid/util/BoundingBox;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x2L


# instance fields
.field private mLatNorth:D

.field private mLatSouth:D

.field private mLonEast:D

.field private mLonWest:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 402
    new-instance v0, Lorg/osmdroid/util/BoundingBox$1;

    invoke-direct {v0}, Lorg/osmdroid/util/BoundingBox$1;-><init>()V

    sput-object v0, Lorg/osmdroid/util/BoundingBox;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual/range {p0 .. p8}, Lorg/osmdroid/util/BoundingBox;->set(DDDD)V

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Lorg/osmdroid/util/BoundingBox;
    .locals 0

    .line 22
    invoke-static {p0}, Lorg/osmdroid/util/BoundingBox;->readFromParcel(Landroid/os/Parcel;)Lorg/osmdroid/util/BoundingBox;

    move-result-object p0

    return-object p0
.end method

.method public static fromGeoPoints(Ljava/util/List;)Lorg/osmdroid/util/BoundingBox;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/osmdroid/api/IGeoPoint;",
            ">;)",
            "Lorg/osmdroid/util/BoundingBox;"
        }
    .end annotation

    .line 352
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v2, -0x10000000000001L

    move-wide v9, v0

    move-wide v11, v9

    move-wide v5, v2

    move-wide v7, v5

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/api/IGeoPoint;

    .line 353
    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v1

    .line 354
    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v3

    .line 356
    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    .line 357
    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    .line 358
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    .line 359
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    goto :goto_0

    .line 362
    :cond_0
    new-instance v4, Lorg/osmdroid/util/BoundingBox;

    invoke-direct/range {v4 .. v12}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    return-object v4
.end method

.method public static fromGeoPointsSafe(Ljava/util/List;)Lorg/osmdroid/util/BoundingBox;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)",
            "Lorg/osmdroid/util/BoundingBox;"
        }
    .end annotation

    .line 542
    :try_start_0
    invoke-static {p0}, Lorg/osmdroid/util/BoundingBox;->fromGeoPoints(Ljava/util/List;)Lorg/osmdroid/util/BoundingBox;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 544
    :catch_0
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object p0

    .line 545
    new-instance v0, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v1

    .line 546
    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMaxLongitude()D

    move-result-wide v3

    .line 547
    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v5

    .line 548
    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMinLongitude()D

    move-result-wide v7

    invoke-direct/range {v0 .. v8}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    return-object v0
.end method

.method public static getCenterLongitude(DD)D
    .locals 4

    add-double v0, p2, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    cmpg-double v2, p2, p0

    if-gez v2, :cond_0

    const-wide p0, 0x4066800000000000L    # 180.0

    add-double/2addr v0, p0

    .line 190
    :cond_0
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/util/TileSystem;->cleanLongitude(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Lorg/osmdroid/util/BoundingBox;
    .locals 9

    .line 428
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    .line 429
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    .line 430
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    .line 431
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    .line 432
    new-instance v0, Lorg/osmdroid/util/BoundingBox;

    invoke-direct/range {v0 .. v8}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    return-object v0
.end method


# virtual methods
.method public bringToBoundingBox(DD)Lorg/osmdroid/util/GeoPoint;
    .locals 5

    .line 343
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget-wide v1, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    iget-wide v3, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iget-wide v1, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    iget-wide v3, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    .line 344
    invoke-static {v3, v4, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide p3

    invoke-static {v1, v2, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide p3

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->clone()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/osmdroid/util/BoundingBox;
    .locals 9

    .line 85
    new-instance v0, Lorg/osmdroid/util/BoundingBox;

    iget-wide v1, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    iget-wide v3, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    iget-wide v5, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    iget-wide v7, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    invoke-direct/range {v0 .. v8}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    return-object v0
.end method

.method public concat(Lorg/osmdroid/util/BoundingBox;)Lorg/osmdroid/util/BoundingBox;
    .locals 11

    .line 120
    new-instance v0, Lorg/osmdroid/util/BoundingBox;

    iget-wide v1, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    .line 121
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    iget-wide v3, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    .line 122
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    iget-wide v5, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    .line 123
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    iget-wide v7, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    .line 124
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    invoke-direct/range {v0 .. v8}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    return-object v0
.end method

.method public contains(DD)Z
    .locals 7

    .line 373
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmpg-double v6, v0, v2

    if-gez v6, :cond_0

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    cmpg-double v6, p1, v0

    if-gez v6, :cond_1

    cmpl-double v0, p1, v2

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 382
    :goto_1
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    cmpg-double p2, v0, v2

    if-gez p2, :cond_3

    cmpg-double p2, p3, v0

    if-gtz p2, :cond_2

    cmpl-double p2, p3, v2

    if-ltz p2, :cond_2

    :goto_2
    const/4 p2, 0x1

    goto :goto_3

    :cond_2
    const/4 p2, 0x0

    goto :goto_3

    :cond_3
    cmpg-double p2, p3, v0

    if-gez p2, :cond_2

    cmpl-double p2, p3, v2

    if-lez p2, :cond_2

    goto :goto_2

    :goto_3
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    return v5

    :cond_4
    return v4
.end method

.method public contains(Lorg/osmdroid/api/IGeoPoint;)Z
    .locals 4

    .line 366
    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/osmdroid/util/BoundingBox;->contains(DD)Z

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    check-cast p1, Lorg/osmdroid/util/BoundingBox;

    .line 95
    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    iget-wide v4, p1, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 96
    :cond_2
    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    iget-wide v4, p1, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_3

    return v1

    .line 97
    :cond_3
    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    iget-wide v4, p1, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_4

    return v1

    .line 98
    :cond_4
    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    iget-wide v4, p1, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-nez p1, :cond_5

    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public getActualNorth()D
    .locals 4

    .line 197
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getActualSouth()D
    .locals 4

    .line 204
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCenter()Lorg/osmdroid/util/GeoPoint;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget-wide v1, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    iget-wide v3, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    iget-wide v5, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    iget-wide v7, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    add-double/2addr v5, v7

    div-double/2addr v5, v3

    invoke-direct {v0, v1, v2, v5, v6}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v0
.end method

.method public getCenterLatitude()D
    .locals 4

    .line 168
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getCenterLongitude()D
    .locals 4

    .line 175
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    invoke-static {v0, v1, v2, v3}, Lorg/osmdroid/util/BoundingBox;->getCenterLongitude(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCenterWithDateLine()Lorg/osmdroid/util/GeoPoint;
    .locals 5

    .line 148
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getCenterLatitude()D

    move-result-wide v1

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getCenterLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v0
.end method

.method public getDiagonalLengthInMeters()D
    .locals 6

    .line 152
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget-wide v1, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    iget-wide v3, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    iget-wide v4, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/GeoPoint;->distanceToAsDouble(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getGeoPointOfRelativePositionWithExactGudermannInterpolation(FF)Lorg/osmdroid/util/GeoPoint;
    .locals 7

    .line 296
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v0

    .line 297
    iget-wide v1, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    invoke-static {v1, v2}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v1

    .line 298
    iget-wide v3, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    invoke-static {v3, v4}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, p2

    float-to-double v5, v5

    sub-double/2addr v1, v3

    mul-double v5, v5, v1

    add-double/2addr v3, v5

    .line 299
    invoke-static {v3, v4}, Lorg/osmdroid/util/MyMath;->gudermann(D)D

    move-result-wide v1

    .line 300
    iget-wide v3, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v5

    float-to-double p1, p1

    mul-double v5, v5, p1

    add-double/2addr v3, v5

    .line 301
    new-instance p1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/util/TileSystem;->cleanLatitude(D)D

    move-result-wide v1

    invoke-virtual {v0, v3, v4}, Lorg/osmdroid/util/TileSystem;->cleanLongitude(D)D

    move-result-wide v3

    invoke-direct {p1, v1, v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object p1
.end method

.method public getGeoPointOfRelativePositionWithLinearInterpolation(FF)Lorg/osmdroid/util/GeoPoint;
    .locals 7

    .line 288
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v0

    .line 289
    iget-wide v1, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatitudeSpan()D

    move-result-wide v3

    float-to-double v5, p2

    mul-double v3, v3, v5

    sub-double/2addr v1, v3

    .line 290
    iget-wide v3, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v5

    float-to-double p1, p1

    mul-double v5, v5, p1

    add-double/2addr v3, v5

    .line 291
    new-instance p1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/util/TileSystem;->cleanLatitude(D)D

    move-result-wide v1

    invoke-virtual {v0, v3, v4}, Lorg/osmdroid/util/TileSystem;->cleanLongitude(D)D

    move-result-wide v3

    invoke-direct {p1, v1, v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object p1
.end method

.method public getLatNorth()D
    .locals 2

    .line 157
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    return-wide v0
.end method

.method public getLatSouth()D
    .locals 2

    .line 161
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    return-wide v0
.end method

.method public getLatitudeSpan()D
    .locals 4

    .line 221
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLatitudeSpanE6()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 437
    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatitudeSpan()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getLonEast()D
    .locals 2

    .line 208
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    return-wide v0
.end method

.method public getLonWest()D
    .locals 2

    .line 212
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    return-wide v0
.end method

.method public getLongitudeSpan()D
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 229
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitudeSpanE6()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 442
    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getLongitudeSpanWithDateLine()D
    .locals 5

    .line 254
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    sub-double/2addr v0, v2

    return-wide v0

    :cond_0
    sub-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getRelativePositionOfGeoPointInBoundingBoxWithExactGudermannInterpolation(DDLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 4

    if-eqz p5, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    new-instance p5, Landroid/graphics/PointF;

    invoke-direct {p5}, Landroid/graphics/PointF;-><init>()V

    .line 280
    :goto_0
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    invoke-static {v0, v1}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v0

    invoke-static {p1, p2}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide p1

    sub-double/2addr v0, p1

    iget-wide p1, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    invoke-static {p1, p2}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide p1

    iget-wide v2, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    invoke-static {v2, v3}, Lorg/osmdroid/util/MyMath;->gudermannInverse(D)D

    move-result-wide v2

    sub-double/2addr p1, v2

    div-double/2addr v0, p1

    double-to-float p1, v0

    .line 281
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    sub-double/2addr v0, p3

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide p2

    div-double/2addr v0, p2

    double-to-float p2, v0

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p3, p2

    .line 282
    invoke-virtual {p5, p3, p1}, Landroid/graphics/PointF;->set(FF)V

    return-object p5
.end method

.method public getRelativePositionOfGeoPointInBoundingBoxWithLinearInterpolation(DDLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    if-eqz p5, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    new-instance p5, Landroid/graphics/PointF;

    invoke-direct {p5}, Landroid/graphics/PointF;-><init>()V

    .line 271
    :goto_0
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    sub-double/2addr v0, p1

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatitudeSpan()D

    move-result-wide p1

    div-double/2addr v0, p1

    double-to-float p1, v0

    .line 272
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    sub-double/2addr v0, p3

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide p2

    div-double/2addr v0, p2

    double-to-float p2, v0

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p3, p2

    .line 273
    invoke-virtual {p5, p3, p1}, Landroid/graphics/PointF;->set(FF)V

    return-object p5
.end method

.method public hashCode()I
    .locals 7

    .line 105
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    .line 107
    iget-wide v3, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v1, v1, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    .line 109
    iget-wide v3, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v1, v1, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    .line 111
    iget-wide v3, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v1, v1, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    return v1
.end method

.method public increaseByScale(F)Lorg/osmdroid/util/BoundingBox;
    .locals 21

    move/from16 v0, p1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-lez v1, :cond_0

    .line 313
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v1

    .line 315
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/util/BoundingBox;->getCenterLatitude()D

    move-result-wide v2

    .line 316
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/util/BoundingBox;->getLatitudeSpan()D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    float-to-double v8, v0

    mul-double v4, v4, v8

    add-double v10, v2, v4

    .line 317
    invoke-virtual {v1, v10, v11}, Lorg/osmdroid/util/TileSystem;->cleanLatitude(D)D

    move-result-wide v13

    sub-double/2addr v2, v4

    .line 318
    invoke-virtual {v1, v2, v3}, Lorg/osmdroid/util/TileSystem;->cleanLatitude(D)D

    move-result-wide v17

    .line 320
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/util/BoundingBox;->getCenterLongitude()D

    move-result-wide v2

    .line 321
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpanWithDateLine()D

    move-result-wide v4

    div-double/2addr v4, v6

    mul-double v4, v4, v8

    add-double v6, v2, v4

    .line 322
    invoke-virtual {v1, v6, v7}, Lorg/osmdroid/util/TileSystem;->cleanLongitude(D)D

    move-result-wide v15

    sub-double/2addr v2, v4

    .line 323
    invoke-virtual {v1, v2, v3}, Lorg/osmdroid/util/TileSystem;->cleanLongitude(D)D

    move-result-wide v19

    .line 324
    new-instance v12, Lorg/osmdroid/util/BoundingBox;

    invoke-direct/range {v12 .. v20}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    return-object v12

    .line 312
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pBoundingboxPaddingRelativeScale must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public overlaps(Lorg/osmdroid/util/BoundingBox;D)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    const/4 v4, 0x1

    cmpg-double v5, p2, v2

    if-gez v5, :cond_0

    return v4

    .line 465
    :cond_0
    iget-wide v2, v1, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    iget-wide v5, v0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    const/4 v7, 0x0

    cmpg-double v8, v2, v5

    if-gtz v8, :cond_1

    iget-wide v8, v0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    cmpl-double v10, v2, v8

    if-ltz v10, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 471
    :goto_0
    iget-wide v9, v0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    iget-wide v11, v1, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    cmpl-double v13, v9, v11

    if-ltz v13, :cond_2

    iget-wide v13, v1, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    cmpg-double v15, v9, v13

    if-gtz v15, :cond_2

    const/4 v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    .line 474
    :goto_1
    iget-wide v14, v0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    cmpl-double v16, v14, v11

    move-wide/from16 p2, v5

    if-ltz v16, :cond_3

    const/16 v16, 0x1

    iget-wide v4, v1, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    cmpg-double v6, v9, v4

    if-gtz v6, :cond_4

    const/4 v13, 0x1

    goto :goto_2

    :cond_3
    const/16 v16, 0x1

    :cond_4
    :goto_2
    cmpg-double v4, v9, v11

    if-gtz v4, :cond_5

    .line 478
    iget-wide v4, v1, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    cmpl-double v6, v14, v4

    if-ltz v6, :cond_5

    iget-wide v4, v1, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    cmpl-double v6, p2, v4

    if-ltz v6, :cond_5

    iget-wide v4, v0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    cmpg-double v6, v4, v2

    if-gtz v6, :cond_5

    return v16

    :cond_5
    cmpl-double v4, p2, v2

    if-ltz v4, :cond_6

    .line 485
    iget-wide v4, v0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    cmpg-double v6, p2, v4

    if-gtz v6, :cond_6

    const/4 v8, 0x1

    .line 488
    :cond_6
    iget-wide v4, v0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    cmpl-double v6, v4, v2

    if-ltz v6, :cond_7

    cmpg-double v2, v4, v4

    if-gtz v2, :cond_7

    const/4 v8, 0x1

    :cond_7
    cmpl-double v2, v9, v14

    if-lez v2, :cond_c

    .line 497
    iget-wide v1, v1, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    cmpg-double v3, v14, v1

    if-gtz v3, :cond_8

    cmpl-double v3, v11, v9

    if-ltz v3, :cond_8

    const/4 v13, 0x1

    :cond_8
    cmpl-double v3, v9, v1

    if-ltz v3, :cond_b

    cmpg-double v3, v14, v1

    if-gtz v3, :cond_b

    cmpg-double v3, v1, v9

    if-gez v3, :cond_9

    cmpg-double v3, v11, v9

    if-gez v3, :cond_9

    const/4 v3, 0x0

    goto :goto_3

    :cond_9
    const/4 v3, 0x1

    :goto_3
    cmpl-double v4, v1, v14

    if-lez v4, :cond_a

    cmpl-double v4, v11, v14

    if-lez v4, :cond_a

    const/4 v13, 0x0

    goto :goto_4

    :cond_a
    move v13, v3

    :cond_b
    :goto_4
    cmpl-double v3, v9, v1

    if-ltz v3, :cond_c

    cmpl-double v3, v14, v1

    if-ltz v3, :cond_c

    const/4 v13, 0x1

    :cond_c
    if-eqz v8, :cond_d

    if-eqz v13, :cond_d

    return v16

    :cond_d
    return v7
.end method

.method public set(DDDD)V
    .locals 1

    .line 65
    iput-wide p1, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    .line 66
    iput-wide p3, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    .line 67
    iput-wide p5, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    .line 68
    iput-wide p7, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    .line 70
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isEnforceTileSystemBounds()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v0

    .line 73
    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/TileSystem;->isValidLatitude(D)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 75
    invoke-virtual {v0, p5, p6}, Lorg/osmdroid/util/TileSystem;->isValidLatitude(D)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 77
    invoke-virtual {v0, p7, p8}, Lorg/osmdroid/util/TileSystem;->isValidLongitude(D)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 79
    invoke-virtual {v0, p3, p4}, Lorg/osmdroid/util/TileSystem;->isValidLongitude(D)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "east must be in "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/osmdroid/util/TileSystem;->toStringLongitudeSpan()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "west must be in "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/osmdroid/util/TileSystem;->toStringLongitudeSpan()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "south must be in "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/osmdroid/util/TileSystem;->toStringLatitudeSpan()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "north must be in "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/osmdroid/util/TileSystem;->toStringLatitudeSpan()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    return-void
.end method

.method public setLatNorth(D)V
    .locals 0

    .line 233
    iput-wide p1, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    return-void
.end method

.method public setLatSouth(D)V
    .locals 0

    .line 237
    iput-wide p1, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    return-void
.end method

.method public setLonEast(D)V
    .locals 0

    .line 241
    iput-wide p1, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    return-void
.end method

.method public setLonWest(D)V
    .locals 0

    .line 245
    iput-wide p1, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 333
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "N:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "; E:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    .line 334
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "; S:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "; W:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    .line 335
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 421
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatNorth:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 422
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLonEast:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 423
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLatSouth:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 424
    iget-wide v0, p0, Lorg/osmdroid/util/BoundingBox;->mLonWest:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
