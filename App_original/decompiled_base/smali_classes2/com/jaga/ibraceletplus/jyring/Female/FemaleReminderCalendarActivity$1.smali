.class Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$1;
.super Ljava/lang/Object;
.source "FemaleReminderCalendarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 52
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->finish()V

    return-void
.end method
