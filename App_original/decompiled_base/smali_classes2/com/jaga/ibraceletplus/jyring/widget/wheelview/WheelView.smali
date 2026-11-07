.class public Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;
.super Landroid/widget/ScrollView;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$OnWheelViewListener;
    }
.end annotation


# static fields
.field public static final OFF_SET_DEFAULT:I = 0x1

.field private static final SCROLL_DIRECTION_DOWN:I = 0x1

.field private static final SCROLL_DIRECTION_UP:I = 0x0

.field public static final TAG:Ljava/lang/String; = "WheelView"


# instance fields
.field private context:Landroid/content/Context;

.field displayItemCount:I

.field initialY:I

.field itemHeight:I

.field items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field newCheck:I

.field offset:I

.field private onWheelViewListener:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$OnWheelViewListener;

.field paint:Landroid/graphics/Paint;

.field private scrollDirection:I

.field scrollerTask:Ljava/lang/Runnable;

.field selectedAreaBorder:[I

.field selectedIndex:I

.field viewWidth:I

.field private views:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 84
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->offset:I

    .line 96
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->selectedIndex:I

    const/16 v0, 0x32

    .line 163
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->newCheck:I

    const/4 v0, 0x0

    .line 181
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->itemHeight:I

    const/4 v0, -0x1

    .line 303
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->scrollDirection:I

    .line 45
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 84
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->offset:I

    .line 96
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->selectedIndex:I

    const/16 p2, 0x32

    .line 163
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->newCheck:I

    const/4 p2, 0x0

    .line 181
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->itemHeight:I

    const/4 p2, -0x1

    .line 303
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->scrollDirection:I

    .line 50
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 84
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->offset:I

    .line 96
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->selectedIndex:I

    const/16 p2, 0x32

    .line 163
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->newCheck:I

    const/4 p2, 0x0

    .line 181
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->itemHeight:I

    const/4 p2, -0x1

    .line 303
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->scrollDirection:I

    .line 55
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->onSeletedCallBack()V

    return-void
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;)[I
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->obtainSelectedAreaBorder()[I

    move-result-object p0

    return-object p0
.end method

.method private createView(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 5

    .line 184
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 185
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    .line 186
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v1, 0x2

    const/high16 v2, 0x41900000    # 18.0f

    .line 187
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 188
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x11

    .line 189
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 190
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->context:Landroid/content/Context;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p1, v1}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/ABTextUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    .line 191
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 192
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->itemHeight:I

    if-nez p1, :cond_0

    .line 193
    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/ABViewUtil;->getViewMeasuredHeight(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->itemHeight:I

    .line 194
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->views:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->itemHeight:I

    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->displayItemCount:I

    mul-int v2, v2, v4

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 196
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget p1, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->itemHeight:I

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->displayItemCount:I

    mul-int v2, v2, v3

    invoke-direct {v1, p1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-object v0
.end method

.method private getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->items:Ljava/util/List;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 100
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->context:Landroid/content/Context;

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->setVerticalScrollBarEnabled(Z)V

    .line 107
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->views:Landroid/widget/LinearLayout;

    const/4 p1, 0x1

    .line 108
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 109
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->views:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->addView(Landroid/view/View;)V

    .line 111
    new-instance p1, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;

    invoke-direct {p1, p0}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;-><init>(Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;)V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->scrollerTask:Ljava/lang/Runnable;

    return-void
.end method

.method private initData()V
    .locals 3

    .line 172
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->offset:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->displayItemCount:I

    .line 174
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 175
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->views:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->createView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 178
    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->refreshItemView(I)V

    return-void
.end method

.method private obtainSelectedAreaBorder()[I
    .locals 5

    .line 294
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->selectedAreaBorder:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 295
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->selectedAreaBorder:[I

    .line 296
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->itemHeight:I

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->offset:I

    mul-int v3, v1, v2

    const/4 v4, 0x0

    aput v3, v0, v4

    const/4 v3, 0x1

    add-int/2addr v2, v3

    mul-int v1, v1, v2

    .line 297
    aput v1, v0, v3

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->selectedAreaBorder:[I

    return-object v0
.end method

.method private onSeletedCallBack()V
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->onWheelViewListener:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$OnWheelViewListener;

    if-eqz v0, :cond_0

    .line 363
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->selectedIndex:I

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$OnWheelViewListener;->onSelected(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private refreshItemView(I)V
    .locals 4

    .line 237
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->itemHeight:I

    div-int v1, p1, v0

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->offset:I

    add-int/2addr v1, v2

    .line 238
    rem-int v3, p1, v0

    .line 239
    div-int/2addr p1, v0

    if-nez v3, :cond_0

    add-int v1, p1, v2

    goto :goto_0

    .line 244
    :cond_0
    div-int/lit8 v0, v0, 0x2

    if-le v3, v0, :cond_1

    add-int/2addr p1, v2

    add-int/lit8 v1, p1, 0x1

    .line 274
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->views:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_4

    .line 276
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->views:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    if-ne v1, v0, :cond_3

    .line 281
    const-string v3, "#0288ce"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 283
    :cond_3
    const-string v3, "#bbbbbb"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public fling(I)V
    .locals 0

    .line 391
    div-int/lit8 p1, p1, 0x3

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    return-void
.end method

.method public getOffset()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->offset:I

    return v0
.end method

.method public getOnWheelViewListener()Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$OnWheelViewListener;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->onWheelViewListener:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$OnWheelViewListener;

    return-object v0
.end method

.method public getSeletedIndex()I
    .locals 2

    .line 385
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->selectedIndex:I

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->offset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSeletedItem()Ljava/lang/String;
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->items:Ljava/util/List;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->selectedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 203
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 222
    invoke-direct {p0, p2}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->refreshItemView(I)V

    if-le p2, p4, :cond_0

    const/4 p1, 0x1

    .line 226
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->scrollDirection:I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 229
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->scrollDirection:I

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 353
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    .line 354
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->viewWidth:I

    const/4 p1, 0x0

    .line 355
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 396
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->startScrollerTask()V

    .line 400
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 313
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->viewWidth:I

    if-nez p1, :cond_0

    .line 314
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->viewWidth:I

    .line 317
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->paint:Landroid/graphics/Paint;

    if-nez p1, :cond_1

    .line 318
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->paint:Landroid/graphics/Paint;

    .line 319
    const-string v0, "#83cde6"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 320
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->context:Landroid/content/Context;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/ABTextUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 323
    :cond_1
    new-instance p1, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$2;

    invoke-direct {p1, p0}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$2;-><init>(Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;)V

    .line 347
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->items:Ljava/util/List;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->items:Ljava/util/List;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 73
    :goto_0
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->offset:I

    if-ge v0, v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->items:Ljava/util/List;

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 75
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->items:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_1
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->initData()V

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->offset:I

    return-void
.end method

.method public setOnWheelViewListener(Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$OnWheelViewListener;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->onWheelViewListener:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$OnWheelViewListener;

    return-void
.end method

.method public setSeletion(I)V
    .locals 1

    .line 370
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->offset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->selectedIndex:I

    .line 371
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$3;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$3;-><init>(Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;I)V

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startScrollerTask()V
    .locals 3

    .line 167
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->initialY:I

    .line 168
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->scrollerTask:Ljava/lang/Runnable;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->newCheck:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
