.class public final synthetic Lcom/android/wm/shell/bubbles/e0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SingleInstanceRemoteListener$RemoteCall;
.implements Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/e0;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/e0;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/e0;->a:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    check-cast p1, Lcom/android/wm/shell/bubbles/IBubblesListener;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$1;->a(Landroid/os/Bundle;Lcom/android/wm/shell/bubbles/IBubblesListener;)V

    return-void
.end method

.method public onPendingIntentCanceled(Lcom/android/wm/shell/bubbles/Bubble;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/e0;->a:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->i(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/Bubble;)V

    return-void
.end method
