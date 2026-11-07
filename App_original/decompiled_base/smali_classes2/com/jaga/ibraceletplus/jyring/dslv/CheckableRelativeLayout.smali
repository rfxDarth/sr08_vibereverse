.class public Lcom/jaga/ibraceletplus/jyring/dslv/CheckableRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "CheckableRelativeLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECKABLE_CHILD_INDEX:I


# instance fields
.field private child:Landroid/widget/Checkable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/CheckableRelativeLayout;->child:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 19
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/CheckableRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/CheckableRelativeLayout;->child:Landroid/widget/Checkable;

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/CheckableRelativeLayout;->child:Landroid/widget/Checkable;

    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/CheckableRelativeLayout;->child:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    return-void
.end method
