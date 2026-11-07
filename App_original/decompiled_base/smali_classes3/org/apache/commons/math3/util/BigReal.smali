.class public Lorg/apache/commons/math3/util/BigReal;
.super Ljava/lang/Object;
.source "BigReal.java"

# interfaces
.implements Lorg/apache/commons/math3/FieldElement;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/FieldElement<",
        "Lorg/apache/commons/math3/util/BigReal;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/math3/util/BigReal;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final ONE:Lorg/apache/commons/math3/util/BigReal;

.field public static final ZERO:Lorg/apache/commons/math3/util/BigReal;

.field private static final serialVersionUID:J = 0x452ca010a807f22eL


# instance fields
.field private final d:Ljava/math/BigDecimal;

.field private roundingMode:Ljava/math/RoundingMode;

.field private scale:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lorg/apache/commons/math3/util/BigReal;

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/util/BigReal;-><init>(Ljava/math/BigDecimal;)V

    sput-object v0, Lorg/apache/commons/math3/util/BigReal;->ZERO:Lorg/apache/commons/math3/util/BigReal;

    .line 46
    new-instance v0, Lorg/apache/commons/math3/util/BigReal;

    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/util/BigReal;-><init>(Ljava/math/BigDecimal;)V

    sput-object v0, Lorg/apache/commons/math3/util/BigReal;->ONE:Lorg/apache/commons/math3/util/BigReal;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 58
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 137
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(DLjava/math/MathContext;)V
    .locals 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 58
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 145
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2, p3}, Ljava/math/BigDecimal;-><init>(DLjava/math/MathContext;)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 58
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 152
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(ILjava/math/MathContext;)V
    .locals 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 58
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 160
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 58
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 167
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(J)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(JLjava/math/MathContext;)V
    .locals 1

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 58
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 175
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2, p3}, Ljava/math/BigDecimal;-><init>(JLjava/math/MathContext;)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 58
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 182
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/math/MathContext;)V
    .locals 1

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 58
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 190
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigDecimal;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 58
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 64
    iput-object p1, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 58
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 71
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;I)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 58
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 79
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 58
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 88
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2, p3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/MathContext;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 58
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 96
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;Ljava/math/MathContext;)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>([C)V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 58
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 103
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>([C)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 58
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 112
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2, p3}, Ljava/math/BigDecimal;-><init>([CII)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>([CIILjava/math/MathContext;)V
    .locals 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 58
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 122
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/math/BigDecimal;-><init>([CIILjava/math/MathContext;)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>([CLjava/math/MathContext;)V
    .locals 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 58
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 130
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>([CLjava/math/MathContext;)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 40
    check-cast p1, Lorg/apache/commons/math3/util/BigReal;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/BigReal;->add(Lorg/apache/commons/math3/util/BigReal;)Lorg/apache/commons/math3/util/BigReal;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/apache/commons/math3/util/BigReal;)Lorg/apache/commons/math3/util/BigReal;
    .locals 2

    .line 233
    new-instance v0, Lorg/apache/commons/math3/util/BigReal;

    iget-object v1, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    iget-object p1, p1, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    invoke-virtual {v1, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/util/BigReal;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
.end method

.method public bigDecimalValue()Ljava/math/BigDecimal;
    .locals 1

    .line 300
    iget-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 40
    check-cast p1, Lorg/apache/commons/math3/util/BigReal;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/BigReal;->compareTo(Lorg/apache/commons/math3/util/BigReal;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/commons/math3/util/BigReal;)I
    .locals 1

    .line 286
    iget-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    iget-object p1, p1, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic divide(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 40
    check-cast p1, Lorg/apache/commons/math3/util/BigReal;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/BigReal;->divide(Lorg/apache/commons/math3/util/BigReal;)Lorg/apache/commons/math3/util/BigReal;

    move-result-object p1

    return-object p1
.end method

.method public divide(Lorg/apache/commons/math3/util/BigReal;)Lorg/apache/commons/math3/util/BigReal;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 253
    :try_start_0
    new-instance v0, Lorg/apache/commons/math3/util/BigReal;

    iget-object v1, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    iget-object p1, p1, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    iget v2, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    iget-object v3, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {v1, p1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/util/BigReal;-><init>(Ljava/math/BigDecimal;)V
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 256
    :catch_0
    new-instance p1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NOT_ALLOWED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public doubleValue()D
    .locals 2

    .line 293
    iget-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 310
    :cond_0
    instance-of v0, p1, Lorg/apache/commons/math3/util/BigReal;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    check-cast p1, Lorg/apache/commons/math3/util/BigReal;

    iget-object p1, p1, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getField()Lorg/apache/commons/math3/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/Field<",
            "Lorg/apache/commons/math3/util/BigReal;",
            ">;"
        }
    .end annotation

    .line 324
    invoke-static {}, Lorg/apache/commons/math3/util/BigRealField;->getInstance()Lorg/apache/commons/math3/util/BigRealField;

    move-result-object v0

    return-object v0
.end method

.method public getRoundingMode()Ljava/math/RoundingMode;
    .locals 1

    .line 200
    iget-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    return-object v0
.end method

.method public getScale()I
    .locals 1

    .line 219
    iget v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 319
    iget-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic multiply(I)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/BigReal;->multiply(I)Lorg/apache/commons/math3/util/BigReal;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic multiply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 40
    check-cast p1, Lorg/apache/commons/math3/util/BigReal;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/BigReal;->multiply(Lorg/apache/commons/math3/util/BigReal;)Lorg/apache/commons/math3/util/BigReal;

    move-result-object p1

    return-object p1
.end method

.method public multiply(I)Lorg/apache/commons/math3/util/BigReal;
    .locals 3

    .line 281
    new-instance v0, Lorg/apache/commons/math3/util/BigReal;

    iget-object v1, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, p1}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/util/BigReal;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
.end method

.method public multiply(Lorg/apache/commons/math3/util/BigReal;)Lorg/apache/commons/math3/util/BigReal;
    .locals 2

    .line 276
    new-instance v0, Lorg/apache/commons/math3/util/BigReal;

    iget-object v1, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    iget-object p1, p1, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    invoke-virtual {v1, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/util/BigReal;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
.end method

.method public bridge synthetic negate()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/BigReal;->negate()Lorg/apache/commons/math3/util/BigReal;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/apache/commons/math3/util/BigReal;
    .locals 2

    .line 243
    new-instance v0, Lorg/apache/commons/math3/util/BigReal;

    iget-object v1, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/util/BigReal;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
.end method

.method public bridge synthetic reciprocal()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/BigReal;->reciprocal()Lorg/apache/commons/math3/util/BigReal;

    move-result-object v0

    return-object v0
.end method

.method public reciprocal()Lorg/apache/commons/math3/util/BigReal;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 267
    :try_start_0
    new-instance v0, Lorg/apache/commons/math3/util/BigReal;

    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    iget-object v2, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    iget v3, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    iget-object v4, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {v1, v2, v3, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/util/BigReal;-><init>(Ljava/math/BigDecimal;)V
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 270
    :catch_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NOT_ALLOWED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public setRoundingMode(Ljava/math/RoundingMode;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    return-void
.end method

.method public setScale(I)V
    .locals 0

    .line 228
    iput p1, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    return-void
.end method

.method public bridge synthetic subtract(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 40
    check-cast p1, Lorg/apache/commons/math3/util/BigReal;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/BigReal;->subtract(Lorg/apache/commons/math3/util/BigReal;)Lorg/apache/commons/math3/util/BigReal;

    move-result-object p1

    return-object p1
.end method

.method public subtract(Lorg/apache/commons/math3/util/BigReal;)Lorg/apache/commons/math3/util/BigReal;
    .locals 2

    .line 238
    new-instance v0, Lorg/apache/commons/math3/util/BigReal;

    iget-object v1, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    iget-object p1, p1, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    invoke-virtual {v1, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/util/BigReal;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
.end method
