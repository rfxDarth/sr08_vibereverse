.class public Lcom/scwang/smartrefresh/header/material/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scwang/smartrefresh/header/material/CircleImageView$OvalShadow;
    }
.end annotation


# static fields
.field protected static final FILL_SHADOW_COLOR:I = 0x3d000000

.field protected static final KEY_SHADOW_COLOR:I = 0x1e000000

.field protected static final SHADOW_ELEVATION:I = 0x4

.field protected static final SHADOW_RADIUS:F = 3.5f

.field protected static final X_OFFSET:F = 0.0f

.field protected static final Y_OFFSET:F = 1.75f


# instance fields
.field mShadowRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x40600000    # 3.5f

    mul-float v0, v0, p1

    float-to-int v0, v0

    .line 59
    iput v0, p0, Lcom/scwang/smartrefresh/header/material/CircleImageView;->mShadowRadius:I

    .line 63
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/high16 v1, 0x40800000    # 4.0f

    mul-float p1, p1, v1

    .line 64
    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 75
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 86
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method
