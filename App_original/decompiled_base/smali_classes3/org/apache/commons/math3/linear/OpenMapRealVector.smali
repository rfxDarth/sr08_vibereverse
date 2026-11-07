.class public Lorg/apache/commons/math3/linear/OpenMapRealVector;
.super Lorg/apache/commons/math3/linear/SparseRealVector;
.source "OpenMapRealVector.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapSparseIterator;,
        Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapEntry;
    }
.end annotation


# static fields
.field public static final DEFAULT_ZERO_TOLERANCE:D = 1.0E-12

.field private static final serialVersionUID:J = 0x79bd32107cb529bcL


# instance fields
.field private final entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

.field private final epsilon:D

.field private final virtualSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const-wide v1, 0x3d719799812dea11L    # 1.0E-12

    .line 66
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>(ID)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-wide v0, 0x3d719799812dea11L    # 1.0E-12

    .line 75
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>(ID)V

    return-void
.end method

.method public constructor <init>(ID)V
    .locals 2

    .line 84
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SparseRealVector;-><init>()V

    .line 85
    iput p1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    .line 86
    new-instance p1, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;-><init>(D)V

    iput-object p1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    .line 87
    iput-wide p2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const-wide v0, 0x3d719799812dea11L    # 1.0E-12

    .line 109
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>(IID)V

    return-void
.end method

