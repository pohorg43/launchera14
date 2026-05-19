.class Lcom/android/wm/shell/pip/phone/PipController$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/pip/PipParamsChangedForwarder$PipParamsChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/pip/phone/PipController;->onInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/phone/PipController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$3;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionsChanged(Ljava/util/List;Landroid/app/RemoteAction;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;",
            "Landroid/app/RemoteAction;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$3;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->setAppActions(Ljava/util/List;Landroid/app/RemoteAction;)V

    return-void
.end method

.method public onAspectRatioChanged(F)V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$3;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipController;->access$600(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/pip/PipBoundsState;->setAspectRatio(F)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$3;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PipController;->access$1700(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController$3;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {v1}, Lcom/android/wm/shell/pip/phone/PipController;->access$600(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipController$3;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {v2}, Lcom/android/wm/shell/pip/phone/PipController;->access$600(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getAspectRatio()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getAdjustedDestinationBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "Missing destination bounds"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController$3;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {v1}, Lcom/android/wm/shell/pip/phone/PipController;->access$600(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$3;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v1, p1, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipController;->access$1800(Lcom/android/wm/shell/pip/phone/PipController;)I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;ILjava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$3;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipController;->access$900(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->onAspectRatioChanged()V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$3;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/pip/phone/PipController;->access$1100(Lcom/android/wm/shell/pip/phone/PipController;Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    goto :goto_65

    :cond_5c
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$3;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipController;->access$900(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->updateMinMaxSize(F)V

    :goto_65
    return-void
.end method
