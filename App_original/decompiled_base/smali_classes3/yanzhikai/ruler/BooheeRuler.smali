.class public Lyanzhikai/ruler/BooheeRuler;
.super Landroid/view/ViewGroup;
.source "BooheeRuler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyanzhikai/ruler/BooheeRuler$RulerStyle;
    }
.end annotation


# static fields
.field public static final BOTTOM_HEAD:I = 0x2

.field public static final LEFT_HEAD:I = 0x3

.field public static final RIGHT_HEAD:I = 0x4

.field public static final TOP_HEAD:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBigScaleLength:I

.field private mBigScaleWidth:I

.field private mCanEdgeEffect:Z

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mCurrentScale:F

.field private mCursorDrawable:Landroid/graphics/drawable/Drawable;

.field private mCursorHeight:I

.field private mCursorWidth:I

.field private mEdgeColor:I

.field private mFactor:F

.field private mInnerRuler:Lyanzhikai/ruler/InnerRulers/InnerRuler;

.field private mInterval:I

.field private mMaxScale:I

.field private mMinScale:I

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingStartAndEnd:I

.field private mPaddingTop:I

.field private mRulerBackGround:Landroid/graphics/drawable/Drawable;

.field private mRulerBackGroundColor:I

.field private mScaleColor:I

.field private mSmallScaleLength:I

.field private mSmallScaleWidth:I

.field private mStyle:I

.field private mTextColor:I

.field private mTextMarginHead:I

