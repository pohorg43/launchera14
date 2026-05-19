.class Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController$1;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController$1;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->access$000(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;)Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result v0

    const-string v1, "scheduleTask run:"

    const-string v2, "OplusZoomToFlexibleController"

    invoke-static {v1, v0, v2}, Landroidx/recyclerview/widget/c;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3a

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController$1;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->access$000(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;)Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController$1;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;

    invoke-static {v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->access$100(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;)I

    move-result v1

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController$1;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;

    invoke-static {v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->access$200(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->setDownPosition(II)V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController$1;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;

    invoke-static {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->access$000(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;)Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->handleState(I)V

    invoke-static {}, Lcom/oplus/view/inputmethod/OplusInputMethodManager;->getInstance()Lcom/oplus/view/inputmethod/OplusInputMethodManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/view/inputmethod/OplusInputMethodManager;->hideCurrentInputMethod()V

    :cond_3a
    return-void
.end method
