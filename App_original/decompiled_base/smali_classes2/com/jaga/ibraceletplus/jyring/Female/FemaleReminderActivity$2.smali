.class Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$2;
.super Ljava/lang/Object;
.source "FemaleReminderActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 101
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const-string v0, "Enable_female_remider"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
