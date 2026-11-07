.class public Lorg/apache/commons/math3/util/BigRealField;
.super Ljava/lang/Object;
.source "BigRealField.java"

# interfaces
.implements Lorg/apache/commons/math3/Field;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/util/BigRealField$LazyHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/Field<",
        "Lorg/apache/commons/math3/util/BigReal;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x42023cdab7cf97f7L


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/util/BigRealField$1;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/apache/commons/math3/util/BigRealField;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/math3/util/BigRealField;
    .locals 1

    .line 48
    invoke-static {}, Lorg/apache/commons/math3/util/BigRealField$LazyHolder;->access$000()Lorg/apache/commons/math3/util/BigRealField;

    move-result-object v0

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 81
    invoke-static {}, Lorg/apache/commons/math3/util/BigRealField$LazyHolder;->access$000()Lorg/apache/commons/math3/util/BigRealField;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getOne()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/BigRealField;->getOne()Lorg/apache/commons/math3/util/BigReal;

    move-result-object v0

    return-object v0
.end method

.method public getOne()Lorg/apache/commons/math3/util/BigReal;
    .locals 1

    .line 53
    sget-object v0, Lorg/apache/commons/math3/util/BigReal;->ONE:Lorg/apache/commons/math3/util/BigReal;

    return-object v0
.end method

.method public getRuntimeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/commons/math3/FieldElement<",
            "Lorg/apache/commons/math3/util/BigReal;",
            ">;>;"
        }
    .end annotation

    .line 63
    const-class v0, Lorg/apache/commons/math3/util/BigReal;

    return-object v0
.end method

.method public bridge synthetic getZero()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/BigRealField;->getZero()Lorg/apache/commons/math3/util/BigReal;

    move-result-object v0

    return-object v0
.end method

.method public getZero()Lorg/apache/commons/math3/util/BigReal;
    .locals 1

    .line 58
    sget-object v0, Lorg/apache/commons/math3/util/BigReal;->ZERO:Lorg/apache/commons/math3/util/BigReal;

    return-object v0
.end method
