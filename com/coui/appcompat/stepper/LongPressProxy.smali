.class Lcom/coui/appcompat/stepper/LongPressProxy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/stepper/LongPressProxy$MyHandler;
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Ljava/lang/Runnable;

.field public c:Landroidx/core/view/GestureDetectorCompat;

.field public d:Landroid/view/GestureDetector$OnGestureListener;

.field public e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->b:Ljava/lang/Runnable;

    new-instance p1, Lcom/coui/appcompat/stepper/LongPressProxy$MyHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/coui/appcompat/stepper/LongPressProxy$MyHandler;-><init>(Lcom/coui/appcompat/stepper/LongPressProxy;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->e:Landroid/os/Handler;

    new-instance p1, Lcom/coui/appcompat/stepper/LongPressProxy$1;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/stepper/LongPressProxy$1;-><init>(Lcom/coui/appcompat/stepper/LongPressProxy;)V

    iput-object p1, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->d:Landroid/view/GestureDetector$OnGestureListener;

    new-instance p1, Landroidx/core/view/GestureDetectorCompat;

    iget-object p2, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->d:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p1, p2, v0}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->c:Landroidx/core/view/GestureDetectorCompat;

    iget-object p1, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->a:Landroid/view/View;

    new-instance p2, Lcom/coui/appcompat/stepper/a;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/stepper/a;-><init>(Lcom/coui/appcompat/stepper/LongPressProxy;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->e:Landroid/os/Handler;

    iget-object v0, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->a:Landroid/view/View;

    if-eqz v0, :cond_18

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v1, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->a:Landroid/view/View;

    :cond_18
    iput-object v1, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->b:Ljava/lang/Runnable;

    return-void
.end method
