.class Lcom/coui/appcompat/tooltips/COUIToolTips$MyHandler;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/tooltips/COUIToolTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyHandler"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coui/appcompat/tooltips/COUIToolTips;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/tooltips/COUIToolTips;)V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$MyHandler;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$MyHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-eqz p0, :cond_1a

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    const/4 v0, 0x2

    if-eq p1, v0, :cond_13

    goto :goto_1a

    :cond_13
    invoke-virtual {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->refreshWhileLayoutChange()V

    goto :goto_1a

    :cond_17
    invoke-static {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$1100(Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    :cond_1a
    :goto_1a
    return-void
.end method
