.class public Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingCycle;
.super Ljava/lang/Object;
.source "ColorMappingCycle.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/advancedpolyline/ColorMapping;


# instance fields
.field private final mColorArray:[I

.field private final mColorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGeoPointNumber:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingCycle;->mColorList:Ljava/util/List;

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingCycle;->mColorArray:[I

    return-void
.end method

.method public constructor <init>([I)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingCycle;->mColorList:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingCycle;->mColorArray:[I

    return-void
.end method


# virtual methods
.method public getColorForIndex(I)I
    .locals 2

    .line 44
    iget v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingCycle;->mGeoPointNumber:I

    if-lez v0, :cond_0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    .line 47
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingCycle;->mColorArray:[I

    if-eqz v0, :cond_1

    .line 48
    array-length v1, v0

    rem-int/2addr p1, v1

    aget p1, v0, p1

    return p1

    .line 50
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingCycle;->mColorList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 51
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 53
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setGeoPointNumber(I)V
    .locals 0

    .line 39
    iput p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingCycle;->mGeoPointNumber:I

    return-void
.end method
