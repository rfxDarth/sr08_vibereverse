.class public Lcom/jaga/ibraceletplus/jyring/adapter/SingleChoiceAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SingleChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private selectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SingleChoiceAdapter;->selectedPosition:I

    return-void
.end method


# virtual methods
.method public getSelectedPosition()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SingleChoiceAdapter;->selectedPosition:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/adapter/SingleChoiceAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d0088

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0a055a

    .line 39
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v1, 0x7f0a0351

    .line 40
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    const v2, 0x7f0a014a

    .line 41
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 43
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/adapter/SingleChoiceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget p3, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SingleChoiceAdapter;->selectedPosition:I

    const/4 v3, 0x1

    if-ne p1, p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {v1, p3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 47
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/adapter/SingleChoiceAdapter;->getCount()I

    move-result p3

    sub-int/2addr p3, v3

    if-ne p1, p3, :cond_2

    const/16 v0, 0x8

    :cond_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    return-object p2
.end method

.method public setSelectedPosition(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SingleChoiceAdapter;->selectedPosition:I

    .line 25
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/adapter/SingleChoiceAdapter;->notifyDataSetChanged()V

    return-void
.end method
