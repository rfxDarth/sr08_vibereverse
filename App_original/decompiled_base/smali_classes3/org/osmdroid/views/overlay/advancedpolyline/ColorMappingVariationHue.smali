.class public Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariationHue;
.super Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;
.source "ColorMappingVariationHue.java"


# instance fields
.field private mLuminance:F

.field private mSaturation:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 2

    .line 28
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariation;-><init>()V

    const/4 v0, 0x0

    const/high16 v1, 0x43b40000    # 360.0f

    .line 32
    invoke-static {p3, v0, v1}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorHelper;->constrain(FFF)F

    move-result p3

    .line 33
    invoke-static {p4, v0, v1}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorHelper;->constrain(FFF)F

    move-result p4

    const/high16 v1, 0x3f800000    # 1.0f

    .line 36
    invoke-static {p5, v0, v1}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorHelper;->constrain(FFF)F

    move-result p5

    iput p5, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariationHue;->mSaturation:F

    .line 37
    invoke-static {p6, v0, v1}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorHelper;->constrain(FFF)F

    move-result p5

    iput p5, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariationHue;->mLuminance:F

    .line 39
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariationHue;->init(FFFF)V

    return-void
.end method


# virtual methods
.method protected getHue(F)F
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariationHue;->mapScalar(F)F

    move-result p1

    return p1
.end method

.method protected getLuminance(F)F
    .locals 0

    .line 54
    iget p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariationHue;->mLuminance:F

    return p1
.end method

.method protected getSaturation(F)F
    .locals 0

    .line 49
    iget p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/ColorMappingVariationHue;->mSaturation:F

    return p1
.end method
