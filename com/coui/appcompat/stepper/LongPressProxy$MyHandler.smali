.class Lcom/coui/appcompat/stepper/LongPressProxy$MyHandler;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/stepper/LongPressProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyHandler"
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/stepper/LongPressProxy;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/stepper/LongPressProxy;Landroid/os/Looper;)V
    .registers 3
    .param p1  # Lcom/coui/appcompat/stepper/LongPressProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/coui/appcompat/stepper/LongPressProxy$MyHandler;->a:Lcom/coui/appcompat/stepper/LongPressProxy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1  # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_23

    const/4 v0, 0x2

    if-eq p1, v0, :cond_c

    goto :goto_2a

    :cond_c
    iget-object p1, p0, Lcom/coui/appcompat/stepper/LongPressProxy$MyHandler;->a:Lcom/coui/appcompat/stepper/LongPressProxy;

    iget-object p1, p1, Lcom/coui/appcompat/stepper/LongPressProxy;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/coui/appcompat/stepper/LongPressProxy$MyHandler;->a:Lcom/coui/appcompat/stepper/LongPressProxy;

    iget-object p1, p1, Lcom/coui/appcompat/stepper/LongPressProxy;->b:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2a

    :cond_23
    iget-object p0, p0, Lcom/coui/appcompat/stepper/LongPressProxy$MyHandler;->a:Lcom/coui/appcompat/stepper/LongPressProxy;

    iget-object p0, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->b:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2a
    :goto_2a
    return-void
.end method
