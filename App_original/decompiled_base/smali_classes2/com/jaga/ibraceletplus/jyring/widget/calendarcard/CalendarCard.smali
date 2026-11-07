.class public Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;
.super Landroid/widget/RelativeLayout;
.source "CalendarCard.java"


# instance fields
.field private cardGrid:Landroid/widget/LinearLayout;

.field private cardTitle:Landroid/widget/TextView;

.field private cells:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;",
            ">;"
        }
    .end annotation
.end field

.field private dateDisplay:Ljava/util/Calendar;

.field private itemLayout:I

.field private ivNextPage:Landroid/widget/ImageView;

.field private ivPrePage:Landroid/widget/ImageView;

.field private mOnCellItemChange:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnCellItemChange;

.field private mOnCellItemClick:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnCellItemClick;

.field private mOnItemRender:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnItemRender;

.field private mOnItemRenderDefault:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnItemRender;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d0068

    .line 23
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->itemLayout:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->cells:Ljava/util/ArrayList;

    .line 46
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0d0068

    .line 23
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->itemLayout:I

    .line 29
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->cells:Ljava/util/ArrayList;

    .line 41
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f0d0068

    .line 23
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->itemLayout:I

    .line 29
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->cells:Ljava/util/ArrayList;

    .line 36
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;)Ljava/util/Calendar;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->dateDisplay:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;)Ljava/util/ArrayList;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->cells:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->updateCells(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;)Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnCellItemChange;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->mOnCellItemChange:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnCellItemChange;

    return-object p0
.end method

