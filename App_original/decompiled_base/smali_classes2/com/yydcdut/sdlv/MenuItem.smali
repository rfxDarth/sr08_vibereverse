.class public final Lcom/yydcdut/sdlv/MenuItem;
.super Ljava/lang/Object;
.source "MenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yydcdut/sdlv/MenuItem$Builder;
    }
.end annotation


# static fields
.field public static final DIRECTION_LEFT:I = 0x1

.field public static final DIRECTION_RIGHT:I = -0x1


# instance fields
.field public final background:Landroid/graphics/drawable/Drawable;

.field public final direction:I

.field public final icon:Landroid/graphics/drawable/Drawable;

.field public final text:Ljava/lang/String;

.field public final textColor:I

.field public final textSize:I

.field public final width:I


# direct methods
.method public constructor <init>(ILjava/lang/String;IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/yydcdut/sdlv/MenuItem;->width:I

    .line 38
    iput-object p2, p0, Lcom/yydcdut/sdlv/MenuItem;->text:Ljava/lang/String;

    .line 39
    iput p3, p0, Lcom/yydcdut/sdlv/MenuItem;->textSize:I

    .line 40
    iput p4, p0, Lcom/yydcdut/sdlv/MenuItem;->textColor:I

    .line 41
    iput-object p5, p0, Lcom/yydcdut/sdlv/MenuItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 42
    iput-object p6, p0, Lcom/yydcdut/sdlv/MenuItem;->background:Landroid/graphics/drawable/Drawable;

    .line 43
    iput p7, p0, Lcom/yydcdut/sdlv/MenuItem;->direction:I

    return-void
.end method
