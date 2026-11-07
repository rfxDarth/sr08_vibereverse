.class public Lorg/osmdroid/util/PointReducer;
.super Ljava/lang/Object;
.source "PointReducer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static douglasPeuckerReduction(Ljava/util/ArrayList;[ZDII)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;[ZDII)V"
        }
    .end annotation

    move/from16 v6, p5

    add-int/lit8 v0, p4, 0x1

    if-gt v6, v0, :cond_0

    goto :goto_1

    .line 98
    :cond_0
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    .line 99
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/util/GeoPoint;

    const-wide/16 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v0, v6, :cond_2

    .line 102
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/util/GeoPoint;

    .line 104
    invoke-static {v3, v1, v2}, Lorg/osmdroid/util/PointReducer;->orthogonalDistance(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;)D

    move-result-wide v9

    cmpl-double v3, v9, v7

    if-lez v3, :cond_1

    move v5, v0

    move-wide v7, v9

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    cmpl-double v0, v7, p2

    if-lez v0, :cond_3

    const/4 v0, 0x1

    .line 115
    aput-boolean v0, p1, v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    .line 118
    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/PointReducer;->douglasPeuckerReduction(Ljava/util/ArrayList;[ZDII)V

    move v4, v5

    move v5, v6

    .line 121
    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/PointReducer;->douglasPeuckerReduction(Ljava/util/ArrayList;[ZDII)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static orthogonalDistance(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;)D
    .locals 8

    .line 138
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    mul-double v0, v0, v2

    .line 139
    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    .line 140
    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    .line 141
    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    mul-double v2, v2, v4

    sub-double/2addr v0, v2

    .line 142
    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    mul-double v2, v2, v4

    sub-double/2addr v0, v2

    .line 143
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    mul-double v2, v2, v4

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    .line 136
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 148
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 149
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    sub-double/2addr p0, v6

    .line 147
    invoke-static {v4, v5, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    div-double/2addr v0, p0

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public static reduceWithTolerance(Ljava/util/ArrayList;D)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;D)",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    cmpg-double v3, p1, v1

    if-lez v3, :cond_4

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_2

    .line 49
    :cond_0
    new-array v3, v0, [Z

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    add-int/lit8 v7, v0, -0x1

    const/4 v8, 0x0

    if-ge v2, v7, :cond_1

    .line 51
    aput-boolean v8, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :cond_1
    aput-boolean v1, v3, v7

    aput-boolean v1, v3, v8

    const/4 v6, 0x0

    move-object v2, p0

    move-wide v4, p1

    .line 57
    invoke-static/range {v2 .. v7}, Lorg/osmdroid/util/PointReducer;->douglasPeuckerReduction(Ljava/util/ArrayList;[ZDII)V

    .line 66
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v8, v0, :cond_3

    .line 68
    aget-boolean p1, v3, v8

    if-eqz p1, :cond_2

    .line 69
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    return-object p0

    :cond_4
    :goto_2
    move-object v2, p0

    return-object v2
.end method
