.class public final synthetic Lcom/coui/appcompat/stepper/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/stepper/LongPressProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/stepper/LongPressProxy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/stepper/a;->a:Lcom/coui/appcompat/stepper/LongPressProxy;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object p0, p0, Lcom/coui/appcompat/stepper/a;->a:Lcom/coui/appcompat/stepper/LongPressProxy;

    iget-object p1, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->c:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p1, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_15

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v1, :cond_1b

    :cond_15
    iget-object p0, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->e:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1b
    return v1
.end method
