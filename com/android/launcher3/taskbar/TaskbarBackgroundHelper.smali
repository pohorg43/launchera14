.class public final Lcom/android/launcher3/taskbar/TaskbarBackgroundHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/taskbar/TaskbarBackgroundHelper;

.field public static final TAG:Ljava/lang/String; = "TaskbarBackgroundRenderer"

.field private static final mOnParallelWindowChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sInParallelWindow:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundHelper;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/TaskbarBackgroundHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundHelper;->INSTANCE:Lcom/android/launcher3/taskbar/TaskbarBackgroundHelper;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundHelper;->mOnParallelWindowChangeListeners:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Z)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarBackgroundHelper;->setInParallelWindow$lambda$0(Z)V

    return-void
.end method

.method public static final addParallelWindowChangeListener(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundHelper;->mOnParallelWindowChangeListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

.method public static final isInParallelWindow()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundHelper;->sInParallelWindow:Z

    return v0
.end method

.method public static final removeParallelWindowChangeListener(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundHelper;->mOnParallelWindowChangeListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

.method public static final setInParallelWindow(Z)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "setInParallelWindow inParallelWindow: "

    const-string v1, "TaskbarBackgroundRenderer"

    invoke-static {v0, p0, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    sget-boolean v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundHelper;->sInParallelWindow:Z

    if-eq v0, p0, :cond_19

    sput-boolean p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundHelper;->sInParallelWindow:Z

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/taskbar/k0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/taskbar/k0;-><init>(ZI)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    :cond_19
    return-void
.end method

.method private static final setInParallelWindow$lambda$0(Z)V
    .registers 4

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarBackgroundHelper;->mOnParallelWindowChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_6

    :cond_1a
    return-void
.end method
