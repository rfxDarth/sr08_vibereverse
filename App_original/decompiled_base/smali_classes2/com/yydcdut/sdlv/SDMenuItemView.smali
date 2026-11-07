.class Lcom/yydcdut/sdlv/SDMenuItemView;
.super Lcom/yydcdut/sdlv/BaseLayout;
.source "SDMenuItemView.java"


# instance fields
.field protected mImageView:Landroid/widget/ImageView;

.field protected mTextView:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/yydcdut/sdlv/MenuItem;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/yydcdut/sdlv/BaseLayout;-><init>(Landroid/content/Context;Lcom/yydcdut/sdlv/MenuItem;)V

    return-void
.end method

.method private createBG()Landroid/widget/ImageView;
    .locals 2

    .line 67
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yydcdut/sdlv/SDMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 68
    iget-object v1, p0, Lcom/yydcdut/sdlv/SDMenuItemView;->mMenuItem:Lcom/yydcdut/sdlv/MenuItem;

    iget-object v1, v1, Lcom/yydcdut/sdlv/MenuItem;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method private createEmptyView()Landroid/view/View;
    .locals 2

    .line 83
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/yydcdut/sdlv/SDMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private createTextView()Landroid/widget/TextView;
    .locals 2

    .line 74
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yydcdut/sdlv/SDMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 75
    iget-object v1, p0, Lcom/yydcdut/sdlv/SDMenuItemView;->mMenuItem:Lcom/yydcdut/sdlv/MenuItem;

    iget-object v1, v1, Lcom/yydcdut/sdlv/MenuItem;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, p0, Lcom/yydcdut/sdlv/SDMenuItemView;->mMenuItem:Lcom/yydcdut/sdlv/MenuItem;

    iget v1, v1, Lcom/yydcdut/sdlv/MenuItem;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 77
    iget-object v1, p0, Lcom/yydcdut/sdlv/SDMenuItemView;->mMenuItem:Lcom/yydcdut/sdlv/MenuItem;

    iget v1, v1, Lcom/yydcdut/sdlv/MenuItem;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x11

    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    return-object v0
.end method


# virtual methods
.method protected build()V
    .locals 3

    .line 41
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/yydcdut/sdlv/SDMenuItemView;->mMenuItem:Lcom/yydcdut/sdlv/MenuItem;

    iget v1, v1, Lcom/yydcdut/sdlv/MenuItem;->width:I

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 42
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 43
    invoke-virtual {p0, v0}, Lcom/yydcdut/sdlv/SDMenuItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    invoke-direct {p0}, Lcom/yydcdut/sdlv/SDMenuItemView;->createBG()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yydcdut/sdlv/SDMenuItemView;->addView(Landroid/view/View;)V

    .line 46
    iget-object v0, p0, Lcom/yydcdut/sdlv/SDMenuItemView;->mMenuItem:Lcom/yydcdut/sdlv/MenuItem;

    iget-object v0, v0, Lcom/yydcdut/sdlv/MenuItem;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yydcdut/sdlv/SDMenuItemView;->mMenuItem:Lcom/yydcdut/sdlv/MenuItem;

    iget-object v0, v0, Lcom/yydcdut/sdlv/MenuItem;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/SDMenuItemView;->createImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/yydcdut/sdlv/SDMenuItemView;->mImageView:Landroid/widget/ImageView;

    .line 48
    invoke-direct {p0}, Lcom/yydcdut/sdlv/SDMenuItemView;->createTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/yydcdut/sdlv/SDMenuItemView;->mTextView:Landroid/widget/TextView;

    .line 49
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/yydcdut/sdlv/SDMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 50
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 51
    iget-object v2, p0, Lcom/yydcdut/sdlv/SDMenuItemView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 52
    iget-object v2, p0, Lcom/yydcdut/sdlv/SDMenuItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 54
    invoke-virtual {p0, v0}, Lcom/yydcdut/sdlv/SDMenuItemView;->addView(Landroid/view/View;)V

    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/yydcdut/sdlv/SDMenuItemView;->mMenuItem:Lcom/yydcdut/sdlv/MenuItem;

    iget-object v0, v0, Lcom/yydcdut/sdlv/MenuItem;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/SDMenuItemView;->createImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/yydcdut/sdlv/SDMenuItemView;->mImageView:Landroid/widget/ImageView;

    .line 57
    invoke-virtual {p0, v0}, Lcom/yydcdut/sdlv/SDMenuItemView;->addView(Landroid/view/View;)V

    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/yydcdut/sdlv/SDMenuItemView;->mMenuItem:Lcom/yydcdut/sdlv/MenuItem;

    iget-object v0, v0, Lcom/yydcdut/sdlv/MenuItem;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 59
    invoke-direct {p0}, Lcom/yydcdut/sdlv/SDMenuItemView;->createTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/yydcdut/sdlv/SDMenuItemView;->mTextView:Landroid/widget/TextView;

    .line 60
    invoke-virtual {p0, v0}, Lcom/yydcdut/sdlv/SDMenuItemView;->addView(Landroid/view/View;)V

    return-void

    .line 62
    :cond_2
    invoke-direct {p0}, Lcom/yydcdut/sdlv/SDMenuItemView;->createEmptyView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yydcdut/sdlv/SDMenuItemView;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected createImageView()Landroid/widget/ImageView;
    .locals 2

    .line 88
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yydcdut/sdlv/SDMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 89
    iget-object v1, p0, Lcom/yydcdut/sdlv/SDMenuItemView;->mMenuItem:Lcom/yydcdut/sdlv/MenuItem;

    iget-object v1, v1, Lcom/yydcdut/sdlv/MenuItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/yydcdut/sdlv/SDMenuItemView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/yydcdut/sdlv/SDMenuItemView;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method