.field private mTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 82
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 29
    const-string v0, "ruler"

    iput-object v0, p0, Lyanzhikai/ruler/BooheeRuler;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 36
    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mStyle:I

    const/16 v1, 0x1d0

    .line 40
    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mMinScale:I

    const/16 v1, 0x7d0

    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mMaxScale:I

    const/16 v1, 0x8

    .line 42
    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mCursorWidth:I

    const/16 v1, 0x46

    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mCursorHeight:I

    const/16 v1, 0x1e

    .line 44
    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mSmallScaleLength:I

    const/16 v1, 0x3c

    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mBigScaleLength:I

    const/4 v1, 0x3

    .line 46
    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mSmallScaleWidth:I

    const/4 v1, 0x5

    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mBigScaleWidth:I

    const/16 v1, 0x1c

    .line 48
    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mTextSize:I

    const/16 v1, 0x78

    .line 50
    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mTextMarginHead:I

    const/16 v1, 0x12

    .line 52
    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mInterval:I

    .line 56
    invoke-virtual {p0}, Lyanzhikai/ruler/BooheeRuler;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lyanzhikai/ruler/R$color;->colorLightBlack:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mTextColor:I

    .line 60
    invoke-virtual {p0}, Lyanzhikai/ruler/BooheeRuler;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lyanzhikai/ruler/R$color;->colorGray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mScaleColor:I

    const/4 v1, 0x0

    .line 62
    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mCurrentScale:F

    const/16 v1, 0xa

    .line 64
    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mCount:I

    const/4 v1, 0x0

    .line 68
    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mPaddingStartAndEnd:I

    .line 69
    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mPaddingLeft:I

    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mPaddingTop:I

    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mPaddingRight:I

    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mPaddingBottom:I

    .line 72
    invoke-virtual {p0}, Lyanzhikai/ruler/BooheeRuler;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lyanzhikai/ruler/R$color;->colorDirtyWithe:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mRulerBackGroundColor:I

    .line 74
    iput-boolean v0, p0, Lyanzhikai/ruler/BooheeRuler;->mCanEdgeEffect:Z

    .line 76
    invoke-virtual {p0}, Lyanzhikai/ruler/BooheeRuler;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lyanzhikai/ruler/R$color;->colorForgiven:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mEdgeColor:I

    const v0, 0x3dcccccd    # 0.1f

    .line 78
    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mFactor:F

    .line 83
    invoke-direct {p0, p1}, Lyanzhikai/ruler/BooheeRuler;->initRuler(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const-string v0, "ruler"

    iput-object v0, p0, Lyanzhikai/ruler/BooheeRuler;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 36
    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mStyle:I

    const/16 v1, 0x1d0

    .line 40
    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mMinScale:I

    const/16 v1, 0x7d0

    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mMaxScale:I

    const/16 v1, 0x8

    .line 42
    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mCursorWidth:I

    const/16 v1, 0x46

    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mCursorHeight:I

    const/16 v1, 0x1e

    .line 44
    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mSmallScaleLength:I

    const/16 v1, 0x3c

    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mBigScaleLength:I

    const/4 v1, 0x3

    .line 46
    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mSmallScaleWidth:I

    const/4 v1, 0x5

    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mBigScaleWidth:I

    const/16 v1, 0x1c

    .line 48
    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mTextSize:I

    const/16 v1, 0x78

    .line 50
    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mTextMarginHead:I

    const/16 v1, 0x12

    .line 52
    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mInterval:I

    .line 56
    invoke-virtual {p0}, Lyanzhikai/ruler/BooheeRuler;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lyanzhikai/ruler/R$color;->colorLightBlack:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mTextColor:I

    .line 60
    invoke-virtual {p0}, Lyanzhikai/ruler/BooheeRuler;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lyanzhikai/ruler/R$color;->colorGray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mScaleColor:I

    const/4 v1, 0x0

    .line 62
    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mCurrentScale:F

    const/16 v1, 0xa

    .line 64
    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mCount:I

    const/4 v1, 0x0

    .line 68
    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mPaddingStartAndEnd:I

    .line 69
    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mPaddingLeft:I

    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mPaddingTop:I

    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mPaddingRight:I

    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mPaddingBottom:I

    .line 72
    invoke-virtual {p0}, Lyanzhikai/ruler/BooheeRuler;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lyanzhikai/ruler/R$color;->colorDirtyWithe:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lyanzhikai/ruler/BooheeRuler;->mRulerBackGroundColor:I

    .line 74
    iput-boolean v0, p0, Lyanzhikai/ruler/BooheeRuler;->mCanEdgeEffect:Z

    .line 76
    invoke-virtual {p0}, Lyanzhikai/ruler/BooheeRuler;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lyanzhikai/ruler/R$color;->colorForgiven:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mEdgeColor:I

    const v0, 0x3dcccccd    # 0.1f

    .line 78
    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mFactor:F

    .line 89
    invoke-direct {p0, p1, p2}, Lyanzhikai/ruler/BooheeRuler;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    invoke-direct {p0, p1}, Lyanzhikai/ruler/BooheeRuler;->initRuler(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const-string p3, "ruler"

    iput-object p3, p0, Lyanzhikai/ruler/BooheeRuler;->TAG:Ljava/lang/String;

    const/4 p3, 0x1

    .line 36
    iput p3, p0, Lyanzhikai/ruler/BooheeRuler;->mStyle:I

    const/16 v0, 0x1d0

    .line 40
    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mMinScale:I

    const/16 v0, 0x7d0

    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mMaxScale:I

    const/16 v0, 0x8

    .line 42
    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mCursorWidth:I

    const/16 v0, 0x46

    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mCursorHeight:I

    const/16 v0, 0x1e

    .line 44
    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mSmallScaleLength:I

    const/16 v0, 0x3c

    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mBigScaleLength:I

    const/4 v0, 0x3

    .line 46
    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mSmallScaleWidth:I

    const/4 v0, 0x5

    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mBigScaleWidth:I

    const/16 v0, 0x1c

    .line 48
    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mTextSize:I

    const/16 v0, 0x78

    .line 50
    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mTextMarginHead:I

    const/16 v0, 0x12

    .line 52
    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mInterval:I

    .line 56
    invoke-virtual {p0}, Lyanzhikai/ruler/BooheeRuler;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lyanzhikai/ruler/R$color;->colorLightBlack:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mTextColor:I

    .line 60
    invoke-virtual {p0}, Lyanzhikai/ruler/BooheeRuler;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lyanzhikai/ruler/R$color;->colorGray:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mScaleColor:I

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mCurrentScale:F

    const/16 v0, 0xa

    .line 64
    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mCount:I

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mPaddingStartAndEnd:I

    .line 69
    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mPaddingLeft:I

    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mPaddingTop:I

    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mPaddingRight:I

    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mPaddingBottom:I

    .line 72
    invoke-virtual {p0}, Lyanzhikai/ruler/BooheeRuler;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lyanzhikai/ruler/R$color;->colorDirtyWithe:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mRulerBackGroundColor:I

    .line 74
    iput-boolean p3, p0, Lyanzhikai/ruler/BooheeRuler;->mCanEdgeEffect:Z

    .line 76
    invoke-virtual {p0}, Lyanzhikai/ruler/BooheeRuler;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lyanzhikai/ruler/R$color;->colorForgiven:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lyanzhikai/ruler/BooheeRuler;->mEdgeColor:I

    const p3, 0x3dcccccd    # 0.1f

    .line 78
    iput p3, p0, Lyanzhikai/ruler/BooheeRuler;->mFactor:F

    .line 96
    invoke-direct {p0, p1, p2}, Lyanzhikai/ruler/BooheeRuler;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    invoke-direct {p0, p1}, Lyanzhikai/ruler/BooheeRuler;->initRuler(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lyanzhikai/ruler/BooheeRuler;)I
    .locals 0

    .line 28
    iget p0, p0, Lyanzhikai/ruler/BooheeRuler;->mStyle:I

    return p0
.end method

.method static synthetic access$100(Lyanzhikai/ruler/BooheeRuler;)I
    .locals 0

    .line 28
    iget p0, p0, Lyanzhikai/ruler/BooheeRuler;->mCursorWidth:I

    return p0
.end method

.method static synthetic access$200(Lyanzhikai/ruler/BooheeRuler;)I
    .locals 0

    .line 28
    iget p0, p0, Lyanzhikai/ruler/BooheeRuler;->mCursorHeight:I

    return p0
.end method

.method static synthetic access$300(Lyanzhikai/ruler/BooheeRuler;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 28
    iget-object p0, p0, Lyanzhikai/ruler/BooheeRuler;->mCursorDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lyanzhikai/ruler/R$styleable;->BooheeRuler:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 104
    sget p2, Lyanzhikai/ruler/R$styleable;->BooheeRuler_minScale:I

    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mMinScale:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lyanzhikai/ruler/BooheeRuler;->mMinScale:I

    .line 105
    sget p2, Lyanzhikai/ruler/R$styleable;->BooheeRuler_maxScale:I

    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mMaxScale:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lyanzhikai/ruler/BooheeRuler;->mMaxScale:I

    .line 106
    sget p2, Lyanzhikai/ruler/R$styleable;->BooheeRuler_cursorWidth:I

    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mCursorWidth:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lyanzhikai/ruler/BooheeRuler;->mCursorWidth:I

    .line 107
    sget p2, Lyanzhikai/ruler/R$styleable;->BooheeRuler_cursorHeight:I

    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mCursorHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lyanzhikai/ruler/BooheeRuler;->mCursorHeight:I

    .line 108
    sget p2, Lyanzhikai/ruler/R$styleable;->BooheeRuler_smallScaleWidth:I

    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mSmallScaleWidth:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lyanzhikai/ruler/BooheeRuler;->mSmallScaleWidth:I

    .line 109
    sget p2, Lyanzhikai/ruler/R$styleable;->BooheeRuler_smallScaleLength:I

    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mSmallScaleLength:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lyanzhikai/ruler/BooheeRuler;->mSmallScaleLength:I

    .line 110
    sget p2, Lyanzhikai/ruler/R$styleable;->BooheeRuler_bigScaleWidth:I

    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mBigScaleWidth:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lyanzhikai/ruler/BooheeRuler;->mBigScaleWidth:I

    .line 111
    sget p2, Lyanzhikai/ruler/R$styleable;->BooheeRuler_bigScaleLength:I

    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mBigScaleLength:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lyanzhikai/ruler/BooheeRuler;->mBigScaleLength:I

    .line 112
    sget p2, Lyanzhikai/ruler/R$styleable;->BooheeRuler_numberTextSize:I

    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mTextSize:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lyanzhikai/ruler/BooheeRuler;->mTextSize:I

    .line 113
    sget p2, Lyanzhikai/ruler/R$styleable;->BooheeRuler_textMarginHead:I

    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mTextMarginHead:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lyanzhikai/ruler/BooheeRuler;->mTextMarginHead:I

    .line 114
    sget p2, Lyanzhikai/ruler/R$styleable;->BooheeRuler_scaleInterval:I

    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mInterval:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lyanzhikai/ruler/BooheeRuler;->mInterval:I

    .line 115
    sget p2, Lyanzhikai/ruler/R$styleable;->BooheeRuler_numberTextColor:I

    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mTextColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lyanzhikai/ruler/BooheeRuler;->mTextColor:I

    .line 116
    sget p2, Lyanzhikai/ruler/R$styleable;->BooheeRuler_scaleColor:I

    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mScaleColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lyanzhikai/ruler/BooheeRuler;->mScaleColor:I

    .line 117
    sget p2, Lyanzhikai/ruler/R$styleable;->BooheeRuler_currentScale:I

    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mMaxScale:I

    iget v1, p0, Lyanzhikai/ruler/BooheeRuler;->mMinScale:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lyanzhikai/ruler/BooheeRuler;->mCurrentScale:F

    .line 118
    sget p2, Lyanzhikai/ruler/R$styleable;->BooheeRuler_count:I

    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mCount:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lyanzhikai/ruler/BooheeRuler;->mCount:I

    .line 119
    sget p2, Lyanzhikai/ruler/R$styleable;->BooheeRuler_cursorDrawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lyanzhikai/ruler/BooheeRuler;->mCursorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_0

    .line 121
    invoke-virtual {p0}, Lyanzhikai/ruler/BooheeRuler;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lyanzhikai/ruler/R$drawable;->cursor_shape:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lyanzhikai/ruler/BooheeRuler;->mCursorDrawable:Landroid/graphics/drawable/Drawable;

    .line 123
    :cond_0
    sget p2, Lyanzhikai/ruler/R$styleable;->BooheeRuler_paddingStartAndEnd:I

    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mPaddingStartAndEnd:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lyanzhikai/ruler/BooheeRuler;->mPaddingStartAndEnd:I

    .line 124
    sget p2, Lyanzhikai/ruler/R$styleable;->BooheeRuler_rulerStyle:I

    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mStyle:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lyanzhikai/ruler/BooheeRuler;->mStyle:I

    .line 125
    sget p2, Lyanzhikai/ruler/R$styleable;->BooheeRuler_rulerBackGround:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lyanzhikai/ruler/BooheeRuler;->mRulerBackGround:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_1

    .line 127
    sget p2, Lyanzhikai/ruler/R$styleable;->BooheeRuler_rulerBackGround:I

    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mRulerBackGroundColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lyanzhikai/ruler/BooheeRuler;->mRulerBackGroundColor:I

    .line 129
    :cond_1
    sget p2, Lyanzhikai/ruler/R$styleable;->BooheeRuler_canEdgeEffect:I

    iget-boolean v0, p0, Lyanzhikai/ruler/BooheeRuler;->mCanEdgeEffect:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lyanzhikai/ruler/BooheeRuler;->mCanEdgeEffect:Z

    .line 130
    sget p2, Lyanzhikai/ruler/R$styleable;->BooheeRuler_edgeColor:I

    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mEdgeColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lyanzhikai/ruler/BooheeRuler;->mEdgeColor:I

    .line 131
    sget p2, Lyanzhikai/ruler/R$styleable;->BooheeRuler_factor:I

    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mFactor:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lyanzhikai/ruler/BooheeRuler;->mFactor:F

    .line 132
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initDrawable()V
    .locals 2

    .line 177
    invoke-virtual {p0}, Lyanzhikai/ruler/BooheeRuler;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lyanzhikai/ruler/BooheeRuler$1;

    invoke-direct {v1, p0}, Lyanzhikai/ruler/BooheeRuler$1;-><init>(Lyanzhikai/ruler/BooheeRuler;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private initRuler(Landroid/content/Context;)V
    .locals 2

    .line 136
    iput-object p1, p0, Lyanzhikai/ruler/BooheeRuler;->mContext:Landroid/content/Context;

    .line 137
    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mStyle:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    new-instance v0, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;

    invoke-direct {v0, p1, p0}, Lyanzhikai/ruler/InnerRulers/RightHeadRuler;-><init>(Landroid/content/Context;Lyanzhikai/ruler/BooheeRuler;)V

    iput-object v0, p0, Lyanzhikai/ruler/BooheeRuler;->mInnerRuler:Lyanzhikai/ruler/InnerRulers/InnerRuler;

    .line 152
    invoke-direct {p0}, Lyanzhikai/ruler/BooheeRuler;->paddingVertical()V

    goto :goto_0

    .line 147
    :cond_1
    new-instance v0, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;

    invoke-direct {v0, p1, p0}, Lyanzhikai/ruler/InnerRulers/LeftHeadRuler;-><init>(Landroid/content/Context;Lyanzhikai/ruler/BooheeRuler;)V

    iput-object v0, p0, Lyanzhikai/ruler/BooheeRuler;->mInnerRuler:Lyanzhikai/ruler/InnerRulers/InnerRuler;

    .line 148
    invoke-direct {p0}, Lyanzhikai/ruler/BooheeRuler;->paddingVertical()V

    goto :goto_0

    .line 143
    :cond_2
    new-instance v0, Lyanzhikai/ruler/InnerRulers/BottomHeadRuler;

    invoke-direct {v0, p1, p0}, Lyanzhikai/ruler/InnerRulers/BottomHeadRuler;-><init>(Landroid/content/Context;Lyanzhikai/ruler/BooheeRuler;)V

    iput-object v0, p0, Lyanzhikai/ruler/BooheeRuler;->mInnerRuler:Lyanzhikai/ruler/InnerRulers/InnerRuler;

    .line 144
    invoke-direct {p0}, Lyanzhikai/ruler/BooheeRuler;->paddingHorizontal()V

    goto :goto_0

    .line 139
    :cond_3
    new-instance v0, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;

    invoke-direct {v0, p1, p0}, Lyanzhikai/ruler/InnerRulers/TopHeadRuler;-><init>(Landroid/content/Context;Lyanzhikai/ruler/BooheeRuler;)V

    iput-object v0, p0, Lyanzhikai/ruler/BooheeRuler;->mInnerRuler:Lyanzhikai/ruler/InnerRulers/InnerRuler;

    .line 140
    invoke-direct {p0}, Lyanzhikai/ruler/BooheeRuler;->paddingHorizontal()V

    .line 157
    :goto_0
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 158
    iget-object v0, p0, Lyanzhikai/ruler/BooheeRuler;->mInnerRuler:Lyanzhikai/ruler/InnerRulers/InnerRuler;

    invoke-virtual {v0, p1}, Lyanzhikai/ruler/InnerRulers/InnerRuler;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object p1, p0, Lyanzhikai/ruler/BooheeRuler;->mInnerRuler:Lyanzhikai/ruler/InnerRulers/InnerRuler;

    invoke-virtual {p0, p1}, Lyanzhikai/ruler/BooheeRuler;->addView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 161
    invoke-virtual {p0, p1}, Lyanzhikai/ruler/BooheeRuler;->setWillNotDraw(Z)V

    .line 163
    invoke-direct {p0}, Lyanzhikai/ruler/BooheeRuler;->initDrawable()V

    .line 164
    invoke-direct {p0}, Lyanzhikai/ruler/BooheeRuler;->initRulerBackground()V

    return-void
.end method

.method private initRulerBackground()V
    .locals 2

    .line 168
    iget-object v0, p0, Lyanzhikai/ruler/BooheeRuler;->mRulerBackGround:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 169
    iget-object v1, p0, Lyanzhikai/ruler/BooheeRuler;->mInnerRuler:Lyanzhikai/ruler/InnerRulers/InnerRuler;

    invoke-virtual {v1, v0}, Lyanzhikai/ruler/InnerRulers/InnerRuler;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lyanzhikai/ruler/BooheeRuler;->mInnerRuler:Lyanzhikai/ruler/InnerRulers/InnerRuler;

    iget v1, p0, Lyanzhikai/ruler/BooheeRuler;->mRulerBackGroundColor:I

    invoke-virtual {v0, v1}, Lyanzhikai/ruler/InnerRulers/InnerRuler;->setBackgroundColor(I)V

    return-void
.end method

.method private paddingHorizontal()V
    .locals 1

    .line 236
    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mPaddingStartAndEnd:I

    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mPaddingLeft:I

    .line 237
    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mPaddingRight:I

    const/4 v0, 0x0

    .line 238
    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mPaddingTop:I

    .line 239
    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mPaddingBottom:I

    return-void
.end method

.method private paddingVertical()V
    .locals 1

    .line 243
    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mPaddingStartAndEnd:I

    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mPaddingTop:I

    .line 244
    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mPaddingBottom:I

    const/4 v0, 0x0

    .line 245
    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mPaddingLeft:I

    .line 246
    iput v0, p0, Lyanzhikai/ruler/BooheeRuler;->mPaddingRight:I

    return-void
.end method


# virtual methods
.method public canEdgeEffect()Z
    .locals 1

    .line 294
    iget-boolean v0, p0, Lyanzhikai/ruler/BooheeRuler;->mCanEdgeEffect:Z

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 222
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 224
    iget-object v0, p0, Lyanzhikai/ruler/BooheeRuler;->mCursorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getBigScaleLength()I
    .locals 1

    .line 339
    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mBigScaleLength:I

    return v0
.end method

.method public getBigScaleWidth()I
    .locals 1

    .line 347
    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mBigScaleWidth:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 403
    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mCount:I

    return v0
.end method

.method public getCurrentScale()F
    .locals 1

    .line 298
    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mCurrentScale:F

    return v0
.end method

.method public getCursorHeight()I
    .locals 1

    .line 330
    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mCursorHeight:I

    return v0
.end method

.method public getCursorWidth()I
    .locals 1

    .line 322
    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mCursorWidth:I

    return v0
.end method

.method public getEdgeColor()I
    .locals 1

    .line 276
    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mEdgeColor:I

    return v0
.end method

.method public getFactor()F
    .locals 1

    .line 285
    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mFactor:F

    return v0
.end method

.method public getInterval()I
    .locals 1

    .line 387
    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mInterval:I

    return v0
.end method

.method public getMaxScale()I
    .locals 1

    .line 314
    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mMaxScale:I

    return v0
.end method

.method public getMinScale()I
    .locals 1

    .line 306
    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mMinScale:I

    return v0
.end method

.method public getScaleColor()I
    .locals 1

    .line 395
    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mScaleColor:I

    return v0
.end method

.method public getSmallScaleLength()I
    .locals 1

    .line 355
    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mSmallScaleLength:I

    return v0
.end method

.method public getSmallScaleWidth()I
    .locals 1

    .line 363
    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mSmallScaleWidth:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 391
    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mTextColor:I

    return v0
.end method

.method public getTextMarginHead()I
    .locals 1

    .line 371
    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mTextMarginHead:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .line 379
    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mTextSize:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 217
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    if-eqz p1, :cond_0

    .line 231
    iget-object p1, p0, Lyanzhikai/ruler/BooheeRuler;->mInnerRuler:Lyanzhikai/ruler/InnerRulers/InnerRuler;

    iget v0, p0, Lyanzhikai/ruler/BooheeRuler;->mPaddingLeft:I

    iget v1, p0, Lyanzhikai/ruler/BooheeRuler;->mPaddingTop:I

    sub-int/2addr p4, p2

    iget p2, p0, Lyanzhikai/ruler/BooheeRuler;->mPaddingRight:I

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget p2, p0, Lyanzhikai/ruler/BooheeRuler;->mPaddingBottom:I

    sub-int/2addr p5, p2

    invoke-virtual {p1, v0, v1, p4, p5}, Lyanzhikai/ruler/InnerRulers/InnerRuler;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 209
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 264
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 265
    invoke-direct {p0}, Lyanzhikai/ruler/BooheeRuler;->initDrawable()V

    return-void
.end method

.method public refreshRuler()V
    .locals 2

    .line 269
    invoke-direct {p0}, Lyanzhikai/ruler/BooheeRuler;->initDrawable()V

    .line 270
    iget-object v0, p0, Lyanzhikai/ruler/BooheeRuler;->mInnerRuler:Lyanzhikai/ruler/InnerRulers/InnerRuler;

    iget-object v1, p0, Lyanzhikai/ruler/BooheeRuler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lyanzhikai/ruler/InnerRulers/InnerRuler;->init(Landroid/content/Context;)V

    .line 271
    iget-object v0, p0, Lyanzhikai/ruler/BooheeRuler;->mInnerRuler:Lyanzhikai/ruler/InnerRulers/InnerRuler;

    invoke-virtual {v0}, Lyanzhikai/ruler/InnerRulers/InnerRuler;->refreshSize()V

    return-void
.end method

.method public setBigScaleLength(I)V
    .locals 0

    .line 335
    iput p1, p0, Lyanzhikai/ruler/BooheeRuler;->mBigScaleLength:I

    return-void
.end method

.method public setBigScaleWidth(I)V
    .locals 0

    .line 343
    iput p1, p0, Lyanzhikai/ruler/BooheeRuler;->mBigScaleWidth:I

    return-void
.end method

.method public setCallback(Lyanzhikai/ruler/RulerCallback;)V
    .locals 1

    .line 251
    iget-object v0, p0, Lyanzhikai/ruler/BooheeRuler;->mInnerRuler:Lyanzhikai/ruler/InnerRulers/InnerRuler;

    invoke-virtual {v0, p1}, Lyanzhikai/ruler/InnerRulers/InnerRuler;->setRulerCallback(Lyanzhikai/ruler/RulerCallback;)V

    return-void
.end method

.method public setCanEdgeEffect(Z)V
    .locals 0

    .line 281
    iput-boolean p1, p0, Lyanzhikai/ruler/BooheeRuler;->mCanEdgeEffect:Z

    return-void
.end method

.method public setCount(I)V
    .locals 0

    .line 399
    iput p1, p0, Lyanzhikai/ruler/BooheeRuler;->mCount:I

    return-void
.end method

.method public setCurrentScale(F)V
    .locals 1

    .line 257
    iput p1, p0, Lyanzhikai/ruler/BooheeRuler;->mCurrentScale:F

    .line 258
    iget-object v0, p0, Lyanzhikai/ruler/BooheeRuler;->mInnerRuler:Lyanzhikai/ruler/InnerRulers/InnerRuler;

    invoke-virtual {v0, p1}, Lyanzhikai/ruler/InnerRulers/InnerRuler;->setCurrentScale(F)V

    return-void
.end method

.method public setCursorHeight(I)V
    .locals 0

    .line 326
    iput p1, p0, Lyanzhikai/ruler/BooheeRuler;->mCursorHeight:I

    return-void
.end method

.method public setCursorWidth(I)V
    .locals 0

    .line 318
    iput p1, p0, Lyanzhikai/ruler/BooheeRuler;->mCursorWidth:I

    return-void
.end method

.method public setFactor(F)V
    .locals 0

    .line 289
    iput p1, p0, Lyanzhikai/ruler/BooheeRuler;->mFactor:F

    .line 290
    iget-object p1, p0, Lyanzhikai/ruler/BooheeRuler;->mInnerRuler:Lyanzhikai/ruler/InnerRulers/InnerRuler;

    invoke-virtual {p1}, Lyanzhikai/ruler/InnerRulers/InnerRuler;->postInvalidate()V

    return-void
.end method

.method public setInterval(I)V
    .locals 0

    .line 383
    iput p1, p0, Lyanzhikai/ruler/BooheeRuler;->mInterval:I

    return-void
.end method

.method public setMaxScale(I)V
    .locals 0

    .line 310
    iput p1, p0, Lyanzhikai/ruler/BooheeRuler;->mMaxScale:I

    return-void
.end method

.method public setMinScale(I)V
    .locals 0

    .line 302
    iput p1, p0, Lyanzhikai/ruler/BooheeRuler;->mMinScale:I

    return-void
.end method

.method public setSmallScaleLength(I)V
    .locals 0

    .line 351
    iput p1, p0, Lyanzhikai/ruler/BooheeRuler;->mSmallScaleLength:I

    return-void
.end method

.method public setSmallScaleWidth(I)V
    .locals 0

    .line 359
    iput p1, p0, Lyanzhikai/ruler/BooheeRuler;->mSmallScaleWidth:I

    return-void
.end method

.method public setTextMarginTop(I)V
    .locals 0

    .line 367
    iput p1, p0, Lyanzhikai/ruler/BooheeRuler;->mTextMarginHead:I

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .line 375
    iput p1, p0, Lyanzhikai/ruler/BooheeRuler;->mTextSize:I

    return-void
.end method
