.class public final synthetic Lcom/king/zxing/CaptureHelper$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/king/zxing/camera/CameraManager$OnTorchListener;


# instance fields
.field public final synthetic f$0:Lcom/king/zxing/CaptureHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/king/zxing/CaptureHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/king/zxing/CaptureHelper$$ExternalSyntheticLambda5;->f$0:Lcom/king/zxing/CaptureHelper;

    return-void
.end method


# virtual methods
.method public final onTorchChanged(Z)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper$$ExternalSyntheticLambda5;->f$0:Lcom/king/zxing/CaptureHelper;

    invoke-virtual {v0, p1}, Lcom/king/zxing/CaptureHelper;->lambda$initCameraManager$3$com-king-zxing-CaptureHelper(Z)V

    return-void
.end method
