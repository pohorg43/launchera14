.class Lcom/android/quickstep/AbsSwipeUpHandler$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/AbsSwipeUpHandler;->onLauncherPresentAndGestureStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/AbsSwipeUpHandler;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$4;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/AbsSwipeUpHandler$4;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler$4;->lambda$run$0(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$run$0(Ljava/util/function/Consumer;)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$4;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-boolean p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->isInfloatingWindow:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public isSamePackage(Ljava/lang/String;IZ)Z
    .registers 7
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "isSamePackage mClosingPkg = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$4;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v1, v1, Lcom/android/quickstep/AbsSwipeUpHandler;->mClosingPkg:Ljava/lang/String;

    const-string v2, "AbsSwipeUpHandler"

    invoke-static {v0, v1, v2}, Lcom/android/common/util/w;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1a

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$4;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mClosingPkg:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1a
    iget-object p3, p0, Lcom/android/quickstep/AbsSwipeUpHandler$4;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object p3, p3, Lcom/android/quickstep/AbsSwipeUpHandler;->mClosingPkg:Ljava/lang/String;

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2f

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$4;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mClosingAppUserId:I

    if-eq p2, p0, :cond_2d

    const/4 p1, -0x1

    if-ne p0, p1, :cond_2f

    :cond_2d
    const/4 p0, 0x1

    goto :goto_30

    :cond_2f
    const/4 p0, 0x0

    :goto_30
    return p0
.end method

.method public run(ILjava/util/function/Consumer;)V
    .registers 6
    .param p2  # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Want to interrupt reason = "

    const-string v1, ", toHomeProgress = "

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$4;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget v1, v1, Lcom/android/quickstep/AbsSwipeUpHandler;->mToHomeProgress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", isInfloatingWindow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$4;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-boolean v1, v1, Lcom/android/quickstep/AbsSwipeUpHandler;->isInfloatingWindow:Z

    const-string v2, "AbsSwipeUpHandler"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-nez p2, :cond_2b

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$4;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCustomOnDeferredCallback:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_2b
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$4;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/quickstep/AbsSwipeUpHandler;->checkPendingProgress(ILjava/util/function/Consumer;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$4;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCustomOnDeferredCallback:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/quickstep/s;

    invoke-direct {v0, p0, p2}, Lcom/android/quickstep/s;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler$4;Ljava/util/function/Consumer;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    goto :goto_56

    :cond_49
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$4;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mPendingOpts:Landroid/util/Pair;

    :goto_56
    return-void
.end method
