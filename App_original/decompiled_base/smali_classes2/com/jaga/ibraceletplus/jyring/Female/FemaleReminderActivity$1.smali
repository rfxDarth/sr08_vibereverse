.class Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$1;
.super Ljava/lang/Object;
.source "FemaleReminderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 59
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderActivity;->finish()V

    return-void
.end method
