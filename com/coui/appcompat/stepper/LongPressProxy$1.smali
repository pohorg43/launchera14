.class Lcom/coui/appcompat/stepper/LongPressProxy$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/stepper/LongPressProxy;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/stepper/LongPressProxy;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/stepper/LongPressProxy;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/stepper/LongPressProxy$1;->a:Lcom/coui/appcompat/stepper/LongPressProxy;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    iget-object p0, p0, Lcom/coui/appcompat/stepper/LongPressProxy$1;->a:Lcom/coui/appcompat/stepper/LongPressProxy;

    iget-object p0, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->e:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/stepper/LongPressProxy$1;->a:Lcom/coui/appcompat/stepper/LongPressProxy;

    iget-object p0, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->e:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return p1
.end method
