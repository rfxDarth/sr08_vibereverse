.class public Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;
.super Ljava/lang/Object;
.source "ButtonManager.java"


# instance fields
.field private buttons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/jaga/ibraceletplus/jyring/widget/TestButton;",
            ">;"
        }
    .end annotation
.end field

.field private currentRunningId:Ljava/lang/Integer;

.field private isDialogShowing:Z

.field private sf:Lnet/grandcentrix/tray/AppPreferences;

.field private showTipStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/grandcentrix/tray/AppPreferences;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->buttons:Ljava/util/Map;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->showTipStates:Ljava/util/Map;

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->currentRunningId:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->isDialogShowing:Z

    .line 25
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->sf:Lnet/grandcentrix/tray/AppPreferences;

    return-void
.end method

.method private handleClick(I)V
    .locals 5

    .line 47
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->isDialogShowing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->buttons:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->showTipStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 54
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->currentRunningId:Ljava/lang/Integer;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->stopButton(I)V

    .line 56
    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->currentRunningId:Ljava/lang/Integer;

    return-void

    .line 58
    :cond_2
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;->getConfirmStartMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 59
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 60
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;->getButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x1

    .line 61
    iput-boolean v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->isDialogShowing:Z

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->isDialogShowing:Z

    .line 64
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->currentRunningId:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 65
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->stopButton(I)V

    .line 68
    :cond_3
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->startButton(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->currentRunningId:Ljava/lang/Integer;

    return-void

    .line 71
    :cond_4
    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->currentRunningId:Ljava/lang/Integer;

    return-void

    .line 77
    :cond_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager$$ExternalSyntheticLambda0;-><init>(Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;I)V

    const p1, 0x7f130028

    .line 80
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager$$ExternalSyntheticLambda1;-><init>(Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;)V

    .line 94
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 97
    :cond_6
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->currentRunningId:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 98
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->stopButton(I)V

    .line 100
    :cond_7
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->startButton(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->currentRunningId:Ljava/lang/Integer;

    return-void

    .line 103
    :cond_8
    iput-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->currentRunningId:Ljava/lang/Integer;

    return-void
.end method

.method private rollbackUI(I)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->buttons:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;

    if-nez p1, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 154
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_1

    .line 155
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 157
    :cond_1
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;->getButton()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 158
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;->getImageView()Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setTipStates(IZ)V
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "P_BUTTON_SHOW_TIPS"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->sf:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {v1, v0, p2}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Z)Z

    .line 112
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->showTipStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setupClick(ILcom/jaga/ibraceletplus/jyring/widget/TestButton;)V
    .locals 1

    .line 43
    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;->getButton()Landroid/widget/Button;

    move-result-object p2

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager$$ExternalSyntheticLambda2;-><init>(Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;I)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private startButton(I)Z
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->buttons:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 125
    :cond_0
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;->getButton()Landroid/widget/Button;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 126
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 128
    instance-of v3, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_1

    .line 129
    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 134
    :cond_1
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;->getOnStart()Lcom/jaga/ibraceletplus/jyring/widget/StartCallback;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 135
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;->getOnStart()Lcom/jaga/ibraceletplus/jyring/widget/StartCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/jaga/ibraceletplus/jyring/widget/StartCallback;->onStart()Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    .line 140
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->rollbackUI(I)V

    return v1

    :cond_3
    return v3
.end method

.method private stopButton(I)V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->buttons:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;

    if-nez p1, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 167
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_1

    .line 168
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 172
    :cond_1
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;->getButton()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 173
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;->getOnStop()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 177
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;->getOnStop()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$handleClick$1$com-jaga-ibraceletplus-jyring-widget-ButtonManager(ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    const/4 p2, 0x1

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->setTipStates(IZ)V

    const/4 p2, 0x0

    .line 82
    iput-boolean p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->isDialogShowing:Z

    .line 83
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->currentRunningId:Ljava/lang/Integer;

    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->stopButton(I)V

    .line 87
    :cond_0
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->startButton(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->currentRunningId:Ljava/lang/Integer;

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 90
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->currentRunningId:Ljava/lang/Integer;

    return-void
.end method

.method synthetic lambda$handleClick$2$com-jaga-ibraceletplus-jyring-widget-ButtonManager(Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 94
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->isDialogShowing:Z

    return-void
.end method

.method synthetic lambda$setupClick$0$com-jaga-ibraceletplus-jyring-widget-ButtonManager(ILandroid/view/View;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->handleClick(I)V

    return-void
.end method

.method public register(ILcom/jaga/ibraceletplus/jyring/widget/TestButton;)V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->buttons:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "P_BUTTON_SHOW_TIPS"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->sf:Lnet/grandcentrix/tray/AppPreferences;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lnet/grandcentrix/tray/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 38
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->showTipStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->setupClick(ILcom/jaga/ibraceletplus/jyring/widget/TestButton;)V

    return-void
.end method

.method public resetShowTipStates()V
    .locals 0

    return-void
.end method

.method public startFromExternal(I)V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->currentRunningId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->currentRunningId:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->stopButton(I)V

    .line 195
    :cond_1
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->startButton(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->currentRunningId:Ljava/lang/Integer;

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 198
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->currentRunningId:Ljava/lang/Integer;

    return-void
.end method

.method public stopCurrent()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->currentRunningId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->stopButton(I)V

    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/ButtonManager;->currentRunningId:Ljava/lang/Integer;

    :cond_0
    return-void
.end method
