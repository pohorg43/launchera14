.class public final Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CloseWindowAnimParam"
.end annotation


# instance fields
.field private backToCapsuleParam:Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;

.field private isCapsuleNeed:Z

.field private isGameOpenNeed:Z

.field private isGoBackToTaskView:Z

.field private isLightAnimation:Z

.field private isToggleBarStateAnim:Z

.field private isTransitionBySpringAnim:Z

.field private launcherIconView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBackToCapsuleParam()Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->backToCapsuleParam:Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;

    return-object p0
.end method

.method public final getLauncherIconView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->launcherIconView:Landroid/view/View;

    return-object p0
.end method

.method public final isCapsuleNeed()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->isCapsuleNeed:Z

    return p0
.end method

.method public final isGameOpenNeed()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->isGameOpenNeed:Z

    return p0
.end method

.method public final isGoBackToTaskView()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->isGoBackToTaskView:Z

    return p0
.end method

.method public final isLightAnimation()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->isLightAnimation:Z

    return p0
.end method

.method public final isToggleBarStateAnim()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->isToggleBarStateAnim:Z

    return p0
.end method

.method public final isTransitionBySpringAnim()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->isTransitionBySpringAnim:Z

    return p0
.end method

.method public final setBackToCapsuleParam(Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->backToCapsuleParam:Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;

    return-void
.end method

.method public final setCapsuleNeed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->isCapsuleNeed:Z

    return-void
.end method

.method public final setGameOpenNeed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->isGameOpenNeed:Z

    return-void
.end method

.method public final setGoBackToTaskView(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->isGoBackToTaskView:Z

    return-void
.end method

.method public final setLauncherIconView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->launcherIconView:Landroid/view/View;

    return-void
.end method

.method public final setLightAnimation(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->isLightAnimation:Z

    return-void
.end method

.method public final setToggleBarStateAnim(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->isToggleBarStateAnim:Z

    return-void
.end method

.method public final setTransitionBySpringAnim(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->isTransitionBySpringAnim:Z

    return-void
.end method
