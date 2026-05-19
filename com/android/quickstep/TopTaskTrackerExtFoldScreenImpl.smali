.class public final Lcom/android/quickstep/TopTaskTrackerExtFoldScreenImpl;
.super Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/TopTaskTrackerExtFoldScreenImpl$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTopTaskTrackerExtFoldScreenImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TopTaskTrackerExtFoldScreenImpl.kt\ncom/android/quickstep/TopTaskTrackerExtFoldScreenImpl\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,131:1\n13309#2,2:132\n*S KotlinDebug\n*F\n+ 1 TopTaskTrackerExtFoldScreenImpl.kt\ncom/android/quickstep/TopTaskTrackerExtFoldScreenImpl\n*L\n60#1:132,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/quickstep/TopTaskTrackerExtFoldScreenImpl$Companion;

.field private static final TAG:Ljava/lang/String; = "TopTaskTrackerExtFoldScreenImpl"


# instance fields
.field private mFrontFocusEmmbeddedTask:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/TopTaskTrackerExtFoldScreenImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/TopTaskTrackerExtFoldScreenImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/TopTaskTrackerExtFoldScreenImpl;->Companion:Lcom/android/quickstep/TopTaskTrackerExtFoldScreenImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;-><init>()V

    return-void
.end method

.method private final isEmbeddedTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 4

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->isEmbeddedTask(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v1, "isEmbeddedTask(), taskInfo="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->print(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", return."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string v1, "TopTaskTrackerExtFoldScreenImpl"

    invoke-static {p1, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    return v0
.end method

.method private final isZoomTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    invoke-virtual {p0}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->getMTopRunningTaskInfo()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_19

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    invoke-static {v0}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->hasEmbeddedTask(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_43

    const-string v1, "isZoomTask(), taskInfo="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->print(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", return."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string v1, "TopTaskTrackerExtFoldScreenImpl"

    invoke-static {p1, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    return v0
.end method

.method private final readdEmbeddedTaskInfoToFirst(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 6

    if-eqz p1, :cond_83

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTrackerExtFoldScreenImpl;->mFrontFocusEmmbeddedTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v0, :cond_8

    goto/16 :goto_83

    :cond_8
    const/4 v1, 0x0

    if-eqz v0, :cond_28

    iget v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v2, v3, :cond_28

    iget v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-ne v2, v3, :cond_28

    iget v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    if-ne v2, v3, :cond_28

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v1, 0x1

    :cond_28
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->isEmbeddedTask(Landroid/content/Intent;)Z

    move-result v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_65

    const-string/jumbo v2, "readdEmbeddedTaskInfoToFirst(), same="

    const-string v3, ", task="

    invoke-static {v2, v1, v3}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->print(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", emmbedded"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/quickstep/TopTaskTrackerExtFoldScreenImpl;->mFrontFocusEmmbeddedTask:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->print(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isEmbedded="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "QuickStep"

    const-string v3, "TopTaskTrackerExtFoldScreenImpl"

    invoke-static {v2, v3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_65
    if-eqz v1, :cond_83

    if-nez v0, :cond_83

    invoke-virtual {p0}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->getMHost()Lcom/android/quickstep/TopTaskTracker;

    move-result-object p1

    if-eqz p1, :cond_80

    invoke-virtual {p1}, Lcom/android/quickstep/TopTaskTracker;->getWrapper()Lcom/android/quickstep/ITopTaskTrackerWrapper;

    move-result-object p1

    if-eqz p1, :cond_80

    invoke-interface {p1}, Lcom/android/quickstep/ITopTaskTrackerWrapper;->getOrderedTaskList()Ljava/util/LinkedList;

    move-result-object p1

    if-eqz p1, :cond_80

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTrackerExtFoldScreenImpl;->mFrontFocusEmmbeddedTask:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_80
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/quickstep/TopTaskTrackerExtFoldScreenImpl;->mFrontFocusEmmbeddedTask:Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_83
    :goto_83
    return-void
.end method


# virtual methods
.method public fillRunningTasksForOrderedTaskList(Ljava/util/LinkedList;[Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;[",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "orderedTaskList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "runningTasks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_21

    aget-object v2, p2, v1

    invoke-direct {p0, v2}, Lcom/android/quickstep/TopTaskTrackerExtFoldScreenImpl;->isEmbeddedTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v3

    if-eqz v3, :cond_1b

    iput-object v2, p0, Lcom/android/quickstep/TopTaskTrackerExtFoldScreenImpl;->mFrontFocusEmmbeddedTask:Landroid/app/ActivityManager$RunningTaskInfo;

    goto :goto_1e

    :cond_1b
    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_21
    return-void
.end method

.method public needUpdateTaskWhenStackChangedBackground(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 4

    if-nez p1, :cond_8

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->needUpdateTaskWhenStackChangedBackground(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0

    :cond_8
    invoke-direct {p0, p1}, Lcom/android/quickstep/TopTaskTrackerExtFoldScreenImpl;->isEmbeddedTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_18

    invoke-direct {p0, p1}, Lcom/android/quickstep/TopTaskTrackerExtFoldScreenImpl;->isZoomTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    move v0, v1

    :goto_19
    if-eqz v0, :cond_1d

    iput-object p1, p0, Lcom/android/quickstep/TopTaskTrackerExtFoldScreenImpl;->mFrontFocusEmmbeddedTask:Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_1d
    xor-int/lit8 p0, v0, 0x1

    return p0
.end method

.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 3

    const-string/jumbo v0, "taskInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/TopTaskTrackerExtFoldScreenImpl;->isEmbeddedTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-direct {p0, p1}, Lcom/android/quickstep/TopTaskTrackerExtFoldScreenImpl;->isZoomTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_1b

    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/TopTaskTrackerExtFoldScreenImpl;->mFrontFocusEmmbeddedTask:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-super {p0, p1}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0

    :cond_1b
    :goto_1b
    iput-object p1, p0, Lcom/android/quickstep/TopTaskTrackerExtFoldScreenImpl;->mFrontFocusEmmbeddedTask:Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->setForceUpdateOrderedTaskList(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public onUpdateRunningTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/TopTaskTrackerExtFoldScreenImpl;->readdEmbeddedTaskInfoToFirst(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method
