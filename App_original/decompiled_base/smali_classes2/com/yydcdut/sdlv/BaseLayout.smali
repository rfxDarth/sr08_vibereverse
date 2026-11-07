.class public abstract Lcom/yydcdut/sdlv/BaseLayout;
.super Landroid/widget/FrameLayout;
.source "BaseLayout.java"


# instance fields
.field protected mMenuItem:Lcom/yydcdut/sdlv/MenuItem;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/yydcdut/sdlv/MenuItem;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Lcom/yydcdut/sdlv/BaseLayout;->mMenuItem:Lcom/yydcdut/sdlv/MenuItem;

    return-void
.end method


# virtual methods
.method protected abstract build()V
.end method

.method public abstract getImageView()Landroid/widget/ImageView;
.end method

.method public abstract getTextView()Landroid/widget/TextView;
.end method
