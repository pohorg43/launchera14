.class public final Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector$interceptPullLaunchTask$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;->interceptPullLaunchTask(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/anim/PendingAnimation;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $oplusTaskView:Lcom/android/quickstep/views/OplusTaskViewImpl;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector$interceptPullLaunchTask$1$1;->$oplusTaskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector$interceptPullLaunchTask$1$1;->$oplusTaskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-nez p1, :cond_5

    goto :goto_9

    :cond_5
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setIgnoreResetScale(Z)V

    :goto_9
    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector$interceptPullLaunchTask$1$1;->$oplusTaskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-nez p0, :cond_e

    goto :goto_13

    :cond_e
    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setTranslationZ(F)V

    :goto_13
    return-void
.end method
