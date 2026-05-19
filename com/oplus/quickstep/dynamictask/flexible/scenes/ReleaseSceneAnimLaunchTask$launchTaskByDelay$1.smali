.class final Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;->launchTaskByDelay(Lcom/android/quickstep/views/OplusRecentsViewImpl;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lm7/j0;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.oplus.quickstep.dynamictask.flexible.scenes.ReleaseSceneAnimLaunchTask$launchTaskByDelay$1"
    f = "ReleaseSceneAnimLaunchTask.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $recentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;"
        }
    .end annotation
.end field

.field public final synthetic $taskKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

.field public final synthetic $taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

.field public label:I

.field public final synthetic this$0:Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ll4/d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/OplusTaskViewImpl;",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            "Ll4/d<",
            "-",
            "Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1;->this$0:Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;

    iput-object p2, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1;->$recentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iput-object p3, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1;->$taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    iput-object p4, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1;->$taskKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1;->invokeSuspend$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Boolean;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Boolean;)V
    .registers 2

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ll4/d<",
            "*>;)",
            "Ll4/d<",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1;

    iget-object v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1;->this$0:Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;

    iget-object v2, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1;->$recentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-object v3, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1;->$taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    iget-object v4, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1;->$taskKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/j0;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1;->label:I

    if-nez v0, :cond_66

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1;->this$0:Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;

    invoke-virtual {p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->setReleasing(Z)V

    iget-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1;->this$0:Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;

    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1;->$recentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-static {p1, v0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;->access$release$s2018794741(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;Lcom/android/quickstep/views/OplusRecentsViewImpl;)Z

    const-string p1, "RFT_ReleaseScene_AnimLaunchTask"

    const-string v0, "launchTaskByDelay(), start tasks."

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1;->$recentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-object p1, p1, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1;->$taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/BaseDraggingActivity;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object p1

    const-string v0, "recentsView.mActivity.ge…chOptions(taskView, null)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    iget-object v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1;->$taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_40

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    goto :goto_41

    :cond_40
    const/4 v1, 0x0

    :goto_41
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    new-instance v0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1$resultCallback$1;

    iget-object v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1;->$taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    iget-object v2, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1;->$taskKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1$resultCallback$1;-><init>(Lcom/android/quickstep/views/OplusTaskViewImpl;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1;->$taskKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object p1, p1, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    new-instance v3, Lcom/oplus/quickstep/dynamictask/flexible/scenes/c;

    invoke-direct {v3, v0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/c;-><init>(Lkotlin/jvm/functions/Function1;)V

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1;->$taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v1, v2, p1, v3, p0}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->startActivityFromRecentsAsyncByClick(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_66
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
