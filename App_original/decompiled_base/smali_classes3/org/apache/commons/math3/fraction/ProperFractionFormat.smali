.class public Lorg/apache/commons/math3/fraction/ProperFractionFormat;
.super Lorg/apache/commons/math3/fraction/FractionFormat;
.source "ProperFractionFormat.java"


# static fields
.field private static final serialVersionUID:J = 0xa8f621a0a61f4ddL


# instance fields
.field private wholeFormat:Ljava/text/NumberFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-static {}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->getDefaultNumberFormat()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;-><init>(Ljava/text/NumberFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/text/NumberFormat;)V
    .locals 2

    .line 62
    invoke-virtual {p1}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/NumberFormat;

    invoke-virtual {p1}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/NumberFormat;

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;-><init>(Ljava/text/NumberFormat;Ljava/text/NumberFormat;Ljava/text/NumberFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/text/NumberFormat;Ljava/text/NumberFormat;Ljava/text/NumberFormat;)V
    .locals 0

    .line 76
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/math3/fraction/FractionFormat;-><init>(Ljava/text/NumberFormat;Ljava/text/NumberFormat;)V

    .line 77
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->setWholeFormat(Ljava/text/NumberFormat;)V

    return-void
.end method


# virtual methods
.method public format(Lorg/apache/commons/math3/fraction/Fraction;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 5

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 95
    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 97
    invoke-virtual {p1}, Lorg/apache/commons/math3/fraction/Fraction;->getNumerator()I

    move-result v0

    .line 98
    invoke-virtual {p1}, Lorg/apache/commons/math3/fraction/Fraction;->getDenominator()I

    move-result p1

    .line 99
    div-int v1, v0, p1

    .line 100
    rem-int/2addr v0, p1

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->getWholeFormat()Ljava/text/NumberFormat;

    move-result-object v2

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4, p2, p3}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    .line 104
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 105
    invoke-static {v0}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v0

    .line 107
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->getNumeratorFormat()Ljava/text/NumberFormat;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3, p2, p3}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 108
    const-string v0, " / "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->getDenominatorFormat()Ljava/text/NumberFormat;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2, p2, p3}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public getWholeFormat()Ljava/text/NumberFormat;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->wholeFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public bridge synthetic parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 8

    .line 137
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/fraction/FractionFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 142
    :cond_0
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 145
    invoke-static {p1, p2}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 148
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->getWholeFormat()Ljava/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 153
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v2

    .line 158
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 161
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->getNumeratorFormat()Ljava/text/NumberFormat;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v3

    if-nez v3, :cond_2

    .line 166
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v2

    .line 170
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-gez v4, :cond_3

    .line 172
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v2

    .line 177
    :cond_3
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    .line 178
    invoke-static {p1, p2}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->parseNextCharacter(Ljava/lang/String;Ljava/text/ParsePosition;)C

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_7

    const/16 v7, 0x2f

    if-eq v5, v7, :cond_4

    .line 191
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 192
    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v2

    .line 197
    :cond_4
    invoke-static {p1, p2}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 200
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->getDenominatorFormat()Ljava/text/NumberFormat;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object p1

    if-nez p1, :cond_5

    .line 205
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v2

    .line 209
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-gez v4, :cond_6

    .line 211
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v2

    .line 215
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 216
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 217
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 218
    new-instance v1, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-static {p2}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v2

    mul-int v2, v2, p1

    add-int/2addr v2, v0

    invoke-static {v6, p2}, Lorg/apache/commons/math3/util/MathUtils;->copySign(II)I

    move-result p2

    mul-int v2, v2, p2

    invoke-direct {v1, v2, p1}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    return-object v1

    .line 183
    :cond_7
    new-instance p1, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-direct {p1, p2, v6}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    return-object p1
.end method

.method public setWholeFormat(Ljava/text/NumberFormat;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 230
    iput-object p1, p0, Lorg/apache/commons/math3/fraction/ProperFractionFormat;->wholeFormat:Ljava/text/NumberFormat;

    return-void

    .line 228
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->WHOLE_FORMAT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method
