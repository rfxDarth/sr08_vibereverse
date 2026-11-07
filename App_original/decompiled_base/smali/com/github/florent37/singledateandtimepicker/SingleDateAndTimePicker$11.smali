.class Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$11;
.super Ljava/lang/Object;
.source "SingleDateAndTimePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->checkBeforeMinDate(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;


# direct methods
.method constructor <init>(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$11;->this$0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 436
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$11;->this$0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    invoke-static {v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->access$800(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$11;->this$0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->access$900(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$11;->this$0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    invoke-static {v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->access$1000(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    .line 438
    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$11;->this$0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    invoke-static {v2}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->access$800(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->findIndexOfDate(Ljava/util/Date;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->scrollTo(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
