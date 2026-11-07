.class public final Lcom/twitter/sdk/android/tweetui/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AspectRatioFrameLayout:[I

.field public static final AspectRatioFrameLayout_tw__frame_layout_aspect_ratio:I = 0x0

.field public static final AspectRatioFrameLayout_tw__frame_layout_dimension_to_adjust:I = 0x1

.field public static final ToggleImageButton:[I

.field public static final ToggleImageButton_contentDescriptionOff:I = 0x0

.field public static final ToggleImageButton_contentDescriptionOn:I = 0x1

.field public static final ToggleImageButton_state_toggled_on:I = 0x2

.field public static final ToggleImageButton_toggleOnClick:I = 0x3

.field public static final tw__TweetView:[I

.field public static final tw__TweetView_tw__action_color:I = 0x0

.field public static final tw__TweetView_tw__action_highlight_color:I = 0x1

.field public static final tw__TweetView_tw__container_bg_color:I = 0x2

.field public static final tw__TweetView_tw__primary_text_color:I = 0x3

.field public static final tw__TweetView_tw__tweet_actions_enabled:I = 0x4

.field public static final tw__TweetView_tw__tweet_id:I = 0x5


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const v0, 0x7f0405ff

    const v1, 0x7f040600

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/twitter/sdk/android/tweetui/R$styleable;->AspectRatioFrameLayout:[I

    const v0, 0x7f04052e

    const v1, 0x7f0405d8

    const v2, 0x7f040179

    const v3, 0x7f04017a

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/twitter/sdk/android/tweetui/R$styleable;->ToggleImageButton:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/twitter/sdk/android/tweetui/R$styleable;->tw__TweetView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0405fc
        0x7f0405fd
        0x7f0405fe
        0x7f040601
        0x7f040602
        0x7f040603
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
