.class public abstract Lorg/apache/commons/math3/geometry/VectorFormat;
.super Ljava/lang/Object;
.source "VectorFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULT_PREFIX:Ljava/lang/String; = "{"

.field public static final DEFAULT_SEPARATOR:Ljava/lang/String; = "; "

.field public static final DEFAULT_SUFFIX:Ljava/lang/String; = "}"


# instance fields
.field private final format:Ljava/text/NumberFormat;

.field private final prefix:Ljava/lang/String;

.field private final separator:Ljava/lang/String;

.field private final suffix:Ljava/lang/String;

.field private final trimmedPrefix:Ljava/lang/String;

.field private final trimmedSeparator:Ljava/lang/String;

.field private final trimmedSuffix:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 4

    .line 84
    const-string v0, "; "

    invoke-static {}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat()Ljava/text/NumberFormat;

    move-result-object v1

    const-string v2, "{"

    const-string v3, "}"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/apache/commons/math3/geometry/VectorFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 104
    invoke-static {}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/geometry/VectorFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->prefix:Ljava/lang/String;

    .line 118
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->suffix:Ljava/lang/String;

    .line 119
    iput-object p3, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->separator:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->trimmedPrefix:Ljava/lang/String;

    .line 121
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->trimmedSuffix:Ljava/lang/String;

    .line 122
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->trimmedSeparator:Ljava/lang/String;

    .line 123
    iput-object p4, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->format:Ljava/text/NumberFormat;

    return-void
.end method

.method protected constructor <init>(Ljava/text/NumberFormat;)V
    .locals 3

    .line 93
    const-string v0, "}"

    const-string v1, "; "

    const-string v2, "{"

    invoke-direct {p0, v2, v0, v1, p1}, Lorg/apache/commons/math3/geometry/VectorFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V

    return-void
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .line 132
    invoke-static {}, Ljava/text/NumberFormat;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/commons/math3/geometry/Vector;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "TS;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/math3/geometry/VectorFormat;->format(Lorg/apache/commons/math3/geometry/Vector;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs format(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;[D)Ljava/lang/StringBuffer;
    .locals 4

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p2, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 199
    invoke-virtual {p2, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 202
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->prefix:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 207
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    :cond_0
    aget-wide v1, p3, v0

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->format:Ljava/text/NumberFormat;

    invoke-static {v1, v2, v3, p1, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->formatDouble(DLjava/text/NumberFormat;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_1
    iget-object p2, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->suffix:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public abstract format(Lorg/apache/commons/math3/geometry/Vector;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "TS;>;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            ")",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation
.end method

.method public getFormat()Ljava/text/NumberFormat;
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->format:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSeparator()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->separator:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public abstract parse(Ljava/lang/String;)Lorg/apache/commons/math3/geometry/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "TS;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathParseException;
        }
    .end annotation
.end method

.method public abstract parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/geometry/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            ")",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "TS;>;"
        }
    .end annotation
.end method

.method protected parseCoordinates(ILjava/lang/String;Ljava/text/ParsePosition;)[D
    .locals 6

    .line 245
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 246
    new-array v1, p1, [D

    .line 249
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 250
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->trimmedPrefix:Ljava/lang/String;

    invoke-static {p2, v2, p3}, Lorg/apache/commons/math3/util/CompositeFormat;->parseFixedstring(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_3

    .line 257
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    if-lez v2, :cond_1

    .line 260
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->trimmedSeparator:Ljava/lang/String;

    invoke-static {p2, v4, p3}, Lorg/apache/commons/math3/util/CompositeFormat;->parseFixedstring(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z

    move-result v4

    if-nez v4, :cond_1

    return-object v3

    .line 265
    :cond_1
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 268
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->format:Ljava/text/NumberFormat;

    invoke-static {p2, v4, p3}, Lorg/apache/commons/math3/util/CompositeFormat;->parseNumber(Ljava/lang/String;Ljava/text/NumberFormat;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v4

    if-nez v4, :cond_2

    .line 272
    invoke-virtual {p3, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v3

    .line 277
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    :cond_3
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 283
    iget-object p1, p0, Lorg/apache/commons/math3/geometry/VectorFormat;->trimmedSuffix:Ljava/lang/String;

    invoke-static {p2, p1, p3}, Lorg/apache/commons/math3/util/CompositeFormat;->parseFixedstring(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z

    move-result p1

    if-nez p1, :cond_4

    return-object v3

    :cond_4
    return-object v1
.end method
