.class public abstract Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;
.super Landroid/view/View;
.source "WheelPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;,
        Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Listener;,
        Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$OnWheelChangeListener;,
        Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$OnItemSelectedListener;,
        Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$BaseAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/view/View;"
    }
.end annotation


# static fields
.field public static final ALIGN_CENTER:I = 0x0

.field public static final ALIGN_LEFT:I = 0x1

.field public static final ALIGN_RIGHT:I = 0x2

.field protected static final FORMAT:Ljava/lang/String; = "%1$02d"

.field public static final MAX_ANGLE:I = 0x5a

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SCROLLING:I = 0x2


# instance fields
.field protected adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final camera:Landroid/graphics/Camera;

.field private currentItemPosition:I

.field private customLocale:Ljava/util/Locale;

.field protected dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

.field protected defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private downPointY:I

.field private drawnCenterX:I

.field private drawnCenterY:I

.field private final handler:Landroid/os/Handler;

.field private hasAtmospheric:Z

.field private hasCurtain:Z

.field private hasIndicator:Z

.field private hasSameWidth:Z

.field private isClick:Z

.field private isCurved:Z

.field private isCyclic:Z

.field private isForceFinishScroll:Z

.field private lastPointY:I

.field protected lastScrollPosition:I

.field protected listener:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Listener<",
            "Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;",
            "TV;>;"
        }
    .end annotation
.end field

.field private mCurtainColor:I

.field private mDrawnItemCount:I

.field private mHalfDrawnItemCount:I

.field private mHalfItemHeight:I

.field private mHalfWheelHeight:I

.field private mIndicatorColor:I

.field private mIndicatorSize:I

.field private mItemAlign:I

.field private mItemHeight:I

.field private mItemSpace:I

.field private mItemTextColor:I

.field private mItemTextSize:I

.field private mMaxAngle:I

.field private mSelectedItemTextColor:I

.field private mTextMaxHeight:I

.field private mTextMaxWidth:I

.field private mVisibleItemCount:I

.field private final matrixDepth:Landroid/graphics/Matrix;

.field private final matrixRotate:Landroid/graphics/Matrix;

.field private maxFlingY:I

.field private maxWidthText:Ljava/lang/String;

.field private maximumVelocity:I

.field private minFlingY:I

.field private minimumVelocity:I

.field private onItemSelectedListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$OnItemSelectedListener;

.field private onWheelChangeListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$OnWheelChangeListener;

.field private paint:Landroid/graphics/Paint;

.field private final rectCurrentItem:Landroid/graphics/Rect;

.field private final rectDrawn:Landroid/graphics/Rect;

.field private final rectIndicatorFoot:Landroid/graphics/Rect;

.field private final rectIndicatorHead:Landroid/graphics/Rect;

.field private runnable:Ljava/lang/Runnable;

.field private scrollOffsetY:I

.field private scroller:Landroid/widget/Scroller;

.field private selectedItemPosition:I

.field private showOnlyFutureDate:Z

.field private textMaxWidthPosition:I

.field private touchSlop:I

.field private tracker:Landroid/view/VelocityTracker;

.field private wheelCenterX:I

