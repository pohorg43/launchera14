.class public Lcom/oplus/transition/OplusRemoteInterruptManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/transition/OplusRemoteInterruptManager$ReflectionHelper;
    }
.end annotation


# static fields
.field private static final ENABLE_INTERRUPT_REMOTE:Z

.field private static final TAG:Ljava/lang/String; = "OplusRemoteInterruptManager"


# instance fields
.field private mRemoteInterrupt:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "interrupt_remote_animation"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/transition/OplusRemoteInterruptManager;->ENABLE_INTERRUPT_REMOTE:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getChangeTaskIds(Landroid/window/TransitionInfo;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_2d
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_39

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_39
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object p0
.end method

.method private matchInterrupt(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)Z
    .registers 13

    const/4 v0, 0x0

    const-string v1, "OplusRemoteInterruptManager"

    if-eqz p1, :cond_99

    if-nez p2, :cond_9

    goto/16 :goto_99

    :cond_9
    invoke-direct {p0, p1}, Lcom/oplus/transition/OplusRemoteInterruptManager;->getChangeTaskIds(Landroid/window/TransitionInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/oplus/transition/OplusRemoteInterruptManager;->getChangeTaskIds(Landroid/window/TransitionInfo;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_98

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1f

    goto/16 :goto_98

    :cond_1f
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string p2, "matchInterrupt "

    invoke-static {p2, p0, v1}, Lcom/android/launcher/c0;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-nez p0, :cond_97

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_32
    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_97

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_32

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "not matchInterrupt, reset"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p3, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    const/high16 v5, 0x3f800000  # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    move-object v3, p3

    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p3, v0, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p2

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p3, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_32

    :cond_97
    return p0

    :cond_98
    :goto_98
    return v0

    :cond_99
    :goto_99
    const-string p0, "no merge remote"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public fixAlphaInRecentStart(Landroid/window/TransitionInfo$Change;Landroid/util/ArrayMap;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo$Change;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;",
            "Landroid/view/SurfaceControl$Transaction;",
            ")V"
        }
    .end annotation

    sget-boolean v0, Lcom/oplus/transition/OplusRemoteInterruptManager;->ENABLE_INTERRUPT_REMOTE:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/oplus/transition/OplusRemoteInterruptManager;->isRemoteInterrupt()Z

    move-result p0

    if-nez p0, :cond_c

    return-void

    :cond_c
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_58

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_58

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2b

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_58

    :cond_2b
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p3, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " setAlpha 1"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusRemoteInterruptManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    return-void
.end method

.method public fixFinishTransaction(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;Landroid/window/WindowContainerTransaction;)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-static {p4}, Lcom/oplus/transition/OplusRemoteInterruptManager$ReflectionHelper;->getRemoteInterrupt(Landroid/window/WindowContainerTransaction;)Z

    move-result p4

    if-eqz p4, :cond_8e

    invoke-direct {p0, p1, p3, p2}, Lcom/oplus/transition/OplusRemoteInterruptManager;->matchInterrupt(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)Z

    move-result p4

    if-eqz p4, :cond_8e

    sget-boolean p4, Lcom/oplus/transition/OplusRemoteInterruptManager;->ENABLE_INTERRUPT_REMOTE:Z

    if-eqz p4, :cond_8e

    const/4 p4, 0x1

    invoke-virtual {p0, p4}, Lcom/oplus/transition/OplusRemoteInterruptManager;->setInterrupt(Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "merge remote, reparent leashs to Transition Root B, secondInfo: "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p4, "OplusRemoteInterruptManager"

    invoke-static {p4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_32
    :goto_32
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_59

    const-string v0, "no need to reparent non-task to Transition Root B, target: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    :cond_59
    invoke-static {p1, p3}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {p3, v0}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_85

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_32

    :cond_85
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_32

    :cond_8d
    return-object p2

    :cond_8e
    invoke-static {p1}, Lcom/oplus/transition/OplusRemoteInterruptManager$ReflectionHelper;->getTmpFinishT(Landroid/window/TransitionInfo;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    if-nez p0, :cond_95

    return-object p2

    :cond_95
    invoke-virtual {p0, p2}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public isRemoteInterrupt()Z
    .registers 2

    sget-boolean v0, Lcom/oplus/transition/OplusRemoteInterruptManager;->ENABLE_INTERRUPT_REMOTE:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget-boolean p0, p0, Lcom/oplus/transition/OplusRemoteInterruptManager;->mRemoteInterrupt:Z

    return p0
.end method

.method public reset()V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/transition/OplusRemoteInterruptManager;->isRemoteInterrupt()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/transition/OplusRemoteInterruptManager;->setInterrupt(Z)V

    :cond_a
    return-void
.end method

.method public setInterrupt(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/transition/OplusRemoteInterruptManager;->mRemoteInterrupt:Z

    return-void
.end method
