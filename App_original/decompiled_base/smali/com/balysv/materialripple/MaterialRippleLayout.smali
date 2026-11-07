.class public Lcom/balysv/materialripple/MaterialRippleLayout;
.super Landroid/widget/FrameLayout;
.source "MaterialRippleLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;,
        Lcom/balysv/materialripple/MaterialRippleLayout$PressedEvent;,
        Lcom/balysv/materialripple/MaterialRippleLayout$PerformClickEvent;
    }
.end annotation


# static fields
.field private static final DEFAULT_ALPHA:F = 0.2f

.field private static final DEFAULT_BACKGROUND:I = 0x0

.field private static final DEFAULT_COLOR:I = -0x1000000

.field private static final DEFAULT_DELAY_CLICK:Z = true

.field private static final DEFAULT_DIAMETER_DP:F = 35.0f

.field private static final DEFAULT_DURATION:I = 0x15e

.field private static final DEFAULT_FADE_DURATION:I = 0x4b

.field private static final DEFAULT_HOVER:Z = true

.field private static final DEFAULT_PERSISTENT:Z = false

.field private static final DEFAULT_RIPPLE_OVERLAY:Z = false

.field private static final DEFAULT_ROUNDED_CORNERS:I = 0x0

.field private static final DEFAULT_SEARCH_ADAPTER:Z = false

.field private static final FADE_EXTRA_DELAY:I = 0x32

.field private static final HOVER_DURATION:J = 0x9c4L


# instance fields
.field private final bounds:Landroid/graphics/Rect;

.field private childView:Landroid/view/View;

.field private circleAlphaProperty:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/balysv/materialripple/MaterialRippleLayout;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private currentCoords:Landroid/graphics/Point;

.field private eventCancelled:Z

.field private gestureDetector:Landroid/view/GestureDetector;

.field private hasPerformedLongPress:Z

.field private hoverAnimator:Landroid/animation/ObjectAnimator;

.field private layerType:I

.field private longClickListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private final paint:Landroid/graphics/Paint;

.field private parentAdapter:Landroid/widget/AdapterView;

.field private pendingClickEvent:Lcom/balysv/materialripple/MaterialRippleLayout$PerformClickEvent;

.field private pendingPressEvent:Lcom/balysv/materialripple/MaterialRippleLayout$PressedEvent;

.field private positionInAdapter:I

.field private prepressed:Z

.field private previousCoords:Landroid/graphics/Point;

.field private radius:F

.field private radiusProperty:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/balysv/materialripple/MaterialRippleLayout;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private rippleAlpha:I

.field private rippleAnimator:Landroid/animation/AnimatorSet;

.field private rippleBackground:Landroid/graphics/drawable/Drawable;

.field private rippleColor:I

.field private rippleDelayClick:Z

.field private rippleDiameter:I

.field private rippleDuration:I

.field private rippleFadeDuration:I

.field private rippleHover:Z

.field private rippleInAdapter:Z

.field private rippleOverlay:Z

.field private ripplePersistent:Z

