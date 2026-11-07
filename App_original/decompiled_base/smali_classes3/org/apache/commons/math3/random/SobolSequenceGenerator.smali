.class public Lorg/apache/commons/math3/random/SobolSequenceGenerator;
.super Ljava/lang/Object;
.source "SobolSequenceGenerator.java"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomVectorGenerator;


# static fields
.field private static final BITS:I = 0x34

.field private static final FILE_CHARSET:Ljava/lang/String; = "US-ASCII"

.field private static final MAX_DIMENSION:I = 0x3e8

.field private static final RESOURCE_NAME:Ljava/lang/String; = "/assets/org/apache/commons/math3/random/new-joe-kuo-6.1000"

.field private static final SCALE:D


# instance fields
.field private count:I

.field private final dimension:I

.field private final direction:[[J

.field private final x:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const/16 v2, 0x34

    .line 63
    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->SCALE:D

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->count:I

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    if-lt p1, v2, :cond_1

    if-gt p1, v1, :cond_1

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "/assets/org/apache/commons/math3/random/new-joe-kuo-6.1000"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    iput p1, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->dimension:I

    const/4 v3, 0x2

    .line 106
    new-array v3, v3, [I

    const/16 v4, 0x35

    aput v4, v3, v2

    aput p1, v3, v0

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->direction:[[J

    .line 107
    new-array p1, p1, [J

    iput-object p1, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->x:[J

    .line 110
    :try_start_0
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->initFromStream(Ljava/io/InputStream;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/commons/math3/exception/MathParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 116
    :catch_1
    :try_start_2
    new-instance p1, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p1

    .line 113
    :catch_2
    new-instance p1, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 122
    :catch_3
    throw p1

    .line 100
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p1

    .line 94
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, v2, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public constructor <init>(ILjava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/MathParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->count:I

    const/4 v1, 0x1

    if-lt p1, v1, :cond_1

    .line 164
    iput p1, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->dimension:I

    const/4 v2, 0x2

    .line 167
    new-array v2, v2, [I

    const/16 v3, 0x35

    aput v3, v2, v1

    aput p1, v2, v0

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->direction:[[J

    .line 168
    new-array v0, p1, [J

    iput-object v0, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->x:[J

    .line 171
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->initFromStream(Ljava/io/InputStream;)I

    move-result p2

    if-lt p2, p1, :cond_0

    return-void

    .line 173
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, v1, p2}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 161
    :cond_1
    new-instance p2, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p2
.end method

.method private initDirectionVector(II[I)V
    .locals 12

    .line 245
    array-length v0, p3

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    if-gt v3, v1, :cond_0

    .line 247
    iget-object v4, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->direction:[[J

    aget-object v4, v4, p1

    aget v5, p3, v3

    int-to-long v5, v5

    rsub-int/lit8 v7, v3, 0x34

    shl-long/2addr v5, v7

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_1
    const/16 v3, 0x34

    if-gt p3, v3, :cond_2

    .line 250
    iget-object v3, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->direction:[[J

    aget-object v3, v3, p1

    sub-int v4, p3, v1

    aget-wide v4, v3, v4

    shr-long v6, v4, v1

    xor-long/2addr v4, v6

    aput-wide v4, v3, p3

    const/4 v3, 0x1

    :goto_2
    add-int/lit8 v4, v0, -0x2

    if-gt v3, v4, :cond_1

    .line 252
    iget-object v5, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->direction:[[J

    aget-object v5, v5, p1

    aget-wide v6, v5, p3

    sub-int/2addr v4, v3

    shr-int v4, p2, v4

    and-int/2addr v4, v2

    int-to-long v8, v4

    sub-int v4, p3, v3

    aget-wide v10, v5, v4

    mul-long v8, v8, v10

    xor-long/2addr v6, v8

    aput-wide v6, v5, p3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private initFromStream(Ljava/io/InputStream;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x34

    if-gt v1, v2, :cond_0

    .line 192
    iget-object v2, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->direction:[[J

    const/4 v3, 0x0

    aget-object v2, v2, v3

    rsub-int/lit8 v3, v1, 0x34

    const-wide/16 v4, 0x1

    shl-long v3, v4, v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    :cond_0
    const-string v1, "US-ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 196
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 201
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    const/4 p1, 0x2

    const/4 v1, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 206
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 207
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v6, " "

    invoke-direct {v1, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :try_start_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lt v6, p1, :cond_2

    .line 210
    iget v7, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->dimension:I

    if-gt v6, v7, :cond_2

    .line 211
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 212
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v9, v7, 0x1

    .line 213
    new-array v9, v9, [I

    const/4 v10, 0x1

    :goto_2
    if-gt v10, v7, :cond_1

    .line 215
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v4, 0x1

    .line 217
    invoke-direct {p0, v4, v8, v9}, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->initDirectionVector(II[I)V

    move v4, v1

    .line 220
    :cond_2
    iget v1, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->dimension:I
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-le v6, v1, :cond_3

    .line 231
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    return v6

    :cond_3
    add-int/lit8 v3, v3, 0x1

    move v1, v6

    goto :goto_1

    .line 226
    :catch_0
    :try_start_2
    new-instance p1, Lorg/apache/commons/math3/exception/MathParseException;

    invoke-direct {p1, v5, v3}, Lorg/apache/commons/math3/exception/MathParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 224
    :catch_1
    new-instance p1, Lorg/apache/commons/math3/exception/MathParseException;

    invoke-direct {p1, v5, v3}, Lorg/apache/commons/math3/exception/MathParseException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    :cond_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    return v1

    :catchall_0
    move-exception p1

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw p1
.end method


# virtual methods
.method public getNextIndex()I
    .locals 1

    .line 323
    iget v0, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->count:I

    return v0
.end method

.method public nextVector()[D
    .locals 10

    .line 259
    iget v0, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->dimension:I

    new-array v0, v0, [D

    .line 260
    iget v1, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->count:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    add-int/2addr v1, v2

    .line 261
    iput v1, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->count:I

    return-object v0

    :cond_0
    sub-int/2addr v1, v2

    const/4 v3, 0x1

    :goto_0
    and-int/lit8 v4, v1, 0x1

    if-ne v4, v2, :cond_1

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 273
    :goto_1
    iget v4, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->dimension:I

    if-ge v1, v4, :cond_2

    .line 274
    iget-object v4, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->x:[J

    aget-wide v5, v4, v1

    iget-object v7, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->direction:[[J

    aget-object v7, v7, v1

    aget-wide v8, v7, v3

    xor-long/2addr v5, v8

    aput-wide v5, v4, v1

    long-to-double v4, v5

    .line 275
    sget-wide v6, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->SCALE:D

    div-double/2addr v4, v6

    aput-wide v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 277
    :cond_2
    iget v1, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->count:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->count:I

    return-object v0
.end method

.method public skipTo(I)[D
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    .line 293
    iget-object v2, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->x:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    goto :goto_3

    :cond_0
    add-int/lit8 v2, p1, -0x1

    shr-int/lit8 v3, v2, 0x1

    xor-int/2addr v2, v3

    int-to-long v2, v2

    const/4 v4, 0x0

    .line 297
    :goto_0
    iget v5, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->dimension:I

    if-ge v4, v5, :cond_3

    const/4 v5, 0x1

    move-wide v6, v0

    :goto_1
    const/16 v8, 0x34

    if-gt v5, v8, :cond_2

    add-int/lit8 v8, v5, -0x1

    shr-long v8, v2, v8

    cmp-long v10, v8, v0

    if-nez v10, :cond_1

    goto :goto_2

    :cond_1
    const-wide/16 v10, 0x1

    and-long/2addr v8, v10

    .line 307
    iget-object v10, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->direction:[[J

    aget-object v10, v10, v4

    aget-wide v11, v10, v5

    mul-long v8, v8, v11

    xor-long/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 309
    :cond_2
    :goto_2
    iget-object v5, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->x:[J

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 312
    :cond_3
    :goto_3
    iput p1, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->count:I

    .line 313
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->nextVector()[D

    move-result-object p1

    return-object p1
.end method
