.class public final Lcom/android/launcher3/dragndrop/OplusInputDragManager$inputReceiver$1;
.super Landroid/os/IOplusExInputCallBack$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/dragndrop/OplusInputDragManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/dragndrop/OplusInputDragManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/dragndrop/OplusInputDragManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/OplusInputDragManager$inputReceiver$1;->this$0:Lcom/android/launcher3/dragndrop/OplusInputDragManager;

    invoke-direct {p0}, Landroid/os/IOplusExInputCallBack$Stub;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/dragndrop/OplusInputDragManager;Landroid/view/InputEvent;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/dragndrop/OplusInputDragManager$inputReceiver$1;->onInputEvent$lambda$0(Lcom/android/launcher3/dragndrop/OplusInputDragManager;Landroid/view/InputEvent;)V

    return-void
.end method

.method private static final onInputEvent$lambda$0(Lcom/android/launcher3/dragndrop/OplusInputDragManager;Landroid/view/InputEvent;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$inputEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/OplusInputDragManager;->access$getHasRegistered$p(Lcom/android/launcher3/dragndrop/OplusInputDragManager;)Z

    move-result v0

    if-nez v0, :cond_23

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_23

    const-string p0, "OplusInputDragManager"

    const-string/jumbo p1, "onInputEvent -> receiver are unregistered, so we don\'t consume down event"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_23
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusInputDragManager;->getConsumer()Ljava/util/function/Consumer;

    move-result-object p0

    if-eqz p0, :cond_2c

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2c
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "inputEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-nez v0, :cond_20

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown event "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusInputDragManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_20
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusInputDragManager$inputReceiver$1;->this$0:Lcom/android/launcher3/dragndrop/OplusInputDragManager;

    invoke-static {v0}, Lcom/android/launcher3/dragndrop/OplusInputDragManager;->access$getMainHandler$p(Lcom/android/launcher3/dragndrop/OplusInputDragManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OplusInputDragManager$inputReceiver$1;->this$0:Lcom/android/launcher3/dragndrop/OplusInputDragManager;

    new-instance v1, Lcom/android/launcher/widget/b;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/widget/b;-><init>(Lcom/android/launcher3/dragndrop/OplusInputDragManager;Landroid/view/InputEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
