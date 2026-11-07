.class Lorg/apache/commons/math3/util/FastMath$lnMant;
.super Ljava/lang/Object;
.source "FastMath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/FastMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "lnMant"
.end annotation


# static fields
.field private static final LN_MANT:[[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3815
    invoke-static {}, Lorg/apache/commons/math3/util/FastMathLiteralArrays;->loadLnMant()[[D

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/util/FastMath$lnMant;->LN_MANT:[[D

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400()[[D
    .locals 1

    .line 3801
    sget-object v0, Lorg/apache/commons/math3/util/FastMath$lnMant;->LN_MANT:[[D

    return-object v0
.end method
