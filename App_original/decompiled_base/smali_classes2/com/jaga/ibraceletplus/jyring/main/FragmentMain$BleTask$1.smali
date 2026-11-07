.class Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask$1;
.super Ljava/lang/Object;
.source "FragmentMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1142
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1146
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1147
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 1148
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1149
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvToday:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1150
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->vSport:Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;->setProgress(IFF)V

    .line 1151
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$900(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1154
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->saveLog(Ljava/lang/String;)V

    return-void
.end method
