.class public Lcom/android/launcher3/anim/AsyncAnimWrapper;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final runOnAnimThread(Ljava/lang/Runnable;)V
    .registers 2

    const-string/jumbo p0, "task"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/util/OplusExecutors;->ANIM_EXECUTOR:Lcom/oplus/util/OplusLauncherAnimExecutor;

    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusLauncherAnimExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final runOnMainThread(Ljava/lang/Runnable;)V
    .registers 2

    const-string/jumbo p0, "task"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
