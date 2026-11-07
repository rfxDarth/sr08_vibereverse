.class public final Lorg/apache/commons/math3/stat/interval/IntervalUtils;
.super Ljava/lang/Object;
.source "IntervalUtils.java"


# static fields
.field private static final AGRESTI_COULL:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;

.field private static final CLOPPER_PEARSON:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;

.field private static final NORMAL_APPROXIMATION:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;

.field private static final WILSON_SCORE:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lorg/apache/commons/math3/stat/interval/AgrestiCoullInterval;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/interval/AgrestiCoullInterval;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->AGRESTI_COULL:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;

    .line 44
    new-instance v0, Lorg/apache/commons/math3/stat/interval/ClopperPearsonInterval;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/interval/ClopperPearsonInterval;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->CLOPPER_PEARSON:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;

    .line 47
    new-instance v0, Lorg/apache/commons/math3/stat/interval/NormalApproximationInterval;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/interval/NormalApproximationInterval;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->NORMAL_APPROXIMATION:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;

    .line 50
    new-instance v0, Lorg/apache/commons/math3/stat/interval/WilsonScoreInterval;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/interval/WilsonScoreInterval;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->WILSON_SCORE:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkParameters(IID)V
    .locals 2

    if-lez p0, :cond_3

    if-ltz p1, :cond_2

    const/4 v0, 0x1

    if-gt p1, p0, :cond_1

    const-wide/16 p0, 0x0

    cmpg-double v1, p2, p0

    if-lez v1, :cond_0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, p2, p0

    if-gez v1, :cond_0

    return-void

    .line 170
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUNDS_CONFIDENCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0

    .line 166
    :cond_1
    new-instance p2, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object p3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_SUCCESS_LARGER_THAN_POPULATION_SIZE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p2, p3, p1, p0, v0}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p2

    .line 163
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NEGATIVE_NUMBER_OF_SUCCESSES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0

    .line 160
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_TRIALS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p1
.end method

.method public static getAgrestiCoullInterval(IID)Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;
    .locals 1

    .line 76
    sget-object v0, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->AGRESTI_COULL:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;->createInterval(IID)Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;

    move-result-object p0

    return-object p0
.end method

.method public static getClopperPearsonInterval(IID)Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;
    .locals 1

    .line 105
    sget-object v0, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->CLOPPER_PEARSON:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;->createInterval(IID)Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;

    move-result-object p0

    return-object p0
.end method

.method public static getNormalApproximationInterval(IID)Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;
    .locals 1

    .line 123
    sget-object v0, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->NORMAL_APPROXIMATION:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;->createInterval(IID)Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;

    move-result-object p0

    return-object p0
.end method

.method public static getWilsonScoreInterval(IID)Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;
    .locals 1

    .line 144
    sget-object v0, Lorg/apache/commons/math3/stat/interval/IntervalUtils;->WILSON_SCORE:Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/interval/BinomialConfidenceInterval;->createInterval(IID)Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;

    move-result-object p0

    return-object p0
.end method
