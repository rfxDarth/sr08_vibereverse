.class public Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;
.super Landroid/widget/RelativeLayout;
.source "CheckableLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private checked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x10100a0

    .line 12
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->checked:Z

    .line 31
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->checked:Z

    .line 26
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->checked:Z

    .line 21
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->init()V

    return-void
.end method

.method private init()V
    .locals 0

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->checked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 66
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 67
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 80
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 4

    .line 50
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->checked:Z

    .line 52
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->refreshDrawableState()V

    .line 55
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 57
    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 58
    instance-of v3, v2, Landroid/widget/Checkable;

    if-eqz v3, :cond_0

    .line 59
    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->checked:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->checked:Z

    return-void
.end method
