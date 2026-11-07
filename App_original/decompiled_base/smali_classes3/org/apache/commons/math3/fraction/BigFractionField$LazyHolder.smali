.class Lorg/apache/commons/math3/fraction/BigFractionField$LazyHolder;
.super Ljava/lang/Object;
.source "BigFractionField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/fraction/BigFractionField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/apache/commons/math3/fraction/BigFractionField;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFractionField;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/fraction/BigFractionField;-><init>(Lorg/apache/commons/math3/fraction/BigFractionField$1;)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFractionField$LazyHolder;->INSTANCE:Lorg/apache/commons/math3/fraction/BigFractionField;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/apache/commons/math3/fraction/BigFractionField;
    .locals 1

    .line 69
    sget-object v0, Lorg/apache/commons/math3/fraction/BigFractionField$LazyHolder;->INSTANCE:Lorg/apache/commons/math3/fraction/BigFractionField;

    return-object v0
.end method
