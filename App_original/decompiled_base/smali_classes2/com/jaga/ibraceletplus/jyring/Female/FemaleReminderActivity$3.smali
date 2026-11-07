.class Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$3;
.super Ljava/lang/Object;
.source "FemaleReminderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->ChangeReminderState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;

.field final synthetic val$mstate:I


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;I)V
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

    .line 218
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$3;->val$mstate:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 220
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 221
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p2

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$3;->val$mstate:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "female_reminder_State"

    invoke-virtual {p2, v1, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 222
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$3;->val$mstate:I

    invoke-static {p2, v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->access$102(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;I)I

    .line 223
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$3;->val$mstate:I

    invoke-static {p2, v0}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;I)V

    .line 224
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$3;->val$mstate:I

    const-string/jumbo v0, "type"

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 240
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;

    const-class v0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 241
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 236
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;

    const-class v1, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 231
    :cond_2
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 232
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;

    const-class v0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 233
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 226
    :cond_3
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;

    const-class v0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 228
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->startActivity(Landroid/content/Intent;)V

    .line 244
    :goto_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->finish()V

    return-void
.end method
