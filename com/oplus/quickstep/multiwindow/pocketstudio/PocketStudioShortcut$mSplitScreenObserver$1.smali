.class public final Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut$mSplitScreenObserver$1;
.super Lcom/oplus/app/IOplusSplitScreenObserver$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

.field public final synthetic this$0:Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut$mSplitScreenObserver$1;->this$0:Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut;

    iput-object p2, p0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut$mSplitScreenObserver$1;->$taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    invoke-direct {p0}, Lcom/oplus/app/IOplusSplitScreenObserver$Stub;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut$mSplitScreenObserver$1;->onStateChanged$lambda$0(Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V

    return-void
.end method

.method private static final onStateChanged$lambda$0(Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$taskContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut;->access$getMTarget$p$s1742719890(Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/states/OPlusBaseState;->addActionFlag(I)V

    invoke-static {p0}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut;->access$getMTarget$p$s1742719890(Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    const/4 v1, 0x1

    new-instance v2, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut$mSplitScreenObserver$1$onStateChanged$1$1;

    invoke-direct {v2, p1}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut$mSplitScreenObserver$1$onStateChanged$1$1;-><init>(Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZLandroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Lcom/android/launcher3/states/OPlusBaseState;->resetActionFlag()V

    goto :goto_4b

    :cond_2f
    invoke-static {p0}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut;->access$getMTarget$p$s1742719890(Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/BaseDraggingActivity;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_4b
    return-void
.end method


# virtual methods
.method public onStateChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bundle"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "isMinimized"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string p2, "onStateChanged: isInMinimized="

    const-string v0, "PocketStudioShortcut"

    invoke-static {p2, p1, v0}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p1, :cond_28

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object p2, p0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut$mSplitScreenObserver$1;->this$0:Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut;

    iget-object v0, p0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut$mSplitScreenObserver$1;->$taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    new-instance v1, Lcom/android/systemui/shared/navigationbar/a;

    invoke-direct {v1, p2, v0}, Lcom/android/systemui/shared/navigationbar/a;-><init>(Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_28
    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->unregisterSplitScreenObserver(Lcom/oplus/app/IOplusSplitScreenObserver;)Z

    return-void
.end method
