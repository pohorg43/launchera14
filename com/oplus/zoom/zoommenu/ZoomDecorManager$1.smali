.class Lcom/oplus/zoom/zoommenu/ZoomDecorManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/zoom/common/ZoomSettingDispatcher$CallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/zoommenu/ZoomDecorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private simpleModeSettings:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/oplus/zoom/zoommenu/ZoomDecorManager;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/zoommenu/ZoomDecorManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager$1;->this$0:Lcom/oplus/zoom/zoommenu/ZoomDecorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "setting_zoom_simple_mode"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager$1;->simpleModeSettings:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onSettingChanged(ZLandroid/net/Uri;I)V
    .registers 4

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager$1;->simpleModeSettings:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lcom/oplus/zoom/common/ZoomSettingsObserver;->getInstance()Lcom/oplus/zoom/common/ZoomSettingsObserver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/common/ZoomSettingsObserver;->getSimpleModeEnable()Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager$1;->this$0:Lcom/oplus/zoom/zoommenu/ZoomDecorManager;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->notifyDecorationChange(I)V

    goto :goto_20

    :cond_1a
    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager$1;->this$0:Lcom/oplus/zoom/zoommenu/ZoomDecorManager;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->notifyDecorationChange(I)V

    :goto_20
    return-void
.end method
