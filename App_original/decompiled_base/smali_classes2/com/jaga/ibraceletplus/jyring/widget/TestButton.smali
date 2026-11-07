.class public Lcom/jaga/ibraceletplus/jyring/widget/TestButton;
.super Ljava/lang/Object;
.source "TestButton.java"


# instance fields
.field private button:Landroid/widget/Button;

.field private confirmStartMessage:Ljava/lang/String;

.field private imageView:Landroid/widget/ImageView;

.field private onStart:Lcom/jaga/ibraceletplus/jyring/widget/StartCallback;

.field private onStop:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/widget/Button;Landroid/widget/ImageView;Lcom/jaga/ibraceletplus/jyring/widget/StartCallback;Ljava/lang/Runnable;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;-><init>(Landroid/widget/Button;Landroid/widget/ImageView;Lcom/jaga/ibraceletplus/jyring/widget/StartCallback;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/Button;Landroid/widget/ImageView;Lcom/jaga/ibraceletplus/jyring/widget/StartCallback;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;->button:Landroid/widget/Button;

    .line 19
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;->imageView:Landroid/widget/ImageView;

    .line 20
    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;->onStart:Lcom/jaga/ibraceletplus/jyring/widget/StartCallback;

    .line 21
    iput-object p4, p0, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;->onStop:Ljava/lang/Runnable;

    .line 22
    iput-object p5, p0, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;->confirmStartMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getButton()Landroid/widget/Button;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;->button:Landroid/widget/Button;

    return-object v0
.end method

.method public getConfirmStartMessage()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;->confirmStartMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getOnStart()Lcom/jaga/ibraceletplus/jyring/widget/StartCallback;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;->onStart:Lcom/jaga/ibraceletplus/jyring/widget/StartCallback;

    return-object v0
.end method

.method public getOnStop()Ljava/lang/Runnable;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;->onStop:Ljava/lang/Runnable;

    return-object v0
.end method

.method public setConfirmStartMessage(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TestButton;->confirmStartMessage:Ljava/lang/String;

    return-void
.end method
