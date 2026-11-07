.class Lcom/scwang/smartrefresh/header/material/CircleImageView$OvalShadow;
.super Landroid/graphics/drawable/shapes/OvalShape;
.source "CircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smartrefresh/header/material/CircleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OvalShadow"
.end annotation


# instance fields
.field private mRadialGradient:Landroid/graphics/RadialGradient;

.field private mShadowPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/scwang/smartrefresh/header/material/CircleImageView;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/header/material/CircleImageView;I)V
    .locals 1

    .line 141
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/material/CircleImageView$OvalShadow;->this$0:Lcom/scwang/smartrefresh/header/material/CircleImageView;

    .line 142
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 143
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/material/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    .line 144
    iput p2, p1, Lcom/scwang/smartrefresh/header/material/CircleImageView;->mShadowRadius:I

    .line 145
    invoke-super {p0}, Landroid/graphics/drawable/shapes/OvalShape;->rect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/scwang/smartrefresh/header/material/CircleImageView$OvalShadow;->updateRadialGradient(I)V

    return-void
.end method

.method private updateRadialGradient(I)V
    .locals 7

    .line 164
    new-instance v0, Landroid/graphics/RadialGradient;

    int-to-float p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p1, v1

    iget-object p1, p0, Lcom/scwang/smartrefresh/header/material/CircleImageView$OvalShadow;->this$0:Lcom/scwang/smartrefresh/header/material/CircleImageView;

    iget p1, p1, Lcom/scwang/smartrefresh/header/material/CircleImageView;->mShadowRadius:I

    int-to-float v3, p1

    const/high16 p1, 0x3d000000    # 0.03125f

    const/4 v2, 0x0

    filled-new-array {p1, v2}, [I

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/material/CircleImageView$OvalShadow;->mRadialGradient:Landroid/graphics/RadialGradient;

    .line 167
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/material/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/material/CircleImageView$OvalShadow;->this$0:Lcom/scwang/smartrefresh/header/material/CircleImageView;

    .line 157
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 158
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 159
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/material/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 160
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/material/CircleImageView$OvalShadow;->this$0:Lcom/scwang/smartrefresh/header/material/CircleImageView;

    iget v2, v2, Lcom/scwang/smartrefresh/header/material/CircleImageView;->mShadowRadius:I

    int-to-float v2, v2

    sub-float v2, v1, v2

    invoke-virtual {p1, v1, v0, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onResize(FF)V
    .locals 0

    .line 150
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/shapes/OvalShape;->onResize(FF)V

    float-to-int p1, p1

    .line 151
    invoke-direct {p0, p1}, Lcom/scwang/smartrefresh/header/material/CircleImageView$OvalShadow;->updateRadialGradient(I)V

    return-void
.end method
