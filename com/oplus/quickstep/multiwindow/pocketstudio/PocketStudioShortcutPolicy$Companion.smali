.class public final Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcutPolicy$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcutPolicy;
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

    invoke-direct {p0}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcutPolicy$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final support(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "taskContainer"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_12

    return v0

    :cond_12
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_74

    :cond_1e
    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    instance-of v1, v1, Lcom/android/quickstep/views/OplusGroupedTaskView;

    if-nez v1, :cond_74

    invoke-virtual {p1}, Lcom/android/launcher3/OplusBaseActivity;->isInMinimize()Z

    move-result p1

    if-nez p1, :cond_74

    invoke-static {p0}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->isTaskSupport(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p1

    if-eqz p1, :cond_74

    invoke-static {p0}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->hasEmbeddedTask(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p1

    if-nez p1, :cond_74

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->isTopWindowZoom()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_74

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 p1, 0x0

    if-eqz p0, :cond_52

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_53

    :cond_52
    move-object p0, p1

    :goto_53
    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p2

    instance-of v1, p2, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v1, :cond_62

    check-cast p2, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_63

    :cond_62
    move-object p2, p1

    :goto_63
    if-eqz p2, :cond_6d

    invoke-virtual {p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPinnedTaskId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_6d
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_74

    const/4 v0, 0x1

    :cond_74
    return v0
.end method
