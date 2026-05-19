.class public final Lcom/android/launcher3/taskbar/OplusTaskbarStashController$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/OplusTaskbarStashController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTaskbarManualStashDuration(Z)J
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p1, :cond_5

    const-wide/16 p0, 0x30f

    goto :goto_7

    :cond_5
    const-wide/16 p0, 0x1c2

    :goto_7
    return-wide p0
.end method

.method public final isStashedInSpecialPage()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->access$getMStashedInSpecialPage$cp()Z

    move-result p0

    return p0
.end method

.method public final onFoldChange(Z)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onFoldChange isFold: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TaskbarStashController"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object p0

    if-eqz p0, :cond_22

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarStashController()Lcom/android/launcher3/taskbar/TaskbarStashController;

    move-result-object p0

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    if-nez p0, :cond_26

    return-void

    :cond_26
    const/16 v0, 0x200

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState(J)V

    return-void
.end method

.method public final onTaskbarHidden(ZZ)V
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onTaskbarHidden isHidden: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TaskbarStashController"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_23

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarStashController()Lcom/android/launcher3/taskbar/TaskbarStashController;

    move-result-object p0

    goto :goto_24

    :cond_23
    move-object p0, v1

    :goto_24
    if-nez p0, :cond_27

    return-void

    :cond_27
    const/16 v2, 0x800

    invoke-virtual {p0, v2, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    if-eqz p1, :cond_30

    const/4 p0, 0x0

    goto :goto_32

    :cond_30
    const/high16 p0, 0x3f800000  # 1.0f

    :goto_32
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v3

    if-eqz v3, :cond_4f

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarViewController()Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    move-result-object v3

    if-eqz v3, :cond_4f

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getTaskbarIconAlpha()Lcom/android/launcher3/util/MultiValueAlpha;

    move-result-object v3

    if-eqz v3, :cond_4f

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v3

    goto :goto_50

    :cond_4f
    move-object v3, v1

    :goto_50
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_67

    invoke-virtual {v3}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->getValue()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v4, :cond_67

    goto :goto_68

    :cond_67
    move v4, v5

    :goto_68
    if-eqz v4, :cond_71

    const-string/jumbo p0, "onTaskbarHidden but alpha value not changed!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_71
    if-eqz v3, :cond_78

    invoke-virtual {v3, p0}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object p0

    goto :goto_79

    :cond_78
    move-object p0, v1

    :goto_79
    invoke-virtual {v2, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object p0

    if-eqz p0, :cond_86

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayerController()Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;

    move-result-object v1

    :cond_86
    if-eqz v1, :cond_95

    const/4 p0, 0x4

    invoke-virtual {v1, p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->updateFlag(IZ)V

    const-wide/16 p0, -0x1

    invoke-virtual {v1, p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->applyStateWithoutStart(J)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_95
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    if-eqz p2, :cond_9d

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->end()V

    :cond_9d
    return-void
.end method

.method public final setStashedInSpecialPage(Z)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-wide/16 v0, 0x15e

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$Companion;->setStashedInSpecialPage(ZJ)V

    return-void
.end method

.method public final setStashedInSpecialPage(ZJ)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setStashedInSpecialPage stashed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", startDelay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskbarStashController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$Companion;->updateStateFlagForSpecialPage(Z)V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object p0

    if-eqz p0, :cond_2d

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarStashController()Lcom/android/launcher3/taskbar/TaskbarStashController;

    move-result-object p0

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x0

    :goto_2e
    if-nez p0, :cond_31

    return-void

    :cond_31
    const-wide/16 v0, 0x1c2

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState(JJ)V

    return-void
.end method

.method public final updateStateFlagForSpecialPage(Z)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateStateFlagForSpecialPage stashed: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TaskbarStashController"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->access$setMStashedInSpecialPage$cp(Z)V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object p0

    if-eqz p0, :cond_25

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarStashController()Lcom/android/launcher3/taskbar/TaskbarStashController;

    move-result-object p0

    goto :goto_26

    :cond_25
    const/4 p0, 0x0

    :goto_26
    if-nez p0, :cond_29

    return-void

    :cond_29
    const/16 v0, 0x400

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    return-void
.end method
