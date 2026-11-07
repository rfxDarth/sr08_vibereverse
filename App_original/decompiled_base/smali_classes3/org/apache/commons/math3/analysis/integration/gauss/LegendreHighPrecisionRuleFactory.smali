.class public Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;
.super Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;
.source "LegendreHighPrecisionRuleFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory<",
        "Ljava/math/BigDecimal;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Ljava/math/MathContext;

.field private final minusOne:Ljava/math/BigDecimal;

.field private final oneHalf:Ljava/math/BigDecimal;

.field private final two:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    sget-object v0, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;-><init>(Ljava/math/MathContext;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/MathContext;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    .line 58
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "2"

    invoke-direct {v0, v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->two:Ljava/math/BigDecimal;

    .line 59
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "-1"

    invoke-direct {v0, v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->minusOne:Ljava/math/BigDecimal;

    .line 60
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "0.5"

    invoke-direct {v0, v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->oneHalf:Ljava/math/BigDecimal;

    return-void
.end method


# virtual methods
.method protected computeRule(I)Lorg/apache/commons/math3/util/Pair;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/util/Pair<",
            "[",
            "Ljava/math/BigDecimal;",
            "[",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 70
    new-instance v1, Lorg/apache/commons/math3/util/Pair;

    new-array v4, v3, [Ljava/math/BigDecimal;

    sget-object v5, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    aput-object v5, v4, v2

    iget-object v5, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->two:Ljava/math/BigDecimal;

    new-array v3, v3, [Ljava/math/BigDecimal;

    aput-object v5, v3, v2

    invoke-direct {v1, v4, v3}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    add-int/lit8 v4, v1, -0x1

    .line 77
    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->getRuleInternal(I)Lorg/apache/commons/math3/util/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/math/BigDecimal;

    .line 80
    new-array v5, v1, [Ljava/math/BigDecimal;

    .line 81
    new-array v6, v1, [Ljava/math/BigDecimal;

    .line 84
    div-int/lit8 v7, v1, 0x2

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_9

    if-nez v8, :cond_1

    .line 87
    iget-object v10, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->minusOne:Ljava/math/BigDecimal;

    goto :goto_1

    :cond_1
    add-int/lit8 v10, v8, -0x1

    aget-object v10, v4, v10

    :goto_1
    if-ne v7, v3, :cond_2

    .line 89
    sget-object v11, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    goto :goto_2

    :cond_2
    aget-object v11, v4, v8

    .line 91
    :goto_2
    sget-object v12, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 95
    sget-object v13, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    move-object v14, v11

    move-object v15, v13

    const/4 v2, 0x1

    move-object v13, v12

    move-object v12, v10

    :goto_3
    if-ge v2, v1, :cond_3

    const/16 v16, 0x1

    .line 99
    new-instance v3, Ljava/math/BigDecimal;

    mul-int/lit8 v17, v2, 0x2

    add-int/lit8 v9, v17, 0x1

    move-object/from16 v17, v4

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-direct {v3, v9, v4}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    .line 100
    new-instance v4, Ljava/math/BigDecimal;

    iget-object v9, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-direct {v4, v2, v9}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    .line 101
    new-instance v9, Ljava/math/BigDecimal;

    add-int/lit8 v2, v2, 0x1

    move/from16 v18, v7

    iget-object v7, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-direct {v9, v2, v7}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    .line 106
    iget-object v7, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v10, v3, v7}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    move/from16 v19, v2

    .line 107
    iget-object v2, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v12, v7, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 108
    iget-object v7, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v13, v4, v7}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    .line 110
    iget-object v13, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v2, v7, v13}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 111
    iget-object v7, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v2, v9, v7}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 116
    iget-object v7, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v11, v3, v7}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 117
    iget-object v7, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v14, v3, v7}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 118
    iget-object v7, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v15, v4, v7}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 120
    iget-object v7, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v3, v4, v7}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 121
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v3, v9, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v3

    move-object v13, v12

    move-object v15, v14

    move-object/from16 v4, v17

    move/from16 v7, v18

    move-object v12, v2

    move-object v14, v3

    move/from16 v2, v19

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    move-object/from16 v17, v4

    move/from16 v18, v7

    const/16 v16, 0x1

    .line 130
    iget-object v2, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v10, v11, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->oneHalf:Ljava/math/BigDecimal;

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v2, v3, v4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 132
    sget-object v3, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    move-object v4, v3

    const/4 v7, 0x0

    move-object v3, v2

    :goto_4
    if-nez v7, :cond_8

    .line 137
    iget-object v3, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v11, v10, v3}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 138
    invoke-virtual {v2}, Ljava/math/BigDecimal;->ulp()Ljava/math/BigDecimal;

    move-result-object v4

    sget-object v7, Ljava/math/BigDecimal;->TEN:Ljava/math/BigDecimal;

    iget-object v9, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v4, v7, v9}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 139
    invoke-virtual {v3, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v3

    if-gtz v3, :cond_4

    const/4 v7, 0x1

    goto :goto_5

    :cond_4
    const/4 v7, 0x0

    .line 140
    :goto_5
    sget-object v3, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    move-object v4, v3

    const/4 v9, 0x1

    move-object v3, v2

    :goto_6
    if-ge v9, v1, :cond_5

    .line 143
    new-instance v13, Ljava/math/BigDecimal;

    mul-int/lit8 v14, v9, 0x2

    add-int/lit8 v14, v14, 0x1

    iget-object v15, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-direct {v13, v14, v15}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    .line 144
    new-instance v14, Ljava/math/BigDecimal;

    iget-object v15, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-direct {v14, v9, v15}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    .line 145
    new-instance v15, Ljava/math/BigDecimal;

    add-int/lit8 v9, v9, 0x1

    move/from16 v19, v7

    iget-object v7, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-direct {v15, v9, v7}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    .line 148
    iget-object v7, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v2, v13, v7}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    .line 149
    iget-object v13, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v3, v7, v13}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    .line 150
    iget-object v13, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v4, v14, v13}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 152
    iget-object v13, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v7, v4, v13}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 153
    iget-object v7, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v4, v15, v7}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v4

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    move/from16 v7, v19

    goto :goto_6

    :cond_5
    move/from16 v19, v7

    if-nez v19, :cond_7

    .line 160
    invoke-virtual {v12}, Ljava/math/BigDecimal;->signum()I

    move-result v7

    invoke-virtual {v3}, Ljava/math/BigDecimal;->signum()I

    move-result v9

    mul-int v7, v7, v9

    if-gtz v7, :cond_6

    move-object v11, v2

    move-object v2, v10

    goto :goto_7

    :cond_6
    move-object v12, v3

    .line 169
    :goto_7
    iget-object v7, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v2, v11, v7}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    iget-object v9, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->oneHalf:Ljava/math/BigDecimal;

    iget-object v10, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v7, v9, v10}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    move-object v10, v2

    move-object v2, v7

    :cond_7
    move/from16 v7, v19

    goto/16 :goto_4

    .line 172
    :cond_8
    new-instance v7, Ljava/math/BigDecimal;

    iget-object v9, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-direct {v7, v1, v9}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    .line 173
    iget-object v9, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v2, v3, v9}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v3

    iget-object v9, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v4, v3, v9}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 174
    invoke-virtual {v3, v7}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 175
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    const/4 v7, 0x2

    invoke-virtual {v3, v7, v4}, Ljava/math/BigDecimal;->pow(ILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 176
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v2, v7, v4}, Ljava/math/BigDecimal;->pow(ILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 177
    sget-object v7, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    iget-object v9, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v7, v4, v9}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 178
    iget-object v7, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->two:Ljava/math/BigDecimal;

    iget-object v9, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v4, v7, v9}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 179
    iget-object v7, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v4, v3, v7}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 181
    aput-object v2, v5, v8

    .line 182
    aput-object v3, v6, v8

    sub-int v4, v1, v8

    add-int/lit8 v4, v4, -0x1

    .line 185
    iget-object v7, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v2, v7}, Ljava/math/BigDecimal;->negate(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v2

    aput-object v2, v5, v4

    .line 186
    aput-object v3, v6, v4

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, v17

    move/from16 v7, v18

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_9
    move/from16 v18, v7

    const/16 v16, 0x1

    .line 192
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_b

    .line 193
    sget-object v2, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    const/4 v3, 0x1

    :goto_8
    if-ge v3, v1, :cond_a

    .line 195
    new-instance v4, Ljava/math/BigDecimal;

    iget-object v7, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-direct {v4, v3, v7}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    .line 196
    new-instance v7, Ljava/math/BigDecimal;

    add-int/lit8 v8, v3, 0x1

    iget-object v9, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-direct {v7, v8, v9}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    .line 199
    iget-object v8, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v2, v4, v8}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 200
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v2, v7, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 201
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v2, v4}, Ljava/math/BigDecimal;->negate(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v2

    add-int/lit8 v3, v3, 0x2

    goto :goto_8

    .line 205
    :cond_a
    new-instance v3, Ljava/math/BigDecimal;

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-direct {v3, v1, v4}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    .line 206
    iget-object v1, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v2, v3, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 207
    iget-object v2, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    const/4 v7, 0x2

    invoke-virtual {v1, v7, v2}, Ljava/math/BigDecimal;->pow(ILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 208
    iget-object v2, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->two:Ljava/math/BigDecimal;

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    invoke-virtual {v2, v1, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 210
    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    aput-object v2, v5, v18

    .line 211
    aput-object v1, v6, v18

    .line 214
    :cond_b
    new-instance v1, Lorg/apache/commons/math3/util/Pair;

    invoke-direct {v1, v5, v6}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
