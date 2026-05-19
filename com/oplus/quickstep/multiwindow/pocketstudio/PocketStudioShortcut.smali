.class public final Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/popup/SystemShortcut<",
        "Lcom/android/launcher3/BaseDraggingActivity;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut$Companion;

.field private static final TAG:Ljava/lang/String; = "PocketStudioShortcut"


# instance fields
.field private final mSplitScreenObserver:Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut$mSplitScreenObserver$1;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut;->Companion:Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V
    .registers 10

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v6

    const v2, 0x7f080734

    const v3, 0x7f1204d2

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut;->mTmpRect:Landroid/graphics/Rect;

    new-instance p1, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut$mSplitScreenObserver$1;

    invoke-direct {p1, p0, p2}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut$mSplitScreenObserver$1;-><init>(Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V

    iput-object p1, p0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut;->mSplitScreenObserver:Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut$mSplitScreenObserver$1;

    return-void
.end method

.method public static final synthetic access$getMTarget$p$s1742719890(Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    sget-object p1, Lcom/oplus/quickstep/utils/OplusTaskUtils;->INSTANCE:Lcom/oplus/quickstep/utils/OplusTaskUtils;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->isQucikClick()Z

    move-result p1

    const-string v0, "PocketStudioShortcut"

    if-eqz p1, :cond_10

    const-string p0, "onClick(), quickclick, return."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    iget-object p1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mOriginalView:Landroid/view/View;

    instance-of v1, p1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    check-cast p1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_1b

    :cond_1a
    move-object p1, v2

    :goto_1b
    if-nez p1, :cond_1e

    return-void

    :cond_1e
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_87

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v1, :cond_87

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object p1

    iget-object v3, p0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object p1

    iget-object v3, p0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut;->mSplitScreenObserver:Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut$mSplitScreenObserver$1;

    invoke-virtual {p1, v3}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->registerSplitScreenObserver(Lcom/oplus/app/IOplusSplitScreenObserver;)Z

    move-result p1

    const-string v3, "onClick(), gotoReady done, hasRegister="

    invoke-static {v3, p1, v0}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p1, :cond_55

    iget-object v3, p0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {v1, v3}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->gotoReady(ILandroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object p1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/BaseDraggingActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_66

    :cond_55
    if-eqz p1, :cond_66

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut;->mSplitScreenObserver:Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut$mSplitScreenObserver$1;

    invoke-virtual {p1, v1}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->unregisterSplitScreenObserver(Lcom/oplus/app/IOplusSplitScreenObserver;)Z

    move-result p1

    const-string v1, "onClick(), hasUnregister="

    invoke-static {v1, p1, v0}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_66
    :goto_66
    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->supportTaskViewRemoteAnimation()Z

    move-result p1

    if-eqz p1, :cond_87

    iget-object p0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    instance-of p1, p0, Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_75

    move-object v2, p0

    check-cast v2, Lcom/android/launcher/Launcher;

    :cond_75
    if-eqz v2, :cond_87

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getTaskViewManager()Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    move-result-object p0

    if-eqz p0, :cond_87

    invoke-virtual {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->canGoBackToTaskView()Z

    move-result p1

    if-eqz p1, :cond_87

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->stopOrReleaseTaskView(Z)V

    :cond_87
    return-void
.end method