.field private rippleRoundedCorners:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0, p1, v0, v1}, Lcom/balysv/materialripple/MaterialRippleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, p2, v0}, Lcom/balysv/materialripple/MaterialRippleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 122
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->paint:Landroid/graphics/Paint;

    .line 73
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->bounds:Landroid/graphics/Rect;

    .line 96
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    .line 97
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->previousCoords:Landroid/graphics/Point;

    .line 290
    new-instance v1, Lcom/balysv/materialripple/MaterialRippleLayout$2;

    invoke-direct {v1, p0}, Lcom/balysv/materialripple/MaterialRippleLayout$2;-><init>(Lcom/balysv/materialripple/MaterialRippleLayout;)V

    iput-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->longClickListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 501
    new-instance v1, Lcom/balysv/materialripple/MaterialRippleLayout$4;

    const-class v2, Ljava/lang/Float;

    const-string v3, "radius"

    invoke-direct {v1, p0, v2, v3}, Lcom/balysv/materialripple/MaterialRippleLayout$4;-><init>(Lcom/balysv/materialripple/MaterialRippleLayout;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->radiusProperty:Landroid/util/Property;

    .line 524
    new-instance v1, Lcom/balysv/materialripple/MaterialRippleLayout$5;

    const-class v2, Ljava/lang/Integer;

    const-string v3, "rippleAlpha"

    invoke-direct {v1, p0, v2, v3}, Lcom/balysv/materialripple/MaterialRippleLayout$5;-><init>(Lcom/balysv/materialripple/MaterialRippleLayout;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->circleAlphaProperty:Landroid/util/Property;

    const/4 v1, 0x0

    .line 124
    invoke-virtual {p0, v1}, Lcom/balysv/materialripple/MaterialRippleLayout;->setWillNotDraw(Z)V

    .line 125
    new-instance v2, Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->longClickListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v2, p1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->gestureDetector:Landroid/view/GestureDetector;

    .line 127
    sget-object v2, Lcom/balysv/materialripple/R$styleable;->MaterialRippleLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 128
    sget p2, Lcom/balysv/materialripple/R$styleable;->MaterialRippleLayout_mrl_rippleColor:I

    const/high16 v2, -0x1000000

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleColor:I

    .line 129
    sget p2, Lcom/balysv/materialripple/R$styleable;->MaterialRippleLayout_mrl_rippleDimension:I

    .line 131
    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x420c0000    # 35.0f

    invoke-static {v2, v3}, Lcom/balysv/materialripple/MaterialRippleLayout;->dpToPx(Landroid/content/res/Resources;F)F

    move-result v2

    float-to-int v2, v2

    .line 129
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleDiameter:I

    .line 133
    sget p2, Lcom/balysv/materialripple/R$styleable;->MaterialRippleLayout_mrl_rippleOverlay:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleOverlay:Z

    .line 134
    sget p2, Lcom/balysv/materialripple/R$styleable;->MaterialRippleLayout_mrl_rippleHover:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleHover:Z

    .line 135
    sget p2, Lcom/balysv/materialripple/R$styleable;->MaterialRippleLayout_mrl_rippleDuration:I

    const/16 v2, 0x15e

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleDuration:I

    .line 136
    sget p2, Lcom/balysv/materialripple/R$styleable;->MaterialRippleLayout_mrl_rippleAlpha:I

    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float p2, p2, v2

    float-to-int p2, p2

    iput p2, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleAlpha:I

    .line 137
    sget p2, Lcom/balysv/materialripple/R$styleable;->MaterialRippleLayout_mrl_rippleDelayClick:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleDelayClick:Z

    .line 138
    sget p2, Lcom/balysv/materialripple/R$styleable;->MaterialRippleLayout_mrl_rippleFadeDuration:I

    const/16 v0, 0x4b

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleFadeDuration:I

    .line 139
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    sget v0, Lcom/balysv/materialripple/R$styleable;->MaterialRippleLayout_mrl_rippleBackground:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p2, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleBackground:Landroid/graphics/drawable/Drawable;

    .line 140
    sget p2, Lcom/balysv/materialripple/R$styleable;->MaterialRippleLayout_mrl_ripplePersistent:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->ripplePersistent:Z

    .line 141
    sget p2, Lcom/balysv/materialripple/R$styleable;->MaterialRippleLayout_mrl_rippleInAdapter:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleInAdapter:Z

    .line 142
    sget p2, Lcom/balysv/materialripple/R$styleable;->MaterialRippleLayout_mrl_rippleRoundedCorners:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleRoundedCorners:F

    .line 144
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    iget p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleColor:I

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    iget p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleAlpha:I

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 149
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->enableClipPathSupportIfNecessary()V

    return-void
.end method

.method static synthetic access$100(Lcom/balysv/materialripple/MaterialRippleLayout;)Landroid/view/View;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->childView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/balysv/materialripple/MaterialRippleLayout;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleInAdapter:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/balysv/materialripple/MaterialRippleLayout;)Landroid/widget/AdapterView;
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->findParentAdapterView()Landroid/widget/AdapterView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1202(Lcom/balysv/materialripple/MaterialRippleLayout;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->prepressed:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/balysv/materialripple/MaterialRippleLayout;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->startHover()V

    return-void
.end method

.method static synthetic access$200(Lcom/balysv/materialripple/MaterialRippleLayout;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->hasPerformedLongPress:Z

    return p0
.end method

.method static synthetic access$202(Lcom/balysv/materialripple/MaterialRippleLayout;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->hasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/balysv/materialripple/MaterialRippleLayout;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleHover:Z

    return p0
.end method

.method static synthetic access$400(Lcom/balysv/materialripple/MaterialRippleLayout;Ljava/lang/Runnable;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/balysv/materialripple/MaterialRippleLayout;->startRipple(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/balysv/materialripple/MaterialRippleLayout;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->cancelPressedEvent()V

    return-void
.end method

.method static synthetic access$600(Lcom/balysv/materialripple/MaterialRippleLayout;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->ripplePersistent:Z

    return p0
.end method

.method static synthetic access$700(Lcom/balysv/materialripple/MaterialRippleLayout;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleAlpha:I

    return p0
.end method

.method static synthetic access$800(Lcom/balysv/materialripple/MaterialRippleLayout;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleDelayClick:Z

    return p0
.end method

.method static synthetic access$900(Lcom/balysv/materialripple/MaterialRippleLayout;)F
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->getRadius()F

    move-result p0

    return p0
.end method

.method private adapterPositionChanged()Z
    .locals 3

    .line 422
    iget-boolean v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleInAdapter:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 423
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->findParentAdapterView()Landroid/widget/AdapterView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 424
    iget v2, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->positionInAdapter:I

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 425
    :goto_0
    iput v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->positionInAdapter:I

    if-eqz v2, :cond_1

    .line 427
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->cancelPressedEvent()V

    .line 428
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->cancelAnimations()V

    .line 429
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->childView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    const/4 v0, 0x0

    .line 430
    invoke-virtual {p0, v0}, Lcom/balysv/materialripple/MaterialRippleLayout;->setRadius(F)V

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method private cancelAnimations()V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 364
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->hoverAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 368
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method private cancelPressedEvent()V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->pendingPressEvent:Lcom/balysv/materialripple/MaterialRippleLayout$PressedEvent;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0, v0}, Lcom/balysv/materialripple/MaterialRippleLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 285
    iput-boolean v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->prepressed:Z

    :cond_0
    return-void
.end method

.method static dpToPx(Landroid/content/res/Resources;F)F
    .locals 1

    const/4 v0, 0x1

    .line 684
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private enableClipPathSupportIfNecessary()V
    .locals 0

    return-void
.end method

.method private findClickableViewInChild(Landroid/view/View;II)Z
    .locals 5

    .line 438
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 439
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 440
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 441
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 442
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 443
    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 445
    invoke-virtual {v3, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 447
    iget p1, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p1

    iget p1, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p1

    invoke-direct {p0, v2, p2, p3}, Lcom/balysv/materialripple/MaterialRippleLayout;->findClickableViewInChild(Landroid/view/View;II)Z

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 450
    :cond_1
    iget-object p2, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->childView:Landroid/view/View;

    if-eq p1, p2, :cond_4

    .line 451
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isLongClickable()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v1

    .line 454
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result p1

    return p1
.end method

.method private findParentAdapterView()Landroid/widget/AdapterView;
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->parentAdapter:Landroid/widget/AdapterView;

    if-eqz v0, :cond_0

    return-object v0

    .line 400
    :cond_0
    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 402
    :goto_0
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_1

    .line 403
    check-cast v0, Landroid/widget/AdapterView;

    iput-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->parentAdapter:Landroid/widget/AdapterView;

    return-object v0

    .line 407
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 409
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not find a parent AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getEndRadius()F
    .locals 6

    .line 373
    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->getWidth()I

    move-result v0

    .line 374
    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->getHeight()I

    move-result v1

    .line 376
    div-int/lit8 v2, v0, 0x2

    .line 377
    div-int/lit8 v3, v1, 0x2

    .line 379
    iget-object v4, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-le v2, v4, :cond_0

    iget-object v2, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    :goto_0
    int-to-float v0, v0

    .line 380
    iget-object v2, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-le v3, v2, :cond_1

    iget-object v2, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    :goto_1
    int-to-float v1, v1

    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 382
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    float-to-double v0, v1

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x3f99999a    # 1.2f

    mul-float v0, v0, v1

    return v0
.end method

.method private getRadius()F
    .locals 1

    .line 515
    iget v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->radius:F

    return v0
.end method

.method private isInScrollingContainer()Z
    .locals 2

    .line 386
    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 387
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 388
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 391
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static on(Landroid/view/View;)Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;
    .locals 1

    .line 110
    new-instance v0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;

    invoke-direct {v0, p0}, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method private setPositionInAdapter()V
    .locals 1

    .line 416
    iget-boolean v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleInAdapter:Z

    if-eqz v0, :cond_0

    .line 417
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->findParentAdapterView()Landroid/widget/AdapterView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->positionInAdapter:I

    :cond_0
    return-void
.end method

.method private startHover()V
    .locals 6

    .line 309
    iget-boolean v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->eventCancelled:Z

    if-eqz v0, :cond_0

    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->hoverAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 314
    :cond_1
    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->getWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->getHeight()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3ff3333340000000L    # 1.2000000476837158

    mul-double v0, v0, v2

    double-to-float v0, v0

    .line 315
    iget-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->radiusProperty:Landroid/util/Property;

    iget v2, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleDiameter:I

    int-to-float v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v2, 0x1

    aput v0, v3, v2

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x9c4

    .line 316
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->hoverAnimator:Landroid/animation/ObjectAnimator;

    .line 317
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 318
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->hoverAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private startRipple(Ljava/lang/Runnable;)V
    .locals 7

    .line 322
    iget-boolean v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->eventCancelled:Z

    if-eqz v0, :cond_0

    return-void

    .line 324
    :cond_0
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->getEndRadius()F

    move-result v0

    .line 326
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->cancelAnimations()V

    .line 328
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleAnimator:Landroid/animation/AnimatorSet;

    .line 329
    new-instance v2, Lcom/balysv/materialripple/MaterialRippleLayout$3;

    invoke-direct {v2, p0, p1}, Lcom/balysv/materialripple/MaterialRippleLayout$3;-><init>(Lcom/balysv/materialripple/MaterialRippleLayout;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 342
    iget-object p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->radiusProperty:Landroid/util/Property;

    iget v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->radius:F

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    aput v0, v3, v1

    invoke-static {p0, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 343
    iget v3, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleDuration:I

    int-to-long v5, v3

    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 344
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 345
    iget-object v3, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->circleAlphaProperty:Landroid/util/Property;

    iget v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleAlpha:I

    filled-new-array {v5, v4}, [I

    move-result-object v5

    invoke-static {p0, v3, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 346
    iget v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleFadeDuration:I

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 347
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 348
    iget v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleDuration:I

    iget v6, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleFadeDuration:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x32

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 350
    iget-boolean v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->ripplePersistent:Z

    if-eqz v5, :cond_1

    .line 351
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    .line 352
    :cond_1
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->getRadius()F

    move-result v5

    cmpl-float v0, v5, v0

    if-lez v0, :cond_2

    const-wide/16 v0, 0x0

    .line 353
    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 354
    iget-object p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    .line 356
    :cond_2
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleAnimator:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object p1, v2, v4

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 358
    :goto_0
    iget-object p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 160
    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 164
    iput-object p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->childView:Landroid/view/View;

    .line 165
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 161
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "MaterialRippleLayout can host only one child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 474
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->adapterPositionChanged()Z

    move-result v0

    .line 475
    iget-boolean v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleOverlay:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    .line 477
    iget-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 479
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    if-nez v0, :cond_2

    .line 481
    iget v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleRoundedCorners:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 482
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 483
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 484
    iget v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleRoundedCorners:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 485
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->radius:F

    iget-object v3, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    return-void

    :cond_3
    if-nez v0, :cond_4

    .line 491
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 492
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->radius:F

    iget-object v3, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 494
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getChildView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">()TT;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->childView:Landroid/view/View;

    return-object v0
.end method

.method public getRippleAlpha()I
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public isInEditMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->childView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v0, v1, p1}, Lcom/balysv/materialripple/MaterialRippleLayout;->findClickableViewInChild(Landroid/view/View;II)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 459
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 460
    iget-object p3, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->bounds:Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 461
    iget-object p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleBackground:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 191
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 193
    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->childView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->previousCoords:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 199
    iget-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_12

    .line 203
    iget-boolean v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->hasPerformedLongPress:Z

    if-eqz v1, :cond_2

    goto/16 :goto_3

    .line 206
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_10

    const/4 v4, 0x0

    if-eq v1, v2, :cond_b

    const/4 v5, 0x2

    if-eq v1, v5, :cond_7

    const/4 v0, 0x3

    if-eq v1, v0, :cond_3

    goto/16 :goto_3

    .line 244
    :cond_3
    iget-boolean v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleInAdapter:Z

    if-eqz v0, :cond_4

    .line 246
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->previousCoords:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->previousCoords:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Point;->set(II)V

    .line 247
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->previousCoords:Landroid/graphics/Point;

    .line 249
    :cond_4
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->childView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 250
    iget-boolean p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleHover:Z

    if-eqz p1, :cond_5

    .line 251
    iget-boolean p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->prepressed:Z

    if-nez p1, :cond_6

    .line 252
    invoke-direct {p0, v4}, Lcom/balysv/materialripple/MaterialRippleLayout;->startRipple(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 255
    :cond_5
    iget-object p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->childView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 257
    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->cancelPressedEvent()V

    goto/16 :goto_3

    .line 260
    :cond_7
    iget-boolean v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleHover:Z

    if-eqz v1, :cond_9

    if-eqz v0, :cond_8

    .line 261
    iget-boolean v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->eventCancelled:Z

    if-nez v1, :cond_8

    .line 262
    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->invalidate()V

    goto :goto_1

    :cond_8
    if-nez v0, :cond_9

    .line 264
    invoke-direct {p0, v4}, Lcom/balysv/materialripple/MaterialRippleLayout;->startRipple(Ljava/lang/Runnable;)V

    :cond_9
    :goto_1
    if-nez v0, :cond_12

    .line 269
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->cancelPressedEvent()V

    .line 270
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->hoverAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_a

    .line 271
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 273
    :cond_a
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->childView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 274
    iput-boolean v2, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->eventCancelled:Z

    goto :goto_3

    .line 209
    :cond_b
    new-instance p1, Lcom/balysv/materialripple/MaterialRippleLayout$PerformClickEvent;

    invoke-direct {p1, p0, v4}, Lcom/balysv/materialripple/MaterialRippleLayout$PerformClickEvent;-><init>(Lcom/balysv/materialripple/MaterialRippleLayout;Lcom/balysv/materialripple/MaterialRippleLayout$1;)V

    iput-object p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->pendingClickEvent:Lcom/balysv/materialripple/MaterialRippleLayout$PerformClickEvent;

    .line 211
    iget-boolean p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->prepressed:Z

    if-eqz p1, :cond_c

    .line 212
    iget-object p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->childView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 213
    new-instance p1, Lcom/balysv/materialripple/MaterialRippleLayout$1;

    invoke-direct {p1, p0}, Lcom/balysv/materialripple/MaterialRippleLayout$1;-><init>(Lcom/balysv/materialripple/MaterialRippleLayout;)V

    .line 218
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v3, v1

    .line 213
    invoke-virtual {p0, p1, v3, v4}, Lcom/balysv/materialripple/MaterialRippleLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    if-eqz v0, :cond_d

    .line 222
    iget-object p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->pendingClickEvent:Lcom/balysv/materialripple/MaterialRippleLayout$PerformClickEvent;

    invoke-direct {p0, p1}, Lcom/balysv/materialripple/MaterialRippleLayout;->startRipple(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 223
    :cond_d
    iget-boolean p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleHover:Z

    if-nez p1, :cond_e

    const/4 p1, 0x0

    .line 224
    invoke-virtual {p0, p1}, Lcom/balysv/materialripple/MaterialRippleLayout;->setRadius(F)V

    .line 226
    :cond_e
    :goto_2
    iget-boolean p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleDelayClick:Z

    if-nez p1, :cond_f

    if-eqz v0, :cond_f

    .line 227
    iget-object p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->pendingClickEvent:Lcom/balysv/materialripple/MaterialRippleLayout$PerformClickEvent;

    invoke-virtual {p1}, Lcom/balysv/materialripple/MaterialRippleLayout$PerformClickEvent;->run()V

    .line 229
    :cond_f
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->cancelPressedEvent()V

    goto :goto_3

    .line 232
    :cond_10
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->setPositionInAdapter()V

    .line 233
    iput-boolean v3, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->eventCancelled:Z

    .line 234
    new-instance v0, Lcom/balysv/materialripple/MaterialRippleLayout$PressedEvent;

    invoke-direct {v0, p0, p1}, Lcom/balysv/materialripple/MaterialRippleLayout$PressedEvent;-><init>(Lcom/balysv/materialripple/MaterialRippleLayout;Landroid/view/MotionEvent;)V

    iput-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->pendingPressEvent:Lcom/balysv/materialripple/MaterialRippleLayout$PressedEvent;

    .line 235
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->isInScrollingContainer()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 236
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->cancelPressedEvent()V

    .line 237
    iput-boolean v2, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->prepressed:Z

    .line 238
    iget-object p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->pendingPressEvent:Lcom/balysv/materialripple/MaterialRippleLayout$PressedEvent;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/balysv/materialripple/MaterialRippleLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 240
    :cond_11
    iget-object p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->pendingPressEvent:Lcom/balysv/materialripple/MaterialRippleLayout$PressedEvent;

    invoke-virtual {p1}, Lcom/balysv/materialripple/MaterialRippleLayout$PressedEvent;->run()V

    :cond_12
    :goto_3
    return v2

    :cond_13
    :goto_4
    return v0
.end method

.method public performRipple()V
    .locals 3

    .line 606
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    const/4 v0, 0x0

    .line 607
    invoke-direct {p0, v0}, Lcom/balysv/materialripple/MaterialRippleLayout;->startRipple(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performRipple(Landroid/graphics/Point;)V
    .locals 2

    .line 611
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->currentCoords:Landroid/graphics/Point;

    const/4 p1, 0x0

    .line 612
    invoke-direct {p0, p1}, Lcom/balysv/materialripple/MaterialRippleLayout;->startRipple(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDefaultRippleAlpha(I)V
    .locals 1

    .line 600
    iput p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleAlpha:I

    .line 601
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 602
    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->invalidate()V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->childView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 171
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "MaterialRippleLayout must have a child view to handle clicks"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->childView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    .line 179
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "MaterialRippleLayout must have a child view to handle clicks"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRadius(F)V
    .locals 0

    .line 520
    iput p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->radius:F

    .line 521
    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->invalidate()V

    return-void
.end method

.method public setRippleAlpha(Ljava/lang/Integer;)V
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 543
    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->invalidate()V

    return-void
.end method

.method public setRippleBackground(I)V
    .locals 1

    .line 569
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleBackground:Landroid/graphics/drawable/Drawable;

    .line 570
    iget-object p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 571
    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->invalidate()V

    return-void
.end method

.method public setRippleColor(I)V
    .locals 1

    .line 550
    iput p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleColor:I

    .line 551
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 552
    iget-object p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->paint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 553
    invoke-virtual {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->invalidate()V

    return-void
.end method

.method public setRippleDelayClick(Z)V
    .locals 0

    .line 579
    iput-boolean p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleDelayClick:Z

    return-void
.end method

.method public setRippleDiameter(I)V
    .locals 0

    .line 561
    iput p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleDiameter:I

    return-void
.end method

.method public setRippleDuration(I)V
    .locals 0

    .line 565
    iput p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleDuration:I

    return-void
.end method

.method public setRippleFadeDuration(I)V
    .locals 0

    .line 583
    iput p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleFadeDuration:I

    return-void
.end method

.method public setRippleHover(Z)V
    .locals 0

    .line 575
    iput-boolean p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleHover:Z

    return-void
.end method

.method public setRippleInAdapter(Z)V
    .locals 0

    .line 591
    iput-boolean p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleInAdapter:Z

    return-void
.end method

.method public setRippleOverlay(Z)V
    .locals 0

    .line 557
    iput-boolean p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleOverlay:Z

    return-void
.end method

.method public setRipplePersistent(Z)V
    .locals 0

    .line 587
    iput-boolean p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->ripplePersistent:Z

    return-void
.end method

.method public setRippleRoundedCorners(I)V
    .locals 0

    int-to-float p1, p1

    .line 595
    iput p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout;->rippleRoundedCorners:F

    .line 596
    invoke-direct {p0}, Lcom/balysv/materialripple/MaterialRippleLayout;->enableClipPathSupportIfNecessary()V

    return-void
.end method
