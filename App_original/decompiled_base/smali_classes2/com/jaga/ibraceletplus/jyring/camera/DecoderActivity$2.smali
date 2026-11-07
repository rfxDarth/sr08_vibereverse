.class Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity$2;
.super Ljava/lang/Object;
.source "DecoderActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->initQRCodeReaderView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 138
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;)Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->setTorchEnabled(Z)V

    return-void
.end method
