.class Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;
.super Ljava/lang/Object;
.source "SchurTransformer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/SchurTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShiftInfo"
.end annotation


# instance fields
.field exShift:D

.field w:D

.field x:D

.field y:D


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/linear/SchurTransformer$1;)V
    .locals 0

    .line 440
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;-><init>()V

    return-void
.end method
