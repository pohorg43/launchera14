.class public final Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper$startUpdateExpandItemAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->startUpdateExpandItemAnimation(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper$startUpdateExpandItemAnimation$1;->this$0:Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper$startUpdateExpandItemAnimation$1;->onAnimationEnd$lambda$0(Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;)V

    return-void
.end method

.method private static final onAnimationEnd$lambda$0(Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->getRunOnceOnUpdateAnimatorEndSet()Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_e

    :cond_1e
    invoke-virtual {p0}, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->getRunOnceOnUpdateAnimatorEndSet()Landroid/util/ArraySet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const-string p0, "Hotseat_expand"

    const-string p1, "HotseatExpandCenterLayoutAnimHelper"

    const-string/jumbo v0, "startUpdateExpandItemAnimation onAnimationCancel"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    const-string p1, "Hotseat_expand"

    const-string v0, "HotseatExpandCenterLayoutAnimHelper"

    const-string/jumbo v1, "startUpdateExpandItemAnimation onAnimationEnd"

    invoke-static {p1, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper$startUpdateExpandItemAnimation$1;->this$0:Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;->animationEnd(Z)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object p0, p0, Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper$startUpdateExpandItemAnimation$1;->this$0:Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;

    new-instance v0, Landroidx/core/app/a;

    invoke-direct {v0, p0}, Landroidx/core/app/a;-><init>(Lcom/android/launcher3/hotseat/expand/HotseatExpandCenterLayoutAnimHelper;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void
.end method
