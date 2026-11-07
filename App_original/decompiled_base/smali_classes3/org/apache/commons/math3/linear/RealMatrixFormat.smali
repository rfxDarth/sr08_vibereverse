.class public Lorg/apache/commons/math3/linear/RealMatrixFormat;
.super Ljava/lang/Object;
.source "RealMatrixFormat.java"


# static fields
.field private static final DEFAULT_COLUMN_SEPARATOR:Ljava/lang/String; = ","

.field private static final DEFAULT_PREFIX:Ljava/lang/String; = "{"

.field private static final DEFAULT_ROW_PREFIX:Ljava/lang/String; = "{"

.field private static final DEFAULT_ROW_SEPARATOR:Ljava/lang/String; = ","

.field private static final DEFAULT_ROW_SUFFIX:Ljava/lang/String; = "}"

.field private static final DEFAULT_SUFFIX:Ljava/lang/String; = "}"


# instance fields
.field private final columnSeparator:Ljava/lang/String;

.field private final format:Ljava/text/NumberFormat;

.field private final prefix:Ljava/lang/String;

.field private final rowPrefix:Ljava/lang/String;

.field private final rowSeparator:Ljava/lang/String;

.field private final rowSuffix:Ljava/lang/String;

.field private final suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 90
    const-string v6, ","

    invoke-static {}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat()Ljava/text/NumberFormat;

    move-result-object v7

    const-string v1, "{"

    const-string v2, "}"

    const-string v3, "{"

    const-string v4, "}"

    const-string v5, ","

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/linear/RealMatrixFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 115
    invoke-static {}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat()Ljava/text/NumberFormat;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/linear/RealMatrixFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->prefix:Ljava/lang/String;

    .line 135
    iput-object p2, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->suffix:Ljava/lang/String;

    .line 136
    iput-object p3, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->rowPrefix:Ljava/lang/String;

    .line 137
    iput-object p4, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->rowSuffix:Ljava/lang/String;

    .line 138
    iput-object p5, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->rowSeparator:Ljava/lang/String;

    .line 139
    iput-object p6, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->columnSeparator:Ljava/lang/String;

    .line 140
    iput-object p7, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->format:Ljava/text/NumberFormat;

    const/4 p1, 0x0

    .line 142
    invoke-virtual {p7, p1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/text/NumberFormat;)V
    .locals 8

    .line 99
    const-string v5, ","

    const-string v6, ","

    const-string v1, "{"

    const-string v2, "}"

    const-string v3, "{"

    const-string v4, "}"

    move-object v0, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/linear/RealMatrixFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V

    return-void
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .line 151
    invoke-static {}, Ljava/text/NumberFormat;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lorg/apache/commons/math3/linear/RealMatrixFormat;
    .locals 1

    .line 215
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/linear/RealMatrixFormat;->getInstance(Ljava/util/Locale;)Lorg/apache/commons/math3/linear/RealMatrixFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Lorg/apache/commons/math3/linear/RealMatrixFormat;
    .locals 1

    .line 224
    new-instance v0, Lorg/apache/commons/math3/linear/RealMatrixFormat;

    invoke-static {p0}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/RealMatrixFormat;-><init>(Ljava/text/NumberFormat;)V

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/commons/math3/linear/RealMatrix;)Ljava/lang/String;
    .locals 3

    .line 234
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrixFormat;->format(Lorg/apache/commons/math3/linear/RealMatrix;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Lorg/apache/commons/math3/linear/RealMatrix;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 7

    const/4 v0, 0x0

    .line 248
    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 249
    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 252
    iget-object v1, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->prefix:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 257
    iget-object v3, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->rowPrefix:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    .line 258
    :goto_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_1

    if-lez v3, :cond_0

    .line 260
    iget-object v4, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->columnSeparator:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    :cond_0
    invoke-interface {p1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->format:Ljava/text/NumberFormat;

    invoke-static {v4, v5, v6, p2, p3}, Lorg/apache/commons/math3/util/CompositeFormat;->formatDouble(DLjava/text/NumberFormat;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 264
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->rowSuffix:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_2

    .line 266
    iget-object v3, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->rowSeparator:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    :cond_3
    iget-object p1, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->suffix:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public getColumnSeparator()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->columnSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/text/NumberFormat;
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->format:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getRowPrefix()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->rowPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getRowSeparator()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->rowSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public getRowSuffix()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->rowSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 3

    .line 285
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 286
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/linear/RealMatrixFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 287
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 288
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/MathParseException;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v0

    const-class v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v1, p1, v0, v2}, Lorg/apache/commons/math3/exception/MathParseException;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    throw v1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 12

    .line 303
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 305
    iget-object v1, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 306
    iget-object v2, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->suffix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 307
    iget-object v3, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->rowPrefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 308
    iget-object v4, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->rowSuffix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 309
    iget-object v5, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->columnSeparator:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 310
    iget-object v6, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->rowSeparator:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 313
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 314
    invoke-static {p1, v1, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseFixedstring(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z

    move-result v1

    const/4 v7, 0x0

    if-nez v1, :cond_0

    return-object v7

    .line 319
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 320
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x1

    :cond_1
    :goto_0
    const/4 v10, 0x0

    if-eqz v9, :cond_8

    .line 323
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    .line 324
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 325
    invoke-static {p1, v5, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseFixedstring(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 326
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {p1, v4, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseFixedstring(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z

    move-result v11

    if-nez v11, :cond_2

    return-object v7

    .line 330
    :cond_2
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 331
    invoke-static {p1, v6, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseFixedstring(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 332
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 341
    :cond_4
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 342
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_5

    invoke-static {p1, v3, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseFixedstring(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z

    move-result v11

    if-nez v11, :cond_5

    return-object v7

    :cond_5
    :goto_1
    if-eqz v9, :cond_1

    .line 349
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 350
    iget-object v11, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->format:Ljava/text/NumberFormat;

    invoke-static {p1, v11, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseNumber(Ljava/lang/String;Ljava/text/NumberFormat;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 352
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 354
    :cond_6
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    goto :goto_0

    .line 359
    :cond_7
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v7

    .line 367
    :cond_8
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 368
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_9
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 373
    invoke-static {p1, v2, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseFixedstring(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z

    move-result p1

    if-nez p1, :cond_a

    return-object v7

    .line 378
    :cond_a
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 379
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v7

    .line 384
    :cond_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [[D

    .line 386
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 387
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [D

    aput-object v2, p1, v0

    const/4 v2, 0x0

    .line 388
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 389
    aget-object v3, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 393
    :cond_d
    invoke-static {p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    return-object p1
.end method
