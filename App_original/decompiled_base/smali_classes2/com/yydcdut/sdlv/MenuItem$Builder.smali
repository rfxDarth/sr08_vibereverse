.class public Lcom/yydcdut/sdlv/MenuItem$Builder;
.super Ljava/lang/Object;
.source "MenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yydcdut/sdlv/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private background:Landroid/graphics/drawable/Drawable;

.field private direction:I

.field private icon:Landroid/graphics/drawable/Drawable;

.field private text:Ljava/lang/String;

.field private textColor:I

.field private textSize:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    .line 47
    iput v0, p0, Lcom/yydcdut/sdlv/MenuItem$Builder;->width:I

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/yydcdut/sdlv/MenuItem$Builder;->text:Ljava/lang/String;

    const/16 v1, 0xe

    .line 49
    iput v1, p0, Lcom/yydcdut/sdlv/MenuItem$Builder;->textSize:I

    const/high16 v1, -0x1000000

    .line 50
    iput v1, p0, Lcom/yydcdut/sdlv/MenuItem$Builder;->textColor:I

    .line 51
    iput-object v0, p0, Lcom/yydcdut/sdlv/MenuItem$Builder;->icon:Landroid/graphics/drawable/Drawable;

    .line 52
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/yydcdut/sdlv/MenuItem$Builder;->background:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    .line 53
    iput v0, p0, Lcom/yydcdut/sdlv/MenuItem$Builder;->direction:I

    return-void
.end method


# virtual methods
.method public build()Lcom/yydcdut/sdlv/MenuItem;
    .locals 8

    .line 119
    new-instance v0, Lcom/yydcdut/sdlv/MenuItem;

    iget v1, p0, Lcom/yydcdut/sdlv/MenuItem$Builder;->width:I

    iget-object v2, p0, Lcom/yydcdut/sdlv/MenuItem$Builder;->text:Ljava/lang/String;

    iget v3, p0, Lcom/yydcdut/sdlv/MenuItem$Builder;->textSize:I

    iget v4, p0, Lcom/yydcdut/sdlv/MenuItem$Builder;->textColor:I

    iget-object v5, p0, Lcom/yydcdut/sdlv/MenuItem$Builder;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/yydcdut/sdlv/MenuItem$Builder;->background:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/yydcdut/sdlv/MenuItem$Builder;->direction:I

    invoke-direct/range {v0 .. v7}, Lcom/yydcdut/sdlv/MenuItem;-><init>(ILjava/lang/String;IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    return-object v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/yydcdut/sdlv/MenuItem$Builder;->background:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDirection()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/yydcdut/sdlv/MenuItem$Builder;->direction:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/yydcdut/sdlv/MenuItem$Builder;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/yydcdut/sdlv/MenuItem$Builder;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/yydcdut/sdlv/MenuItem$Builder;->textColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/yydcdut/sdlv/MenuItem$Builder;->textSize:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/yydcdut/sdlv/MenuItem$Builder;->width:I

    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)Lcom/yydcdut/sdlv/MenuItem$Builder;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/yydcdut/sdlv/MenuItem$Builder;->background:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setDirection(I)Lcom/yydcdut/sdlv/MenuItem$Builder;
    .locals 0

    .line 86
    iput p1, p0, Lcom/yydcdut/sdlv/MenuItem$Builder;->direction:I

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/yydcdut/sdlv/MenuItem$Builder;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/yydcdut/sdlv/MenuItem$Builder;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/yydcdut/sdlv/MenuItem$Builder;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/yydcdut/sdlv/MenuItem$Builder;->text:Ljava/lang/String;

    return-object p0
.end method

.method public setTextColor(I)Lcom/yydcdut/sdlv/MenuItem$Builder;
    .locals 0

    .line 71
    iput p1, p0, Lcom/yydcdut/sdlv/MenuItem$Builder;->textColor:I

    return-object p0
.end method

.method public setTextSize(I)Lcom/yydcdut/sdlv/MenuItem$Builder;
    .locals 0

    .line 66
    iput p1, p0, Lcom/yydcdut/sdlv/MenuItem$Builder;->textSize:I

    return-object p0
.end method

.method public setWidth(I)Lcom/yydcdut/sdlv/MenuItem$Builder;
    .locals 0

    .line 56
    iput p1, p0, Lcom/yydcdut/sdlv/MenuItem$Builder;->width:I

    return-object p0
.end method