.method public constructor <init>(IID)V
    .locals 2

    .line 120
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SparseRealVector;-><init>()V

    .line 121
    iput p1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    .line 122
    new-instance p1, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    const-wide/16 v0, 0x0

    invoke-direct {p1, p2, v0, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;-><init>(ID)V

    iput-object p1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    .line 123
    iput-wide p3, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/OpenMapRealVector;)V
    .locals 2

    .line 189
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SparseRealVector;-><init>()V

    .line 190
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getDimension()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    .line 191
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-direct {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntries()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;-><init>(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    .line 192
    iget-wide v0, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    iput-wide v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/linear/OpenMapRealVector;I)V
    .locals 1

    .line 96
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SparseRealVector;-><init>()V

    .line 97
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getDimension()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    .line 98
    new-instance p2, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    iget-object v0, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-direct {p2, v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;-><init>(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)V

    iput-object p2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    .line 99
    iget-wide p1, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    iput-wide p1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 4

    .line 200
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SparseRealVector;-><init>()V

    .line 201
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    .line 202
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;-><init>(D)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    const-wide v0, 0x3d719799812dea11L    # 1.0E-12

    .line 203
    iput-wide v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    const/4 v0, 0x0

    .line 204
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    if-ge v0, v1, :cond_1

    .line 205
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v1

    .line 206
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->isDefaultValue(D)Z

    move-result v3

    if-nez v3, :cond_0

    .line 207
    iget-object v3, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v3, v0, v1, v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->put(ID)D

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>([D)V
    .locals 2

    const-wide v0, 0x3d719799812dea11L    # 1.0E-12

    .line 133
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>([DD)V

    return-void
.end method

.method public constructor <init>([DD)V
    .locals 3

    .line 143
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SparseRealVector;-><init>()V

    .line 144
    array-length v0, p1

    iput v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    .line 145
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;-><init>(D)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    .line 146
    iput-wide p2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    const/4 p2, 0x0

    .line 147
    :goto_0
    array-length p3, p1

    if-ge p2, p3, :cond_1

    .line 148
    aget-wide v0, p1, p2

    .line 149
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->isDefaultValue(D)Z

    move-result p3

    if-nez p3, :cond_0

    .line 150
    iget-object p3, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {p3, p2, v0, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->put(ID)D

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>([Ljava/lang/Double;)V
    .locals 2

    const-wide v0, 0x3d719799812dea11L    # 1.0E-12

    .line 162
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>([Ljava/lang/Double;D)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Double;D)V
    .locals 3

    .line 172
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SparseRealVector;-><init>()V

    .line 173
    array-length v0, p1

    iput v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    .line 174
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;-><init>(D)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    .line 175
    iput-wide p2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    const/4 p2, 0x0

    .line 176
    :goto_0
    array-length p3, p1

    if-ge p2, p3, :cond_1

    .line 177
    aget-object p3, p1, p2

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 178
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->isDefaultValue(D)Z

    move-result p3

    if-nez p3, :cond_0

    .line 179
    iget-object p3, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {p3, p2, v0, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->put(ID)D

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/linear/OpenMapRealVector;)Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    return-object p0
.end method

.method private getEntries()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    return-object v0
.end method

.method private getLInfDistance(Lorg/apache/commons/math3/linear/OpenMapRealVector;)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 503
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkVectorDimensions(I)V

    .line 505
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 506
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 507
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 508
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v5

    invoke-virtual {p1, v5}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntry(I)D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    cmpl-double v5, v3, v1

    if-lez v5, :cond_0

    move-wide v1, v3

    goto :goto_0

    .line 513
    :cond_1
    invoke-direct {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntries()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object p1

    .line 514
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 515
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 516
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v0

    .line 517
    iget-object v3, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v3

    cmpl-double v0, v3, v1

    if-lez v0, :cond_2

    .line 518
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v0

    move-wide v1, v0

    goto :goto_1

    :cond_3
    return-wide v1
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/OpenMapRealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 255
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkVectorDimensions(I)V

    .line 256
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->size()I

    move-result v0

    iget-object v1, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->copy()Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->copy()Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object v1

    :goto_1
    if-eqz v0, :cond_2

    .line 258
    iget-object v2, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    :goto_2
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v2

    if-eqz v0, :cond_3

    .line 259
    iget-object p1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    goto :goto_3

    :cond_3
    iget-object p1, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    .line 260
    :goto_3
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 261
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 262
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v0

    .line 263
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 264
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->get(I)D

    move-result-wide v3

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-virtual {v1, v0, v3, v4}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    goto :goto_3

    .line 266
    :cond_4
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v3

    invoke-virtual {v1, v0, v3, v4}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    goto :goto_3

    :cond_5
    return-object v1
.end method

.method public add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 237
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkVectorDimensions(I)V

    .line 238
    instance-of v0, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    if-eqz v0, :cond_0

    .line 239
    check-cast p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->add(Lorg/apache/commons/math3/linear/OpenMapRealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object p1

    return-object p1

    .line 241
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/linear/SparseRealVector;->add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method

.method public append(D)Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 2

    .line 304
    new-instance v0, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>(Lorg/apache/commons/math3/linear/OpenMapRealVector;I)V

    .line 305
    iget v1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    return-object v0
.end method

.method public append(Lorg/apache/commons/math3/linear/OpenMapRealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 4

    .line 278
    new-instance v0, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getDimension()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>(Lorg/apache/commons/math3/linear/OpenMapRealVector;I)V

    .line 279
    iget-object p1, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object p1

    .line 280
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 282
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v1

    iget v2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    add-int/2addr v1, v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public append(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 5

    .line 290
    instance-of v0, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    if-eqz v0, :cond_0

    .line 291
    check-cast p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->append(Lorg/apache/commons/math3/linear/OpenMapRealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object p1

    return-object p1

    .line 293
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>(Lorg/apache/commons/math3/linear/OpenMapRealVector;I)V

    const/4 v1, 0x0

    .line 294
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 295
    iget v2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    add-int/2addr v2, v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic append(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->append(D)Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->append(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object p1

    return-object p1
.end method

.method public copy()Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 1

    .line 315
    new-instance v0, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>(Lorg/apache/commons/math3/linear/OpenMapRealVector;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->copy()Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object v0

    return-object v0
.end method

.method public dotProduct(Lorg/apache/commons/math3/linear/OpenMapRealVector;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 338
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    return-wide v0
.end method

.method public ebeDivide(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 345
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkVectorDimensions(I)V

    .line 346
    new-instance v0, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>(Lorg/apache/commons/math3/linear/OpenMapRealVector;)V

    .line 352
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getDimension()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 354
    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntry(I)D

    move-result-wide v3

    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic ebeDivide(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->ebeDivide(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object p1

    return-object p1
.end method

.method public ebeMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 363
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkVectorDimensions(I)V

    .line 364
    new-instance v0, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>(Lorg/apache/commons/math3/linear/OpenMapRealVector;)V

    .line 365
    iget-object v1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v1

    .line 366
    :goto_0
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 368
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v3

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v5

    invoke-virtual {p1, v5}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v5

    mul-double v3, v3, v5

    invoke-virtual {v0, v2, v3, v4}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic ebeMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->ebeMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 717
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 720
    :cond_1
    check-cast p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    .line 721
    iget v1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    iget v3, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    if-eq v1, v3, :cond_2

    return v2

    .line 724
    :cond_2
    iget-wide v3, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    .line 728
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v1

    .line 729
    :cond_4
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 730
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 731
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntry(I)D

    move-result-wide v3

    .line 732
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_4

    return v2

    .line 736
    :cond_5
    invoke-direct {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntries()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object p1

    .line 737
    :cond_6
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 738
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 739
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v3

    .line 740
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntry(I)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_7
    return v0
.end method

.method public getDimension()I
    .locals 1

    .line 398
    iget v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    return v0
.end method

.method public getDistance(Lorg/apache/commons/math3/linear/OpenMapRealVector;)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 410
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkVectorDimensions(I)V

    .line 411
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 413
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 414
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 415
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v3

    .line 417
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v4

    invoke-virtual {p1, v3}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntry(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double v4, v4, v4

    add-double/2addr v1, v4

    goto :goto_0

    .line 420
    :cond_0
    invoke-direct {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntries()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object p1

    .line 421
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 422
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 423
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v0

    .line 424
    iget-object v3, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 425
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v3

    mul-double v3, v3, v3

    add-double/2addr v1, v3

    goto :goto_1

    .line 429
    :cond_2
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDistance(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 435
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkVectorDimensions(I)V

    .line 436
    instance-of v0, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    if-eqz v0, :cond_0

    .line 437
    check-cast p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getDistance(Lorg/apache/commons/math3/linear/OpenMapRealVector;)D

    move-result-wide v0

    return-wide v0

    .line 439
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/linear/SparseRealVector;->getDistance(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getEntry(I)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 446
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkIndex(I)V

    .line 447
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->get(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getL1Distance(Lorg/apache/commons/math3/linear/OpenMapRealVector;)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 462
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkVectorDimensions(I)V

    .line 464
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 465
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 466
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 467
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v5

    invoke-virtual {p1, v5}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntry(I)D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    add-double/2addr v1, v3

    goto :goto_0

    .line 470
    :cond_0
    invoke-direct {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntries()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object p1

    .line 471
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 472
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 473
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v0

    .line 474
    iget-object v3, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 475
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    .line 476
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    add-double/2addr v1, v3

    goto :goto_1

    :cond_2
    return-wide v1
.end method

.method public getL1Distance(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 486
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkVectorDimensions(I)V

    .line 487
    instance-of v0, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    if-eqz v0, :cond_0

    .line 488
    check-cast p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getL1Distance(Lorg/apache/commons/math3/linear/OpenMapRealVector;)D

    move-result-wide v0

    return-wide v0

    .line 490
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/linear/SparseRealVector;->getL1Distance(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLInfDistance(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 528
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkVectorDimensions(I)V

    .line 529
    instance-of v0, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    if-eqz v0, :cond_0

    .line 530
    check-cast p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getLInfDistance(Lorg/apache/commons/math3/linear/OpenMapRealVector;)D

    move-result-wide v0

    return-wide v0

    .line 532
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/linear/SparseRealVector;->getLInfDistance(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSparsity()D
    .locals 4

    .line 753
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->size()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getDimension()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getSubVector(II)Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 377
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkIndex(I)V

    if-ltz p2, :cond_2

    add-int v0, p1, p2

    add-int/lit8 v1, v0, -0x1

    .line 381
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkIndex(I)V

    .line 382
    new-instance v1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-direct {v1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;-><init>(I)V

    .line 384
    iget-object p2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {p2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object p2

    .line 385
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 386
    invoke-virtual {p2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 387
    invoke-virtual {p2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v2

    if-lt v2, p1, :cond_0

    if-ge v2, v0, :cond_0

    sub-int/2addr v2, p1

    .line 389
    invoke-virtual {p2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    goto :goto_0

    :cond_1
    return-object v1

    .line 379
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_ELEMENTS_SHOULD_BE_POSITIVE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p1
.end method

.method public bridge synthetic getSubVector(II)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getSubVector(II)Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 7

    .line 694
    iget-wide v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    const/16 v0, 0x1f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 696
    iget v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    add-int/2addr v1, v0

    .line 697
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v0

    .line 698
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 699
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 700
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v1, v1, 0x1f

    shr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v4, v3

    add-int/2addr v1, v4

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected isDefaultValue(D)Z
    .locals 3

    .line 230
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    iget-wide v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->epsilon:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isInfinite()Z
    .locals 6

    .line 540
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 541
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 542
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 543
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v3

    .line 544
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_1

    return v1

    .line 547
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public isNaN()Z
    .locals 3

    .line 557
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v0

    .line 558
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 559
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 560
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public mapAdd(D)Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 1

    .line 570
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->copy()Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->mapAddToSelf(D)Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mapAdd(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->mapAdd(D)Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object p1

    return-object p1
.end method

.method public mapAddToSelf(D)Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 3

    const/4 v0, 0x0

    .line 576
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    if-ge v0, v1, :cond_0

    .line 577
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntry(I)D

    move-result-wide v1

    add-double/2addr v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic mapAddToSelf(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->mapAddToSelf(D)Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object p1

    return-object p1
.end method

.method public set(D)V
    .locals 2

    const/4 v0, 0x0

    .line 608
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    if-ge v0, v1, :cond_0

    .line 609
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEntry(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 586
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkIndex(I)V

    .line 587
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->isDefaultValue(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 588
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->put(ID)D

    return-void

    .line 589
    :cond_0
    iget-object p2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->containsKey(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 590
    iget-object p2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->remove(I)D

    :cond_1
    return-void
.end method

.method public setSubVector(ILorg/apache/commons/math3/linear/RealVector;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 598
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkIndex(I)V

    .line 599
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkIndex(I)V

    const/4 v0, 0x0

    .line 600
    :goto_0
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int v1, v0, p1

    .line 601
    invoke-virtual {p2, v0}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sparseIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/math3/linear/RealVector$Entry;",
            ">;"
        }
    .end annotation

    .line 759
    new-instance v0, Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapSparseIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapSparseIterator;-><init>(Lorg/apache/commons/math3/linear/OpenMapRealVector;)V

    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/linear/OpenMapRealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 622
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkVectorDimensions(I)V

    .line 623
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->copy()Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object v0

    .line 624
    invoke-direct {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getEntries()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object p1

    .line 625
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 626
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 627
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v1

    .line 628
    iget-object v2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->containsKey(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 629
    iget-object v2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->get(I)D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    goto :goto_0

    .line 631
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->setEntry(ID)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 641
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->checkVectorDimensions(I)V

    .line 642
    instance-of v0, p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    if-eqz v0, :cond_0

    .line 643
    check-cast p1, Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->subtract(Lorg/apache/commons/math3/linear/OpenMapRealVector;)Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object p1

    return-object p1

    .line 645
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/linear/SparseRealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[D
    .locals 5

    .line 674
    iget v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->virtualSize:I

    new-array v0, v0, [D

    .line 675
    iget-object v1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v1

    .line 676
    :goto_0
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 677
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 678
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v3

    aput-wide v3, v0, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public unitVector()Lorg/apache/commons/math3/linear/OpenMapRealVector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 652
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->copy()Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object v0

    .line 653
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->unitize()V

    return-object v0
.end method

.method public bridge synthetic unitVector()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->unitVector()Lorg/apache/commons/math3/linear/OpenMapRealVector;

    move-result-object v0

    return-object v0
.end method

.method public unitize()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 660
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->getNorm()D

    move-result-wide v0

    .line 661
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->isDefaultValue(D)Z

    move-result v2

    if-nez v2, :cond_1

    .line 664
    iget-object v2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v2

    .line 665
    :goto_0
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 666
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 667
    iget-object v3, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector;->entries:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v4

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v5

    div-double/2addr v5, v0

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->put(ID)D

    goto :goto_0

    :cond_0
    return-void

    .line 662
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method
