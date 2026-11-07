.class Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity$2;
.super Ljava/lang/Object;
.source "EcgHistoryActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;

.field final synthetic val$calendar:Ljava/util/Calendar;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;Ljava/util/Calendar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity$2;->val$calendar:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 2

    .line 121
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDateSet "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity$2;->val$calendar:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 123
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity$2;->val$calendar:Ljava/util/Calendar;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 124
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity$2;->val$calendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p4}, Ljava/util/Calendar;->set(II)V

    .line 125
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity$2;->val$calendar:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->access$102(Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;Ljava/util/Date;)Ljava/util/Date;

    .line 127
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;)V

    return-void
.end method