.method private getDaySpacing(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x6

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x2

    return p1
.end method

.method private getDaySpacingEnd(I)I
    .locals 0

    rsub-int/lit8 p1, p1, 0x8

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 7

    .line 50
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 51
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d006c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->dateDisplay:Ljava/util/Calendar;

    if-nez v1, :cond_1

    .line 54
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->dateDisplay:Ljava/util/Calendar;

    :cond_1
    const v1, 0x7f0a0202

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->ivPrePage:Landroid/widget/ImageView;

    .line 59
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard$1;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard$1;-><init>(Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a01fd

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->ivNextPage:Landroid/widget/ImageView;

    .line 73
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard$2;

    invoke-direct {v2, p0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard$2;-><init>(Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a00c3

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->cardTitle:Landroid/widget/TextView;

    const v1, 0x7f0a00c2

    .line 86
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->cardGrid:Landroid/widget/LinearLayout;

    .line 88
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->cardTitle:Landroid/widget/TextView;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "MMM yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->dateDisplay:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v4, 0x7

    .line 91
    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    const v2, 0x7f0a00ba

    .line 93
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v6, v5}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->add(II)V

    const v2, 0x7f0a00bb

    .line 96
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v1, v4, v6, v5}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->add(II)V

    const v2, 0x7f0a00bc

    .line 99
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v1, v4, v6, v5}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->add(II)V

    const v2, 0x7f0a00bd

    .line 102
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v1, v4, v6, v5}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->add(II)V

    const v2, 0x7f0a00be

    .line 105
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v1, v4, v6, v5}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->add(II)V

    const v2, 0x7f0a00bf

    .line 108
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v1, v4, v6, v5}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->add(II)V

    const v2, 0x7f0a00c0

    .line 111
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v1, v4, v6, v5}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v1, 0x0

    .line 114
    :goto_0
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->cardGrid:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 115
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->cardGrid:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    .line 116
    :goto_1
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 117
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;

    .line 118
    new-instance v6, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard$3;

    invoke-direct {v6, p0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard$3;-><init>(Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;)V

    invoke-virtual {v5, v6}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget v6, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->itemLayout:I

    invoke-virtual {p1, v6, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 131
    invoke-virtual {v5, v6}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->addView(Landroid/view/View;)V

    .line 132
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->cells:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    :cond_3
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->addView(Landroid/view/View;)V

    .line 138
    new-instance p1, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard$4;

    invoke-direct {p1, p0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard$4;-><init>(Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;)V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->mOnItemRenderDefault:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnItemRender;

    .line 182
    invoke-direct {p0, v3}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->updateCells(Z)V

    return-void
.end method

.method private updateCells(Z)V
    .locals 12

    const/4 v0, 0x0

    .line 198
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 199
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->dateDisplay:Ljava/util/Calendar;

    if-eqz v2, :cond_0

    .line 200
    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    goto :goto_0

    .line 202
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    :goto_0
    const/4 v3, 0x5

    const/4 v4, 0x1

    .line 204
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v5, 0x7

    .line 206
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->getDaySpacing(I)I

    move-result v6

    if-lez v6, :cond_2

    .line 210
    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Calendar;

    const/4 v8, 0x2

    const/4 v9, -0x1

    .line 211
    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->add(II)V

    .line 212
    invoke-virtual {v7, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v8

    sub-int/2addr v8, v6

    add-int/2addr v8, v4

    invoke-virtual {v7, v3, v8}, Ljava/util/Calendar;->set(II)V

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_2

    .line 214
    iget-object v9, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->cells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;

    .line 215
    new-instance v10, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v10, v0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->setEnabled(Z)Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->setTag(Ljava/lang/Object;)V

    .line 216
    invoke-virtual {v9, v0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->setEnabled(Z)V

    .line 217
    iget-object v10, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->mOnItemRender:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnItemRender;

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->mOnItemRenderDefault:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnItemRender;

    :cond_1
    invoke-virtual {v9}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;

    invoke-interface {v10, v9, v11}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnItemRender;->onRender(Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;)V

    .line 218
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 219
    invoke-virtual {v7, v3, v4}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 223
    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 224
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v7

    invoke-virtual {v2, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 225
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v4

    :goto_2
    if-ge v6, v7, :cond_5

    add-int/lit8 v8, v6, -0x1

    .line 227
    invoke-virtual {v2, v3, v8}, Ljava/util/Calendar;->set(II)V

    .line 228
    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Calendar;

    .line 229
    invoke-virtual {v8, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 230
    iget-object v9, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->cells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;

    .line 231
    new-instance v10, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v10, v4}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->setEnabled(Z)Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->setDate(Ljava/util/Calendar;)Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->setTag(Ljava/lang/Object;)V

    .line 232
    invoke-virtual {v9, v4}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->setEnabled(Z)V

    if-eqz p1, :cond_3

    .line 233
    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v10, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->dateDisplay:Ljava/util/Calendar;

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ne v8, v10, :cond_3

    .line 234
    invoke-virtual {v9, v4}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->setChecked(Z)V

    .line 236
    :cond_3
    invoke-virtual {v9, v0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->setVisibility(I)V

    .line 237
    iget-object v8, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->mOnItemRender:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnItemRender;

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->mOnItemRenderDefault:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnItemRender;

    :cond_4
    invoke-virtual {v9}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;

    invoke-interface {v8, v9, v10}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnItemRender;->onRender(Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;)V

    .line 238
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 241
    :cond_5
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->dateDisplay:Ljava/util/Calendar;

    if-eqz p1, :cond_6

    .line 242
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    goto :goto_3

    .line 244
    :cond_6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 246
    :goto_3
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {p1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 248
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->getDaySpacingEnd(I)I

    move-result p1

    if-lez p1, :cond_8

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p1, :cond_8

    .line 252
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->cells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;

    .line 253
    new-instance v5, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v5, v0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->setEnabled(Z)Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->setTag(Ljava/lang/Object;)V

    .line 254
    invoke-virtual {v3, v0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->setEnabled(Z)V

    .line 255
    invoke-virtual {v3, v0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->setVisibility(I)V

    .line 256
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->mOnItemRender:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnItemRender;

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->mOnItemRenderDefault:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnItemRender;

    :cond_7
    invoke-virtual {v3}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;

    invoke-interface {v5, v3, v6}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnItemRender;->onRender(Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;)V

    .line 257
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4

    .line 261
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->cells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_9

    .line 262
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_5
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->cells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_9

    .line 263
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->cells:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_9
    return-void
.end method


# virtual methods
.method public getDateDisplay()Ljava/util/Calendar;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->dateDisplay:Ljava/util/Calendar;

    return-object v0
.end method

.method public getItemLayout()I
    .locals 1

    .line 280
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->itemLayout:I

    return v0
.end method

.method public getOnCellItemClick()Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnCellItemClick;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->mOnCellItemClick:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnCellItemClick;

    return-object v0
.end method

.method public getOnItemRender()Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnItemRender;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->mOnItemRender:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnItemRender;

    return-object v0
.end method

.method public notifyChanges()V
    .locals 1

    const/4 v0, 0x0

    .line 323
    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->updateCells(Z)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 270
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    move p3, p2

    move p2, p1

    move-object p1, p0

    if-eqz p2, :cond_0

    .line 271
    iget-object p2, p1, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->cells:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_0

    sub-int/2addr p4, p3

    .line 272
    div-int/lit8 p4, p4, 0x7

    .line 273
    iget-object p2, p1, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->cells:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;

    .line 274
    invoke-virtual {p3}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p4, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBackToday()V
    .locals 3

    .line 326
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->dateDisplay:Ljava/util/Calendar;

    .line 327
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->setDateDisplay(Ljava/util/Calendar;)V

    .line 328
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->cells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;

    const/4 v2, 0x0

    .line 329
    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 330
    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->updateCells(Z)V

    .line 331
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->mOnCellItemChange:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnCellItemChange;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->dateDisplay:Ljava/util/Calendar;

    invoke-interface {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnCellItemChange;->OnCellItemChange(Ljava/util/Calendar;)V

    return-void
.end method

.method public setDateDisplay(Ljava/util/Calendar;)V
    .locals 4

    .line 302
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->dateDisplay:Ljava/util/Calendar;

    .line 303
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->cardTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MMM yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setItemLayout(I)V
    .locals 0

    .line 284
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->itemLayout:I

    return-void
.end method

.method public setOnCellItemChange(Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnCellItemChange;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->mOnCellItemChange:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnCellItemChange;

    return-void
.end method

.method public setOnCellItemClick(Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnCellItemClick;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->mOnCellItemClick:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnCellItemClick;

    return-void
.end method

.method public setOnItemRender(Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnItemRender;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CalendarCard;->mOnItemRender:Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnItemRender;

    return-void
.end method
