.class Lcom/android/wm/shell/pip/phone/PipController$PipImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/pip/Pip;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/pip/phone/PipController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PipImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipController;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/pip/phone/PipController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipController;Lcom/android/wm/shell/pip/phone/PipController$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->lambda$setOnIsInPipStateChangedListener$2(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->lambda$removePipExclusionBoundsChangeListener$4(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->lambda$onSystemUiStateChanged$1(ZI)V

    return-void
.end method

.method public static synthetic d(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->lambda$expandPip$0()V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->lambda$showPictureInPictureMenu$5()V

    return-void
.end method

.method public static synthetic f(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->lambda$addPipExclusionBoundsChangeListener$3(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$addPipExclusionBoundsChangeListener$3(Ljava/util/function/Consumer;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipController;->access$600(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipBoundsState;->addPipExclusionBoundsChangeCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$expandPip$0()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipController;->expandPip()V

    return-void
.end method

.method private synthetic lambda$onSystemUiStateChanged$1(ZI)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController;->access$2300(Lcom/android/wm/shell/pip/phone/PipController;ZI)V

    return-void
.end method

.method private synthetic lambda$removePipExclusionBoundsChangeListener$4(Ljava/util/function/Consumer;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipController;->access$600(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipBoundsState;->removePipExclusionBoundsChangeCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$setOnIsInPipStateChangedListener$2(Ljava/util/function/Consumer;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController;->access$2200(Lcom/android/wm/shell/pip/phone/PipController;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$showPictureInPictureMenu$5()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipController;->showPictureInPictureMenu()V

    return-void
.end method


# virtual methods
.method public addPipExclusionBoundsChangeListener(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/a0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/pip/phone/a0;-><init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;Ljava/util/function/Consumer;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public expandPip()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/x;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/phone/x;-><init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSystemUiStateChanged(ZI)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/b0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/pip/phone/b0;-><init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;ZI)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removePipExclusionBoundsChangeListener(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/z;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/pip/phone/z;-><init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setOnIsInPipStateChangedListener(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/a0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/pip/phone/a0;-><init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;Ljava/util/function/Consumer;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showPictureInPictureMenu()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/y;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/phone/y;-><init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
