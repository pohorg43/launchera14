.class Lcom/android/wm/shell/windowdecor/ResizeVeil$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/windowdecor/ResizeVeil;->hideVeil()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/ResizeVeil;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/ResizeVeil;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$1;->this$0:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$1;->this$0:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/ResizeVeil;->access$000(Lcom/android/wm/shell/windowdecor/ResizeVeil;)Ljava/util/function/Supplier;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil$1;->this$0:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/ResizeVeil;->access$100(Lcom/android/wm/shell/windowdecor/ResizeVeil;)Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
