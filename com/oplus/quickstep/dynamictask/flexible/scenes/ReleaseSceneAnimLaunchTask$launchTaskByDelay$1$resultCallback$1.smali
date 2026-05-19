.class final Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1$resultCallback$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $taskKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

.field public final synthetic $taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/OplusTaskViewImpl;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1$resultCallback$1;->$taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    iput-object p2, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1$resultCallback$1;->$taskKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1$resultCallback$1;->invoke(Z)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke(Z)V
    .registers 2

    if-nez p1, :cond_a

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1$resultCallback$1;->$taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    const-string p1, "startLaunchAnim"

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskView;->notifyTaskLaunchFailed(Ljava/lang/String;)V

    goto :goto_15

    :cond_a
    invoke-static {}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->getInstance()Lcom/oplus/quickstep/memory/OplusSpecialListHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1$resultCallback$1;->$taskKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->clearTaskRecorderIfNeeded(I)V

    :goto_15
    return-void
.end method
