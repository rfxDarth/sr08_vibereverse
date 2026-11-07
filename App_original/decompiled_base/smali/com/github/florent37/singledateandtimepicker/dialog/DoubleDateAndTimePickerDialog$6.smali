.class Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$6;
.super Ljava/lang/Object;
.source "DoubleDateAndTimePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->init(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;


# direct methods
.method constructor <init>(Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$6;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 198
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$6;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    invoke-static {p1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->access$400(Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 199
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$6;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    invoke-static {p1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->access$300(Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;)V

    return-void

    .line 201
    :cond_0
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$6;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->okClicked:Z

    .line 202
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$6;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    invoke-virtual {p1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->close()V

    return-void
.end method
