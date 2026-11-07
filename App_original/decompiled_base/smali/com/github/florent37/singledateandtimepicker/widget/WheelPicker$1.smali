.class Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$1;
.super Ljava/lang/Object;
.source "WheelPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;


# direct methods
.method constructor <init>(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$1;->this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$1;->this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    iget-object v0, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$1;->this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    iget-object v0, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$1;->this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    invoke-static {v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->access$000(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$1;->this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    invoke-static {v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->access$100(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 112
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$1;->this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    invoke-static {v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->access$200(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)I

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$1;->this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    invoke-static {v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->access$300(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$1;->this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    invoke-static {v2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->access$200(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)I

    move-result v2

    div-int/2addr v1, v2

    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$1;->this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    invoke-static {v2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->access$400(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/2addr v1, v0

    if-gez v1, :cond_3

    add-int/2addr v1, v0

    .line 115
    :cond_3
    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$1;->this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    invoke-static {v2, v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->access$502(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;I)I

    .line 116
    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$1;->this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    invoke-static {v2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->access$600(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)V

    .line 117
    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$1;->this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    invoke-static {v2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->access$700(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$OnWheelChangeListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 118
    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$1;->this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    invoke-static {v2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->access$700(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$OnWheelChangeListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$OnWheelChangeListener;->onWheelSelected(I)V

    .line 119
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$1;->this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    invoke-static {v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->access$700(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$OnWheelChangeListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$OnWheelChangeListener;->onWheelScrollStateChanged(I)V

    .line 122
    :cond_4
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$1;->this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    invoke-static {v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->access$000(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 123
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$1;->this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    invoke-static {v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->access$700(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$OnWheelChangeListener;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 124
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$1;->this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    invoke-static {v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->access$700(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$OnWheelChangeListener;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$OnWheelChangeListener;->onWheelScrollStateChanged(I)V

    .line 127
    :cond_5
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$1;->this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    invoke-static {v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->access$000(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-static {v1, v2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->access$302(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;I)I

    .line 129
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$1;->this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    invoke-static {v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->access$300(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$1;->this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    invoke-static {v2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->access$200(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)I

    move-result v2

    div-int/2addr v1, v2

    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$1;->this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    invoke-static {v2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->access$400(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/2addr v1, v0

    .line 130
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$1;->this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    invoke-static {v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->access$800(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 131
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$1;->this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    invoke-static {v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->access$800(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$OnItemSelectedListener;

    move-result-object v0

    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$1;->this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    invoke-interface {v0, v2, v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$OnItemSelectedListener;->onCurrentItemOfScroll(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;I)V

    .line 133
    :cond_6
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$1;->this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    iget-object v2, v0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->adapter:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;

    invoke-virtual {v2, v1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->onItemCurrentScroll(ILjava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$1;->this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->postInvalidate()V

    .line 136
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$1;->this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    invoke-static {v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->access$900(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_0
    return-void
.end method
