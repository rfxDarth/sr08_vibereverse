.class Lcom/yydcdut/sdlv/ItemBackGroundLayout;
.super Landroid/view/ViewGroup;
.source "ItemBackGroundLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yydcdut/sdlv/ItemBackGroundLayout$OnMenuItemClickListener;
    }
.end annotation


# instance fields
.field private mDirection:I

.field private mMarginLeft:I

.field private mMarginRight:I

.field private mOnMenuItemClickListener:Lcom/yydcdut/sdlv/ItemBackGroundLayout$OnMenuItemClickListener;

.field private mViewPositionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/yydcdut/sdlv/ItemBackGroundLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcom/yydcdut/sdlv/ItemBackGroundLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->mMarginLeft:I

    .line 32
    iput p1, p0, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->mMarginRight:I

    const/4 p1, -0x1

    .line 35
    iput p1, p0, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->mDirection:I

    .line 49
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->mViewPositionMap:Ljava/util/Map;

    const/16 p1, 0x8

    .line 50
    invoke-virtual {p0, p1}, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected addMenuItem(Lcom/yydcdut/sdlv/MenuItem;I)V
    .locals 3

    .line 54
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->getChildCount()I

    move-result v0

    .line 55
    new-instance v1, Lcom/yydcdut/sdlv/SDMenuItemView;

    invoke-virtual {p0}, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/yydcdut/sdlv/SDMenuItemView;-><init>(Landroid/content/Context;Lcom/yydcdut/sdlv/MenuItem;)V

    .line 56
    invoke-virtual {v1}, Lcom/yydcdut/sdlv/BaseLayout;->build()V

    .line 57
    invoke-virtual {p0, v1, v0}, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->addView(Landroid/view/View;I)V

    .line 58
    iget-object p1, p0, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->mViewPositionMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {v1, p0}, Lcom/yydcdut/sdlv/BaseLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected hasMenuItemViews()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->mViewPositionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->mViewPositionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 106
    iget-object v1, p0, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->mOnMenuItemClickListener:Lcom/yydcdut/sdlv/ItemBackGroundLayout$OnMenuItemClickListener;

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->mDirection:I

    invoke-interface {v1, v0, v2, p1}, Lcom/yydcdut/sdlv/ItemBackGroundLayout$OnMenuItemClickListener;->onClick(IILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 83
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    .line 84
    iput p2, p0, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->mMarginLeft:I

    .line 85
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->getMeasuredWidth()I

    move-result p4

    iput p4, p0, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->mMarginRight:I

    :goto_0
    if-ge p2, p1, :cond_1

    .line 87
    invoke-virtual {p0, p2}, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/yydcdut/sdlv/BaseLayout;

    .line 88
    iget-object v0, p4, Lcom/yydcdut/sdlv/BaseLayout;->mMenuItem:Lcom/yydcdut/sdlv/MenuItem;

    .line 89
    iget v1, v0, Lcom/yydcdut/sdlv/MenuItem;->direction:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 90
    iget v1, p0, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->mMarginLeft:I

    iget v2, v0, Lcom/yydcdut/sdlv/MenuItem;->width:I

    iget v3, p0, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->mMarginLeft:I

    add-int/2addr v2, v3

    invoke-virtual {p4, v1, p3, v2, p5}, Lcom/yydcdut/sdlv/BaseLayout;->layout(IIII)V

    .line 91
    iget p4, p0, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->mMarginLeft:I

    iget v0, v0, Lcom/yydcdut/sdlv/MenuItem;->width:I

    add-int/2addr p4, v0

    iput p4, p0, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->mMarginLeft:I

    goto :goto_1

    .line 93
    :cond_0
    iget v1, p0, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->mMarginRight:I

    iget v2, v0, Lcom/yydcdut/sdlv/MenuItem;->width:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->mMarginRight:I

    invoke-virtual {p4, v1, p3, v2, p5}, Lcom/yydcdut/sdlv/BaseLayout;->layout(IIII)V

    .line 94
    iget p4, p0, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->mMarginRight:I

    iget v0, v0, Lcom/yydcdut/sdlv/MenuItem;->width:I

    sub-int/2addr p4, v0

    iput p4, p0, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->mMarginRight:I

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 72
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 73
    invoke-virtual {p0}, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 75
    invoke-virtual {p0, v0}, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yydcdut/sdlv/BaseLayout;

    .line 76
    iget-object v2, v1, Lcom/yydcdut/sdlv/BaseLayout;->mMenuItem:Lcom/yydcdut/sdlv/MenuItem;

    .line 77
    iget v2, v2, Lcom/yydcdut/sdlv/MenuItem;->width:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0, v1, v2, p2}, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->measureChild(Landroid/view/View;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDirection(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->mDirection:I

    return-void
.end method

.method public setOnMenuItemClickListener(Lcom/yydcdut/sdlv/ItemBackGroundLayout$OnMenuItemClickListener;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/yydcdut/sdlv/ItemBackGroundLayout;->mOnMenuItemClickListener:Lcom/yydcdut/sdlv/ItemBackGroundLayout$OnMenuItemClickListener;

    return-void
.end method
