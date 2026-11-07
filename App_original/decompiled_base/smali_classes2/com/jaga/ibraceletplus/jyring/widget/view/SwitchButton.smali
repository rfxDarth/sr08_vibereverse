.class public Lcom/jaga/ibraceletplus/jyring/widget/view/SwitchButton;
.super Landroid/widget/Switch;
.source "SwitchButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x41400000    # 12.0f

    .line 22
    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/ABTextUtil;->dip2px(Landroid/content/Context;F)I

    move-result p2

    const/high16 v0, 0x40800000    # 4.0f

    .line 24
    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/ABTextUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600b0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x1060000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 35
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    mul-int/lit8 v0, v0, 0x2

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106000d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    mul-int/lit8 v6, p2, 0x2

    .line 37
    invoke-virtual {v5, v6, v6}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    int-to-float v8, p2

    .line 38
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 39
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 42
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 44
    invoke-virtual {v1, v6, v6}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 45
    invoke-virtual {v1, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 46
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 48
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v0, 0x10100a0

    .line 49
    filled-new-array {v0}, [I

    move-result-object v2

    invoke-virtual {p1, v2, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    .line 50
    new-array v5, v2, [I

    invoke-virtual {p1, v5, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 53
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    mul-int/lit8 p2, p2, 0x4

    .line 54
    invoke-virtual {v1, p2, v6}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 55
    invoke-virtual {v1, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 56
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 59
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 60
    invoke-virtual {v3, p2, v6}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 61
    invoke-virtual {v3, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 62
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 64
    new-instance p2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 65
    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 66
    new-array v0, v2, [I

    invoke-virtual {p2, v0, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/view/SwitchButton;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    invoke-virtual {p0, p2}, Lcom/jaga/ibraceletplus/jyring/widget/view/SwitchButton;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/view/SwitchButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/view/SwitchButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p0, v2}, Lcom/jaga/ibraceletplus/jyring/widget/view/SwitchButton;->setSwitchMinWidth(I)V

    return-void
.end method
