.class Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$2;
.super Landroid/graphics/drawable/Drawable;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 323
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$2;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 326
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$2;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->viewWidth:I

    div-int/lit8 v0, v0, 0x6

    int-to-float v2, v0

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$2;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->access$100(Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$2;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->viewWidth:I

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x6

    int-to-float v4, v0

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$2;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->access$100(Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;)[I

    move-result-object v0

    aget v0, v0, v1

    int-to-float v5, v0

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$2;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 327
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$2;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    iget p1, p1, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->viewWidth:I

    div-int/lit8 p1, p1, 0x6

    int-to-float v8, p1

    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$2;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->access$100(Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;)[I

    move-result-object p1

    const/4 v0, 0x1

    aget p1, p1, v0

    int-to-float v9, p1

    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$2;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    iget p1, p1, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->viewWidth:I

    mul-int/lit8 p1, p1, 0x5

    div-int/lit8 p1, p1, 0x6

    int-to-float v10, p1

    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$2;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->access$100(Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;)[I

    move-result-object p1

    aget p1, p1, v0

    int-to-float v11, p1

    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$2;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    iget-object v12, p1, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->paint:Landroid/graphics/Paint;

    move-object v7, v1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
