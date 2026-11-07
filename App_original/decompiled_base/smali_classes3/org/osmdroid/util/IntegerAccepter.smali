.class public Lorg/osmdroid/util/IntegerAccepter;
.super Ljava/lang/Object;
.source "IntegerAccepter.java"


# instance fields
.field private mIndex:I

.field private final mValues:[I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/osmdroid/util/IntegerAccepter;->mValues:[I

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 3

    .line 23
    iget-object v0, p0, Lorg/osmdroid/util/IntegerAccepter;->mValues:[I

    iget v1, p0, Lorg/osmdroid/util/IntegerAccepter;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/osmdroid/util/IntegerAccepter;->mIndex:I

    aput p1, v0, v1

    return-void
.end method

.method public end()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 1

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lorg/osmdroid/util/IntegerAccepter;->mIndex:I

    return-void
.end method

.method public getValue(I)I
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/osmdroid/util/IntegerAccepter;->mValues:[I

    aget p1, v0, p1

    return p1
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lorg/osmdroid/util/IntegerAccepter;->mIndex:I

    return-void
.end method