.field private wheelCenterY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, p1, v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 146
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-direct {v0}, Lcom/github/florent37/singledateandtimepicker/DateHelper;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->handler:Landroid/os/Handler;

    .line 54
    new-instance v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    invoke-direct {v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->rectDrawn:Landroid/graphics/Rect;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->rectIndicatorHead:Landroid/graphics/Rect;

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->rectIndicatorFoot:Landroid/graphics/Rect;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->rectCurrentItem:Landroid/graphics/Rect;

    .line 65
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->camera:Landroid/graphics/Camera;

    .line 66
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->matrixRotate:Landroid/graphics/Matrix;

    .line 67
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->matrixDepth:Landroid/graphics/Matrix;

    const/16 v0, 0x5a

    .line 79
    iput v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mMaxAngle:I

    const/16 v0, 0x32

    .line 86
    iput v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->minimumVelocity:I

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->maximumVelocity:I

    const/16 v0, 0x8

    .line 93
    iput v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->touchSlop:I

    .line 105
    new-instance v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$1;

    invoke-direct {v0, p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$1;-><init>(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)V

    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->runnable:Ljava/lang/Runnable;

    .line 148
    sget-object v0, Lcom/github/florent37/singledateandtimepicker/R$styleable;->WheelPicker:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 150
    sget p2, Lcom/github/florent37/singledateandtimepicker/R$styleable;->WheelPicker_wheel_item_text_size:I

    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/github/florent37/singledateandtimepicker/R$dimen;->WheelItemTextSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mItemTextSize:I

    .line 151
    sget p2, Lcom/github/florent37/singledateandtimepicker/R$styleable;->WheelPicker_wheel_visible_item_count:I

    const/4 v0, 0x7

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mVisibleItemCount:I

    .line 152
    sget p2, Lcom/github/florent37/singledateandtimepicker/R$styleable;->WheelPicker_wheel_selected_item_position:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->selectedItemPosition:I

    .line 153
    sget p2, Lcom/github/florent37/singledateandtimepicker/R$styleable;->WheelPicker_wheel_same_width:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->hasSameWidth:Z

    .line 154
    sget p2, Lcom/github/florent37/singledateandtimepicker/R$styleable;->WheelPicker_wheel_maximum_width_text_position:I

    const/4 v1, -0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->textMaxWidthPosition:I

    .line 155
    sget p2, Lcom/github/florent37/singledateandtimepicker/R$styleable;->WheelPicker_wheel_maximum_width_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->maxWidthText:Ljava/lang/String;

    .line 156
    sget p2, Lcom/github/florent37/singledateandtimepicker/R$styleable;->WheelPicker_wheel_selected_item_text_color:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mSelectedItemTextColor:I

    .line 157
    sget p2, Lcom/github/florent37/singledateandtimepicker/R$styleable;->WheelPicker_wheel_item_text_color:I

    const v1, -0x777778

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mItemTextColor:I

    .line 158
    sget p2, Lcom/github/florent37/singledateandtimepicker/R$styleable;->WheelPicker_wheel_item_space:I

    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/github/florent37/singledateandtimepicker/R$dimen;->WheelItemSpace:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mItemSpace:I

    .line 159
    sget p2, Lcom/github/florent37/singledateandtimepicker/R$styleable;->WheelPicker_wheel_cyclic:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->isCyclic:Z

    .line 160
    sget p2, Lcom/github/florent37/singledateandtimepicker/R$styleable;->WheelPicker_wheel_indicator:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->hasIndicator:Z

    .line 161
    sget p2, Lcom/github/florent37/singledateandtimepicker/R$styleable;->WheelPicker_wheel_indicator_color:I

    const v1, -0x11cccd

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mIndicatorColor:I

    .line 162
    sget p2, Lcom/github/florent37/singledateandtimepicker/R$styleable;->WheelPicker_wheel_indicator_size:I

    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/github/florent37/singledateandtimepicker/R$dimen;->WheelIndicatorSize:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mIndicatorSize:I

    .line 163
    sget p2, Lcom/github/florent37/singledateandtimepicker/R$styleable;->WheelPicker_wheel_curtain:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->hasCurtain:Z

    .line 164
    sget p2, Lcom/github/florent37/singledateandtimepicker/R$styleable;->WheelPicker_wheel_curtain_color:I

    const v1, -0x77000001

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mCurtainColor:I

    .line 165
    sget p2, Lcom/github/florent37/singledateandtimepicker/R$styleable;->WheelPicker_wheel_atmospheric:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->hasAtmospheric:Z

    .line 166
    sget p2, Lcom/github/florent37/singledateandtimepicker/R$styleable;->WheelPicker_wheel_curved:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->isCurved:Z

    .line 167
    sget p2, Lcom/github/florent37/singledateandtimepicker/R$styleable;->WheelPicker_wheel_item_align:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mItemAlign:I

    .line 168
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 170
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->updateVisibleItemCount()V

    .line 172
    new-instance p1, Landroid/graphics/Paint;

    const/16 p2, 0x45

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->paint:Landroid/graphics/Paint;

    .line 173
    iget p2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mItemTextSize:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 175
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->scroller:Landroid/widget/Scroller;

    .line 178
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 179
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->minimumVelocity:I

    .line 180
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->maximumVelocity:I

    .line 181
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->touchSlop:I

    .line 184
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->init()V

    .line 185
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->initDefault()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->defaultValue:Ljava/lang/Object;

    .line 186
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    iget-boolean p2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->showOnlyFutureDate:Z

    invoke-virtual {p0, p2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->generateAdapterValues(Z)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->setData(Ljava/util/List;)V

    .line 187
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    iget-object p2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->defaultValue:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->getItemPosition(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->currentItemPosition:I

    .line 188
    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->selectedItemPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)Landroid/widget/Scroller;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->scroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$100(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->isForceFinishScroll:Z

    return p0
.end method

.method static synthetic access$200(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mItemHeight:I

    return p0
.end method

.method static synthetic access$300(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->scrollOffsetY:I

    return p0
.end method

.method static synthetic access$302(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->scrollOffsetY:I

    return p1
.end method

.method static synthetic access$400(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->selectedItemPosition:I

    return p0
.end method

.method static synthetic access$502(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->currentItemPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->onItemSelected()V

    return-void
.end method

.method static synthetic access$700(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$OnWheelChangeListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->onWheelChangeListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$OnWheelChangeListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$OnItemSelectedListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->onItemSelectedListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$OnItemSelectedListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private clamp(FFF)F
    .locals 1

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    return p2

    :cond_0
    cmpl-float p2, p1, p3

    if-lez p2, :cond_1

    return p3

    :cond_1
    return p1
.end method

.method private computeCurrentItemRect()V
    .locals 6

    .line 388
    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->hasCurtain:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mSelectedItemTextColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->rectCurrentItem:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->rectDrawn:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->wheelCenterY:I

    iget v3, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mHalfItemHeight:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->rectDrawn:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->wheelCenterY:I

    iget v5, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mHalfItemHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private computeDepth(F)F
    .locals 6

    .line 523
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mHalfWheelHeight:I

    int-to-double v0, v0

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mHalfWheelHeight:I

    int-to-double v4, p1

    mul-double v2, v2, v4

    sub-double/2addr v0, v2

    double-to-float p1, v0

    return p1
.end method

.method private computeDistanceToEndPoint(I)I
    .locals 2

    .line 616
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mHalfItemHeight:I

    if-le v0, v1, :cond_1

    .line 617
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->scrollOffsetY:I

    if-gez v0, :cond_0

    .line 618
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mItemHeight:I

    neg-int v0, v0

    :goto_0
    sub-int/2addr v0, p1

    return v0

    .line 620
    :cond_0
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mItemHeight:I

    goto :goto_0

    :cond_1
    neg-int p1, p1

    return p1
.end method

.method private computeDrawnCenter()V
    .locals 3

    .line 355
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mItemAlign:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 363
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->wheelCenterX:I

    iput v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->drawnCenterX:I

    goto :goto_0

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->rectDrawn:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->drawnCenterX:I

    goto :goto_0

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->rectDrawn:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->drawnCenterX:I

    .line 366
    :goto_0
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->wheelCenterY:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->drawnCenterY:I

    return-void
.end method

.method private computeFlingLimitY()V
    .locals 3

    .line 370
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->selectedItemPosition:I

    iget v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mItemHeight:I

    mul-int v0, v0, v1

    .line 371
    iget-boolean v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->isCyclic:Z

    if-eqz v2, :cond_0

    const/high16 v1, -0x80000000

    goto :goto_0

    :cond_0
    neg-int v1, v1

    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    .line 372
    invoke-virtual {v2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int v1, v1, v2

    add-int/2addr v1, v0

    :goto_0
    iput v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->minFlingY:I

    .line 373
    iget-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->isCyclic:Z

    if-eqz v1, :cond_1

    const v0, 0x7fffffff

    :cond_1
    iput v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->maxFlingY:I

    return-void
.end method

.method private computeIndicatorRect()V
    .locals 7

    .line 377
    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->hasIndicator:Z

    if-nez v0, :cond_0

    return-void

    .line 378
    :cond_0
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mIndicatorSize:I

    div-int/lit8 v0, v0, 0x2

    .line 379
    iget v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->wheelCenterY:I

    iget v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mHalfItemHeight:I

    add-int v3, v1, v2

    sub-int/2addr v1, v2

    .line 381
    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->rectIndicatorHead:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->rectDrawn:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v5, v3, v0

    iget-object v6, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->rectDrawn:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 383
    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->rectIndicatorFoot:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->rectDrawn:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v4, v1, v0

    iget-object v5, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->rectDrawn:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private computeTextSize()V
    .locals 4

    const/4 v0, 0x0

    .line 220
    iput v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mTextMaxHeight:I

    iput v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mTextMaxWidth:I

    .line 221
    iget-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->hasSameWidth:Z

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    invoke-virtual {v2, v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->getItemText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mTextMaxWidth:I

    goto :goto_1

    .line 223
    :cond_0
    iget v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->textMaxWidthPosition:I

    invoke-direct {p0, v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->isPosInRang(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    iget v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->textMaxWidthPosition:I

    invoke-virtual {v1, v2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->getItemText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mTextMaxWidth:I

    goto :goto_1

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->maxWidthText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 226
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->maxWidthText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mTextMaxWidth:I

    goto :goto_1

    .line 228
    :cond_2
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    invoke-virtual {v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->getItemCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    .line 230
    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    invoke-virtual {v2, v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->getItemText(I)Ljava/lang/String;

    move-result-object v2

    .line 231
    iget-object v3, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    .line 232
    iget v3, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mTextMaxWidth:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mTextMaxWidth:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 236
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mTextMaxHeight:I

    return-void
.end method

.method private computeYCoordinateAtAngle(F)F
    .locals 1

    .line 515
    invoke-direct {p0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->sinDegree(F)F

    move-result p1

    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mMaxAngle:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->sinDegree(F)F

    move-result v0

    div-float/2addr p1, v0

    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mHalfWheelHeight:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    return p1
.end method

.method private isPosInRang(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 510
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private measureSize(III)I
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p1, v0, :cond_0

    return p2

    :cond_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    .line 321
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_1
    return p3
.end method

.method private final onItemSelected()V
    .locals 3

    .line 653
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->currentItemPosition:I

    .line 654
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    invoke-virtual {v1, v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 655
    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->onItemSelectedListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$OnItemSelectedListener;

    if-eqz v2, :cond_0

    .line 656
    invoke-interface {v2, p0, v1, v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$OnItemSelectedListener;->onItemSelected(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;Ljava/lang/Object;I)V

    .line 658
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->onItemSelected(ILjava/lang/Object;)V

    return-void
.end method

.method private sinDegree(F)F
    .locals 2

    float-to-double v0, p1

    .line 519
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private updateItemTextAlign()V
    .locals 2

    .line 240
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mItemAlign:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private updateVisibleItemCount()V
    .locals 3

    .line 210
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mVisibleItemCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 214
    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mVisibleItemCount:I

    .line 215
    :cond_0
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mVisibleItemCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mDrawnItemCount:I

    .line 216
    div-int/2addr v0, v1

    iput v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mHalfDrawnItemCount:I

    return-void

    .line 211
    :cond_1
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Wheel\'s visible item count can not be less than 2!"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public findIndexOfDate(Ljava/util/Date;)I
    .locals 7

    .line 966
    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->getFormattedValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 968
    instance-of v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 969
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 970
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 971
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x5

    .line 972
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    sub-int/2addr p1, v2

    return p1

    .line 975
    :cond_0
    instance-of v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelDayPicker;

    if-eqz v1, :cond_1

    .line 976
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->getFormattedValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 977
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 978
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->getTodayItemPosition()I

    move-result p1

    return p1

    .line 982
    :cond_1
    instance-of v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;

    if-eqz v1, :cond_2

    .line 983
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 984
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 985
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x2

    .line 986
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    return p1

    .line 989
    :cond_2
    instance-of v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;

    if-eqz v1, :cond_3

    .line 990
    move-object v0, p0

    check-cast v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;

    .line 991
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 992
    iget-object v3, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    invoke-virtual {v3}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 993
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 994
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget v0, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelYearPicker;->minYear:I

    sub-int/2addr p1, v0

    return p1

    :cond_3
    const/high16 p1, -0x80000000

    .line 999
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/high16 v1, -0x80000000

    .line 1003
    :goto_0
    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    invoke-virtual {v2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->getItemCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v2, :cond_7

    .line 1006
    iget-object v5, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    invoke-virtual {v5, v3}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->getItemText(I)Ljava/lang/String;

    move-result-object v5

    if-eq v1, p1, :cond_5

    .line 1010
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1011
    instance-of v6, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;

    if-eqz v6, :cond_4

    move-object v6, p0

    check-cast v6, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;

    iget-boolean v6, v6, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->isAmPm:Z

    if-eqz v6, :cond_4

    .line 1013
    rem-int/lit8 v5, v5, 0xc

    :cond_4
    if-gt v5, v1, :cond_6

    move v4, v3

    goto :goto_2

    .line 1018
    :cond_5
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    return v3

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    return v4
.end method

.method protected abstract generateAdapterValues(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation
.end method

.method public getCurrentItemPosition()I
    .locals 1

    .line 728
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->currentItemPosition:I

    return v0
.end method

.method public getCurrentLocale()Ljava/util/Locale;
    .locals 2

    .line 1031
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->customLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    return-object v0

    .line 1034
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 1035
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/res/Configuration;)Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/LocaleList;I)Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 1038
    :cond_1
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getCurtainColor()I
    .locals 1

    .line 904
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mCurtainColor:I

    return v0
.end method

.method public getDateHelper()Lcom/github/florent37/singledateandtimepicker/DateHelper;
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    return-object v0
.end method

.method public getDefaultItemPosition()I
    .locals 2

    .line 732
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->getData()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->defaultValue:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected getFormattedValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 685
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIndicatorColor()I
    .locals 1

    .line 885
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mIndicatorColor:I

    return v0
.end method

.method public getIndicatorSize()I
    .locals 1

    .line 875
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mIndicatorSize:I

    return v0
.end method

.method public getItemAlign()I
    .locals 1

    .line 932
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mItemAlign:I

    return v0
.end method

.method public getItemSpace()I
    .locals 1

    .line 849
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mItemSpace:I

    return v0
.end method

.method public getItemTextColor()I
    .locals 1

    .line 825
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mItemTextColor:I

    return v0
.end method

.method public getItemTextSize()I
    .locals 1

    .line 834
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mItemTextSize:I

    return v0
.end method

.method public getLocalizedString(I)Ljava/lang/String;
    .locals 2

    .line 1026
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/github/florent37/singledateandtimepicker/LocaleHelper;->getString(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMaximumWidthText()Ljava/lang/String;
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->maxWidthText:Ljava/lang/String;

    return-object v0
.end method

.method public getMaximumWidthTextPosition()I
    .locals 1

    .line 800
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->textMaxWidthPosition:I

    return v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .line 713
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->selectedItemPosition:I

    return v0
.end method

.method public getSelectedItemTextColor()I
    .locals 1

    .line 815
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mSelectedItemTextColor:I

    return v0
.end method

.method public getShowOnlyFutureDate()Z
    .locals 1

    .line 1055
    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->showOnlyFutureDate:Z

    return v0
.end method

.method public getTodayItemPosition()I
    .locals 5

    .line 736
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->getData()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 737
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 738
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;

    if-eqz v3, :cond_0

    .line 739
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;

    .line 740
    iget-object v3, v3, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;->label:Ljava/lang/String;

    sget v4, Lcom/github/florent37/singledateandtimepicker/R$string;->picker_today:I

    invoke-virtual {p0, v4}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 943
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->paint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisibleItemCount()I
    .locals 1

    .line 689
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mVisibleItemCount:I

    return v0
.end method

.method public hasAtmospheric()Z
    .locals 1

    .line 918
    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->hasAtmospheric:Z

    return v0
.end method

.method public hasCurtain()Z
    .locals 1

    .line 900
    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->hasCurtain:Z

    return v0
.end method

.method public hasIndicator()Z
    .locals 1

    .line 871
    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->hasIndicator:Z

    return v0
.end method

.method public hasSameWidth()Z
    .locals 1

    .line 780
    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->hasSameWidth:Z

    return v0
.end method

.method protected abstract init()V
.end method

.method protected abstract initDefault()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public isCurved()Z
    .locals 1

    .line 922
    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->isCurved:Z

    return v0
.end method

.method public isCyclic()Z
    .locals 1

    .line 699
    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->isCyclic:Z

    return v0
.end method

.method public notifyDatasetChanged()V
    .locals 2

    .line 759
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->selectedItemPosition:I

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    invoke-virtual {v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->currentItemPosition:I

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    .line 760
    invoke-virtual {v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 763
    :cond_0
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->currentItemPosition:I

    iput v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->selectedItemPosition:I

    goto :goto_1

    .line 761
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->currentItemPosition:I

    iput v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->selectedItemPosition:I

    :goto_1
    const/4 v0, 0x0

    .line 765
    iput v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->scrollOffsetY:I

    .line 766
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->computeTextSize()V

    .line 767
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->computeFlingLimitY()V

    .line 768
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->requestLayout()V

    .line 769
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->postInvalidate()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 204
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 205
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    invoke-virtual {p0, v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->setAdapter(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;)V

    .line 206
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->defaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->setDefault(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 395
    iget-object v2, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->onWheelChangeListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$OnWheelChangeListener;

    if-eqz v2, :cond_0

    iget v3, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->scrollOffsetY:I

    invoke-interface {v2, v3}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$OnWheelChangeListener;->onWheelScrolled(I)V

    .line 396
    :cond_0
    iget v2, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mItemHeight:I

    iget v3, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mHalfDrawnItemCount:I

    sub-int v4, v2, v3

    if-gtz v4, :cond_1

    goto/16 :goto_9

    .line 399
    :cond_1
    iget v4, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->scrollOffsetY:I

    neg-int v4, v4

    div-int/2addr v4, v2

    sub-int/2addr v4, v3

    .line 400
    iget v2, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->selectedItemPosition:I

    add-int/2addr v2, v4

    neg-int v3, v3

    .line 402
    :goto_0
    iget v5, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->selectedItemPosition:I

    add-int/2addr v5, v4

    iget v6, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mDrawnItemCount:I

    add-int/2addr v5, v6

    if-ge v2, v5, :cond_11

    .line 405
    iget-boolean v5, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->isCyclic:Z

    if-eqz v5, :cond_3

    .line 406
    iget-object v5, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    invoke-virtual {v5}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->getItemCount()I

    move-result v5

    .line 407
    rem-int v6, v2, v5

    if-gez v6, :cond_2

    add-int/2addr v6, v5

    .line 409
    :cond_2
    iget-object v5, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    invoke-virtual {v5, v6}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->getItemText(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 411
    :cond_3
    invoke-direct {v0, v2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->isPosInRang(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 412
    iget-object v5, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    invoke-virtual {v5, v2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->getItemText(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 411
    :cond_4
    const-string v5, ""

    .line 415
    :goto_1
    iget-object v6, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->paint:Landroid/graphics/Paint;

    iget v7, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mItemTextColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 416
    iget-object v6, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->paint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 417
    iget v6, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->drawnCenterY:I

    iget v7, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mItemHeight:I

    mul-int v8, v3, v7

    add-int/2addr v8, v6

    iget v9, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->scrollOffsetY:I

    rem-int/2addr v9, v7

    add-int/2addr v8, v9

    .line 421
    iget-boolean v7, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->isCurved:Z

    const/4 v9, -0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    if-eqz v7, :cond_9

    sub-int v7, v6, v8

    .line 423
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->rectDrawn:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float v6, v6, v11

    iget v7, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->drawnCenterY:I

    iget-object v13, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->rectDrawn:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v13

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 428
    iget v7, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->drawnCenterY:I

    const/4 v13, 0x1

    if-le v8, v7, :cond_5

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    if-ge v8, v7, :cond_6

    const/4 v7, -0x1

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    :goto_2
    sub-float v6, v11, v6

    neg-float v6, v6

    .line 432
    iget v14, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mMaxAngle:I

    int-to-float v15, v14

    mul-float v6, v6, v15

    int-to-float v7, v7

    mul-float v6, v6, v7

    neg-int v7, v14

    int-to-float v7, v7

    int-to-float v14, v14

    invoke-direct {v0, v6, v7, v14}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->clamp(FFF)F

    move-result v6

    .line 433
    invoke-direct {v0, v6}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->computeYCoordinateAtAngle(F)F

    move-result v7

    .line 435
    iget v14, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->wheelCenterX:I

    int-to-float v14, v14

    .line 436
    iget v15, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mItemAlign:I

    if-eq v15, v13, :cond_8

    const/4 v13, 0x2

    if-eq v15, v13, :cond_7

    goto :goto_4

    .line 441
    :cond_7
    iget-object v13, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->rectDrawn:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 438
    :cond_8
    iget-object v13, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->rectDrawn:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    :goto_3
    int-to-float v14, v13

    .line 444
    :goto_4
    iget v13, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->wheelCenterY:I

    int-to-float v13, v13

    sub-float/2addr v13, v7

    .line 446
    iget-object v15, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->camera:Landroid/graphics/Camera;

    invoke-virtual {v15}, Landroid/graphics/Camera;->save()V

    .line 447
    iget-object v15, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->camera:Landroid/graphics/Camera;

    invoke-virtual {v15, v6}, Landroid/graphics/Camera;->rotateX(F)V

    .line 448
    iget-object v15, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->camera:Landroid/graphics/Camera;

    iget-object v10, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->matrixRotate:Landroid/graphics/Matrix;

    invoke-virtual {v15, v10}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 449
    iget-object v10, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->camera:Landroid/graphics/Camera;

    invoke-virtual {v10}, Landroid/graphics/Camera;->restore()V

    .line 450
    iget-object v10, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->matrixRotate:Landroid/graphics/Matrix;

    neg-float v15, v14

    const/high16 v16, 0x3f800000    # 1.0f

    neg-float v11, v13

    invoke-virtual {v10, v15, v11}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 451
    iget-object v10, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->matrixRotate:Landroid/graphics/Matrix;

    invoke-virtual {v10, v14, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 453
    iget-object v10, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->camera:Landroid/graphics/Camera;

    invoke-virtual {v10}, Landroid/graphics/Camera;->save()V

    .line 454
    iget-object v10, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->camera:Landroid/graphics/Camera;

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-direct {v0, v6}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->computeDepth(F)F

    move-result v6

    invoke-virtual {v10, v12, v12, v6}, Landroid/graphics/Camera;->translate(FFF)V

    .line 455
    iget-object v6, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->camera:Landroid/graphics/Camera;

    iget-object v10, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->matrixDepth:Landroid/graphics/Matrix;

    invoke-virtual {v6, v10}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 456
    iget-object v6, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->camera:Landroid/graphics/Camera;

    invoke-virtual {v6}, Landroid/graphics/Camera;->restore()V

    .line 457
    iget-object v6, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->matrixDepth:Landroid/graphics/Matrix;

    invoke-virtual {v6, v15, v11}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 458
    iget-object v6, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->matrixDepth:Landroid/graphics/Matrix;

    invoke-virtual {v6, v14, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 460
    iget-object v6, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->matrixRotate:Landroid/graphics/Matrix;

    iget-object v10, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->matrixDepth:Landroid/graphics/Matrix;

    invoke-virtual {v6, v10}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    move v12, v7

    goto :goto_5

    :cond_9
    const/high16 v16, 0x3f800000    # 1.0f

    .line 462
    :goto_5
    iget-boolean v6, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->hasAtmospheric:Z

    if-eqz v6, :cond_b

    .line 463
    iget v6, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->drawnCenterY:I

    sub-int v7, v6, v8

    .line 464
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float v6, v6, v16

    iget v7, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->drawnCenterY:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float v6, v6, v7

    float-to-int v6, v6

    if-gez v6, :cond_a

    const/4 v10, 0x0

    goto :goto_6

    :cond_a
    move v10, v6

    .line 467
    :goto_6
    iget-object v6, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 470
    :cond_b
    iget-boolean v6, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->isCurved:Z

    if-eqz v6, :cond_c

    iget v6, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->drawnCenterY:I

    int-to-float v6, v6

    sub-float/2addr v6, v12

    goto :goto_7

    :cond_c
    int-to-float v6, v8

    .line 473
    :goto_7
    iget v7, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mSelectedItemTextColor:I

    if-eq v7, v9, :cond_f

    .line 474
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 475
    iget-boolean v7, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->isCurved:Z

    if-eqz v7, :cond_d

    iget-object v7, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->matrixRotate:Landroid/graphics/Matrix;

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 476
    :cond_d
    iget-object v7, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->rectCurrentItem:Landroid/graphics/Rect;

    sget-object v8, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 477
    iget v7, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->drawnCenterX:I

    int-to-float v7, v7

    iget-object v8, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v7, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 478
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 480
    iget-object v7, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->paint:Landroid/graphics/Paint;

    iget v8, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mSelectedItemTextColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 481
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 482
    iget-boolean v7, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->isCurved:Z

    if-eqz v7, :cond_e

    iget-object v7, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->matrixRotate:Landroid/graphics/Matrix;

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 483
    :cond_e
    iget-object v7, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->rectCurrentItem:Landroid/graphics/Rect;

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 484
    iget v7, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->drawnCenterX:I

    int-to-float v7, v7

    iget-object v8, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v7, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 485
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_8

    .line 487
    :cond_f
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 488
    iget-object v7, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->rectDrawn:Landroid/graphics/Rect;

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 489
    iget-boolean v7, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->isCurved:Z

    if-eqz v7, :cond_10

    iget-object v7, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->matrixRotate:Landroid/graphics/Matrix;

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 490
    :cond_10
    iget v7, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->drawnCenterX:I

    int-to-float v7, v7

    iget-object v8, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v7, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 491
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :goto_8
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 495
    :cond_11
    iget-boolean v2, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->hasCurtain:Z

    if-eqz v2, :cond_12

    .line 496
    iget-object v2, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->paint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mCurtainColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 497
    iget-object v2, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 498
    iget-object v2, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->rectCurrentItem:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 501
    :cond_12
    iget-boolean v2, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->hasIndicator:Z

    if-eqz v2, :cond_13

    .line 502
    iget-object v2, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->paint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mIndicatorColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 503
    iget-object v2, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 504
    iget-object v2, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->rectIndicatorHead:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 505
    iget-object v2, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->rectIndicatorFoot:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_13
    :goto_9
    return-void
.end method

.method protected onFinishedLoop()V
    .locals 0

    return-void
.end method

.method protected onItemCurrentScroll(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 669
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->lastScrollPosition:I

    if-eq v0, p1, :cond_1

    .line 670
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->listener:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Listener;

    if-eqz v0, :cond_0

    .line 671
    invoke-interface {v0, p0, p1, p2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Listener;->onCurrentScrolled(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;ILjava/lang/Object;)V

    .line 672
    iget p2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->lastScrollPosition:I

    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    if-nez p1, :cond_0

    .line 673
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->onFinishedLoop()V

    .line 676
    :cond_0
    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->lastScrollPosition:I

    :cond_1
    return-void
.end method

.method protected onItemSelected(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 662
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->listener:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Listener;

    if-eqz v0, :cond_0

    .line 663
    invoke-interface {v0, p0, p1, p2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Listener;->onSelected(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 286
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 287
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 289
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 290
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 293
    iget v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mTextMaxWidth:I

    .line 294
    iget v3, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mTextMaxHeight:I

    iget v4, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mVisibleItemCount:I

    mul-int v3, v3, v4

    iget v5, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mItemSpace:I

    add-int/lit8 v4, v4, -0x1

    mul-int v5, v5, v4

    add-int/2addr v3, v5

    .line 297
    iget-boolean v4, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->isCurved:Z

    if-eqz v4, :cond_0

    .line 301
    iget v4, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mMaxAngle:I

    int-to-float v4, v4

    invoke-direct {p0, v4}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->sinDegree(F)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v4, v4, v5

    float-to-double v4, v4

    iget v6, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mMaxAngle:I

    int-to-double v6, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double v6, v6, v8

    const-wide v8, 0x4056800000000000L    # 90.0

    div-double/2addr v6, v8

    div-double/2addr v4, v6

    int-to-double v6, v3

    mul-double v4, v4, v6

    double-to-int v3, v4

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 306
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 309
    invoke-direct {p0, v0, p1, v2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->measureSize(III)I

    move-result p1

    .line 310
    invoke-direct {p0, v1, p2, v3}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->measureSize(III)I

    move-result p2

    .line 312
    invoke-virtual {p0, p1, p2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 329
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->rectDrawn:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->getPaddingRight()I

    move-result v0

    sub-int/2addr p4, v0

    .line 330
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 329
    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 333
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->rectDrawn:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->wheelCenterX:I

    .line 334
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->rectDrawn:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->wheelCenterY:I

    .line 337
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->computeDrawnCenter()V

    .line 339
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->rectDrawn:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mHalfWheelHeight:I

    .line 341
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->rectDrawn:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget p2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mVisibleItemCount:I

    div-int/2addr p1, p2

    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mItemHeight:I

    .line 342
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mHalfItemHeight:I

    .line 345
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->computeFlingLimitY()V

    .line 348
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->computeIndicatorRect()V

    .line 351
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->computeCurrentItemRect()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 534
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    .line 535
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto/16 :goto_3

    .line 604
    :cond_0
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 605
    :cond_1
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->tracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_10

    .line 606
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 607
    iput-object v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->tracker:Landroid/view/VelocityTracker;

    goto/16 :goto_3

    .line 551
    :cond_2
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->downPointY:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->touchSlop:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->scroller:Landroid/widget/Scroller;

    .line 552
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    iget v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mItemHeight:I

    rem-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->computeDistanceToEndPoint(I)I

    move-result v0

    if-lez v0, :cond_3

    .line 553
    iput-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->isClick:Z

    goto/16 :goto_3

    .line 556
    :cond_3
    iput-boolean v3, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->isClick:Z

    .line 557
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 558
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->onWheelChangeListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$OnWheelChangeListener;

    if-eqz v0, :cond_4

    .line 559
    invoke-interface {v0, v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$OnWheelChangeListener;->onWheelScrollStateChanged(I)V

    .line 563
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->lastPointY:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 564
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    goto/16 :goto_3

    .line 565
    :cond_5
    iget v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->scrollOffsetY:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->scrollOffsetY:I

    .line 566
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->lastPointY:I

    .line 567
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->invalidate()V

    goto/16 :goto_3

    .line 570
    :cond_6
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 571
    :cond_7
    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->isClick:Z

    if-eqz v0, :cond_8

    goto/16 :goto_3

    .line 572
    :cond_8
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 575
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->tracker:Landroid/view/VelocityTracker;

    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->maximumVelocity:I

    int-to-float v0, v0

    const/16 v4, 0x3e8

    invoke-virtual {p1, v4, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 581
    iput-boolean v3, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->isForceFinishScroll:Z

    .line 582
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    float-to-int v8, p1

    .line 583
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->minimumVelocity:I

    if-le p1, v0, :cond_9

    .line 584
    iget-object v4, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->scroller:Landroid/widget/Scroller;

    iget v6, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->scrollOffsetY:I

    iget v11, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->minFlingY:I

    iget v12, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->maxFlingY:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 585
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->scroller:Landroid/widget/Scroller;

    .line 586
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    iget-object v3, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalY()I

    move-result v3

    iget v4, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mItemHeight:I

    rem-int/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->computeDistanceToEndPoint(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 585
    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->setFinalY(I)V

    goto :goto_0

    .line 588
    :cond_9
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->scroller:Landroid/widget/Scroller;

    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->scrollOffsetY:I

    iget v4, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mItemHeight:I

    rem-int v4, v0, v4

    .line 589
    invoke-direct {p0, v4}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->computeDistanceToEndPoint(I)I

    move-result v4

    .line 588
    invoke-virtual {p1, v3, v0, v3, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 592
    :goto_0
    iget-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->isCyclic:Z

    if-nez p1, :cond_b

    .line 593
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result p1

    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->maxFlingY:I

    if-le p1, v0, :cond_a

    .line 594
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->setFinalY(I)V

    goto :goto_1

    .line 595
    :cond_a
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result p1

    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->minFlingY:I

    if-ge p1, v0, :cond_b

    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->setFinalY(I)V

    .line 597
    :cond_b
    :goto_1
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 598
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->tracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_10

    .line 599
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 600
    iput-object v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->tracker:Landroid/view/VelocityTracker;

    goto :goto_3

    .line 537
    :cond_c
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 538
    :cond_d
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->tracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_e

    .line 539
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->tracker:Landroid/view/VelocityTracker;

    goto :goto_2

    .line 541
    :cond_e
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 543
    :goto_2
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 544
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_f

    .line 545
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 546
    iput-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->isForceFinishScroll:Z

    .line 548
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->lastPointY:I

    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->downPointY:I

    :cond_10
    :goto_3
    return v1
.end method

.method public scrollTo(I)V
    .locals 3

    .line 628
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->currentItemPosition:I

    if-eq p1, v0, :cond_0

    sub-int/2addr v0, p1

    .line 630
    iget v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->scrollOffsetY:I

    iget v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mItemHeight:I

    mul-int v0, v0, v2

    add-int/2addr v0, v1

    .line 633
    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 634
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 635
    new-instance v1, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$2;

    invoke-direct {v1, p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$2;-><init>(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 641
    new-instance v1, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$3;

    invoke-direct {v1, p0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$3;-><init>(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 648
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public selectDate(Ljava/util/Date;)V
    .locals 0

    .line 273
    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->findIndexOfDate(Ljava/util/Date;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->setSelectedItemPosition(I)V

    return-void
.end method

.method public setAdapter(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;)V
    .locals 0

    .line 749
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    .line 751
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->updateItemTextAlign()V

    .line 753
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->computeTextSize()V

    .line 755
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->notifyDatasetChanged()V

    return-void
.end method

.method public setAtmospheric(Z)V
    .locals 0

    .line 913
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->hasAtmospheric:Z

    .line 914
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->postInvalidate()V

    return-void
.end method

.method public setCurtain(Z)V
    .locals 0

    .line 894
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->hasCurtain:Z

    .line 895
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->computeCurrentItemRect()V

    .line 896
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->postInvalidate()V

    return-void
.end method

.method public setCurtainColor(I)V
    .locals 0

    .line 908
    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mCurtainColor:I

    .line 909
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->postInvalidate()V

    return-void
.end method

.method public setCurved(Z)V
    .locals 0

    .line 926
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->isCurved:Z

    .line 927
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->requestLayout()V

    .line 928
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->postInvalidate()V

    return-void
.end method

.method public setCurvedMaxAngle(I)V
    .locals 0

    .line 859
    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mMaxAngle:I

    .line 860
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->requestLayout()V

    .line 861
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->postInvalidate()V

    return-void
.end method

.method public setCustomLocale(Ljava/util/Locale;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->customLocale:Ljava/util/Locale;

    return-void
.end method

.method public setCyclic(Z)V
    .locals 0

    .line 703
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->isCyclic:Z

    .line 704
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->computeFlingLimitY()V

    .line 705
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->invalidate()V

    return-void
.end method

.method public setDateHelper(Lcom/github/florent37/singledateandtimepicker/DateHelper;)V
    .locals 0

    .line 1043
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->dateHelper:Lcom/github/florent37/singledateandtimepicker/DateHelper;

    return-void
.end method

.method public setDefault(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 258
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->defaultValue:Ljava/lang/Object;

    .line 259
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->updateDefault()V

    return-void
.end method

.method public setDefaultDate(Ljava/util/Date;)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 264
    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->findIndexOfDate(Ljava/util/Date;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->defaultValue:Ljava/lang/Object;

    .line 267
    invoke-virtual {p0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->setSelectedItemPosition(I)V

    :cond_0
    return-void
.end method

.method public setIndicator(Z)V
    .locals 0

    .line 865
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->hasIndicator:Z

    .line 866
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->computeIndicatorRect()V

    .line 867
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->postInvalidate()V

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    .line 889
    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mIndicatorColor:I

    .line 890
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->postInvalidate()V

    return-void
.end method

.method public setIndicatorSize(I)V
    .locals 0

    .line 879
    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mIndicatorSize:I

    .line 880
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->computeIndicatorRect()V

    .line 881
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->postInvalidate()V

    return-void
.end method

.method public setItemAlign(I)V
    .locals 0

    .line 936
    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mItemAlign:I

    .line 937
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->updateItemTextAlign()V

    .line 938
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->computeDrawnCenter()V

    .line 939
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->postInvalidate()V

    return-void
.end method

.method public setItemSpace(I)V
    .locals 0

    .line 853
    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mItemSpace:I

    .line 854
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->requestLayout()V

    .line 855
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->postInvalidate()V

    return-void
.end method

.method public setItemTextColor(I)V
    .locals 0

    .line 829
    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mItemTextColor:I

    .line 830
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->postInvalidate()V

    return-void
.end method

.method public setItemTextSize(I)V
    .locals 1

    .line 839
    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mItemTextSize:I

    if-eq v0, p1, :cond_0

    .line 840
    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mItemTextSize:I

    .line 841
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->paint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 842
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->computeTextSize()V

    .line 843
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->requestLayout()V

    .line 844
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Listener;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->listener:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Listener;

    return-void
.end method

.method public setMaximumWidthText(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 793
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->maxWidthText:Ljava/lang/String;

    .line 794
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->computeTextSize()V

    .line 795
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->requestLayout()V

    .line 796
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->postInvalidate()V

    return-void

    .line 792
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Maximum width text can not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaximumWidthTextPosition(I)V
    .locals 3

    .line 804
    invoke-direct {p0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->isPosInRang(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->textMaxWidthPosition:I

    .line 809
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->computeTextSize()V

    .line 810
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->requestLayout()V

    .line 811
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->postInvalidate()V

    return-void

    .line 805
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Maximum width text Position must in [0, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    .line 806
    invoke-virtual {v2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), but current is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemSelectedListener(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$OnItemSelectedListener;)V
    .locals 0

    .line 709
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->onItemSelectedListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$OnItemSelectedListener;

    return-void
.end method

.method public setOnWheelChangeListener(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$OnWheelChangeListener;)V
    .locals 0

    .line 784
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->onWheelChangeListener:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$OnWheelChangeListener;

    return-void
.end method

.method public setSameWidth(Z)V
    .locals 0

    .line 773
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->hasSameWidth:Z

    .line 774
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->computeTextSize()V

    .line 775
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->requestLayout()V

    .line 776
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->invalidate()V

    return-void
.end method

.method public setSelectedItemPosition(I)V
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    .line 718
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 719
    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->selectedItemPosition:I

    .line 720
    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->currentItemPosition:I

    .line 721
    iput v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->scrollOffsetY:I

    .line 722
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->computeFlingLimitY()V

    .line 723
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->requestLayout()V

    .line 724
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->invalidate()V

    return-void
.end method

.method public setSelectedItemTextColor(I)V
    .locals 0

    .line 819
    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mSelectedItemTextColor:I

    .line 820
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->computeCurrentItemRect()V

    .line 821
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->postInvalidate()V

    return-void
.end method

.method public setShowOnlyFutureDate(Z)V
    .locals 0

    .line 1051
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->showOnlyFutureDate:Z

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 948
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->paint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 949
    :cond_0
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->computeTextSize()V

    .line 950
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->requestLayout()V

    .line 951
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->postInvalidate()V

    return-void
.end method

.method public setVisibleItemCount(I)V
    .locals 0

    .line 693
    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->mVisibleItemCount:I

    .line 694
    invoke-direct {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->updateVisibleItemCount()V

    .line 695
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->requestLayout()V

    return-void
.end method

.method public updateAdapter()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    iget-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->showOnlyFutureDate:Z

    invoke-virtual {p0, v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->generateAdapterValues(Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->setData(Ljava/util/List;)V

    .line 197
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->notifyDatasetChanged()V

    return-void
.end method

.method protected updateDefault()V
    .locals 1

    .line 254
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->getDefaultItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->setSelectedItemPosition(I)V

    return-void
.end method
