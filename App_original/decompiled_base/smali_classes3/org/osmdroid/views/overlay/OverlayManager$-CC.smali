.class public final synthetic Lorg/osmdroid/views/overlay/OverlayManager$-CC;
.super Ljava/lang/Object;
.source "OverlayManager.java"


# direct methods
.method public static bridge synthetic $default$add(Lorg/osmdroid/views/overlay/OverlayManager;ILjava/lang/Object;)V
    .locals 0
    .param p0, "_this"    # Lorg/osmdroid/views/overlay/OverlayManager;

    .line 17
    check-cast p2, Lorg/osmdroid/views/overlay/Overlay;

    invoke-interface {p0, p1, p2}, Lorg/osmdroid/views/overlay/OverlayManager;->add(ILorg/osmdroid/views/overlay/Overlay;)V

    return-void
.end method

.method public static bridge synthetic $default$get(Lorg/osmdroid/views/overlay/OverlayManager;I)Ljava/lang/Object;
    .locals 0
    .param p0, "_this"    # Lorg/osmdroid/views/overlay/OverlayManager;

    .line 17
    invoke-interface {p0, p1}, Lorg/osmdroid/views/overlay/OverlayManager;->get(I)Lorg/osmdroid/views/overlay/Overlay;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$remove(Lorg/osmdroid/views/overlay/OverlayManager;I)Ljava/lang/Object;
    .locals 0
    .param p0, "_this"    # Lorg/osmdroid/views/overlay/OverlayManager;

    .line 17
    invoke-interface {p0, p1}, Lorg/osmdroid/views/overlay/OverlayManager;->remove(I)Lorg/osmdroid/views/overlay/Overlay;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$set(Lorg/osmdroid/views/overlay/OverlayManager;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "_this"    # Lorg/osmdroid/views/overlay/OverlayManager;

    .line 17
    check-cast p2, Lorg/osmdroid/views/overlay/Overlay;

    invoke-interface {p0, p1, p2}, Lorg/osmdroid/views/overlay/OverlayManager;->set(ILorg/osmdroid/views/overlay/Overlay;)Lorg/osmdroid/views/overlay/Overlay;

    move-result-object p1

    return-object p1
.end method
