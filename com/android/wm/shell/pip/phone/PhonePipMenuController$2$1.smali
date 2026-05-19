.class Lcom/android/wm/shell/pip/phone/PhonePipMenuController$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewRootImpl$SurfaceChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/pip/phone/PhonePipMenuController$2;->onViewAttachedToWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/wm/shell/pip/phone/PhonePipMenuController$2;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/phone/PhonePipMenuController$2;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$2$1;->this$1:Lcom/android/wm/shell/pip/phone/PhonePipMenuController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceCreated(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$2$1;->this$1:Lcom/android/wm/shell/pip/phone/PhonePipMenuController$2;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$2;->this$0:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$2$1;->this$1:Lcom/android/wm/shell/pip/phone/PhonePipMenuController$2;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$2;->this$0:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->access$200(Lcom/android/wm/shell/pip/phone/PhonePipMenuController;)Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const p0, 0x7fffffff

    invoke-virtual {p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_1b
    return-void
.end method

.method public surfaceDestroyed()V
    .registers 1

    return-void
.end method

.method public surfaceReplaced(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    return-void
.end method
