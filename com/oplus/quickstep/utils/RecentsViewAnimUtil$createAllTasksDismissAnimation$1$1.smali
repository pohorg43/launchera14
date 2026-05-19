.class public final Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAllTasksDismissAnimation$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createAllTasksDismissAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;J)Lcom/android/launcher3/anim/PendingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $exceptdView:Lcom/android/quickstep/views/OplusTaskViewImpl;

.field public final synthetic $removedTaskCount:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAllTasksDismissAnimation$1$1;->$removedTaskCount:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAllTasksDismissAnimation$1$1;->$exceptdView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    sget-object p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->access$setAllTaskDismissRunning$p(Z)V

    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAllTasksDismissAnimation$1$1;->$removedTaskCount:Lkotlin/jvm/internal/Ref$IntRef;

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-lez p1, :cond_22

    sget-object p1, Lcom/android/common/util/SoundPlayerUtils;->INSTANCE:Lcom/android/common/util/SoundPlayerUtils;

    invoke-virtual {p1}, Lcom/android/common/util/SoundPlayerUtils;->playDeleteSound()V

    invoke-static {}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->getInstance()Lcom/oplus/quickstep/memory/OplusSpecialListHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAllTasksDismissAnimation$1$1;->$exceptdView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->onCleanAllTasks(Lcom/android/systemui/shared/recents/model/Task;)V

    :cond_22
    return-void
.end method
