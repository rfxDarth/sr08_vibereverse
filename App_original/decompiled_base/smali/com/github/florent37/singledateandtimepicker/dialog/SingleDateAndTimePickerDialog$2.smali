.class Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$2;
.super Ljava/lang/Object;
.source "SingleDateAndTimePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->init(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;


# direct methods
.method constructor <init>(Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$2;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 88
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$2;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->okClicked:Z

    .line 89
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$2;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    invoke-virtual {p1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->close()V

    return-void
.end method
