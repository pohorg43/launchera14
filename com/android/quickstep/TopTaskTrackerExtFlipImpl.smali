.class public final Lcom/android/quickstep/TopTaskTrackerExtFlipImpl;
.super Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/TopTaskTrackerExtFlipImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/quickstep/TopTaskTrackerExtFlipImpl$Companion;

.field private static final TAG:Ljava/lang/String; = "TopTaskTrackerExtFlipImpl"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/TopTaskTrackerExtFlipImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/TopTaskTrackerExtFlipImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/TopTaskTrackerExtFlipImpl;->Companion:Lcom/android/quickstep/TopTaskTrackerExtFlipImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 6

    const-string/jumbo v0, "taskInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->getMHost()Lcom/android/quickstep/TopTaskTracker;

    move-result-object v1

    if-eqz v1, :cond_7f

    invoke-virtual {v1}, Lcom/android/quickstep/TopTaskTracker;->getWrapper()Lcom/android/quickstep/ITopTaskTrackerWrapper;

    move-result-object v1

    if-eqz v1, :cond_7f

    invoke-interface {v1}, Lcom/android/quickstep/ITopTaskTrackerWrapper;->getOrderedTaskList()Ljava/util/LinkedList;

    move-result-object v1

    if-nez v1, :cond_1d

    goto :goto_7f

    :cond_1d
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_24

    return v0

    :cond_24
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    const/4 v2, -0x1

    if-eq p1, v2, :cond_7f

    if-eqz p1, :cond_7f

    const/16 v2, 0x2710

    if-ge p1, v2, :cond_7f

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p1, :cond_3e

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    if-eqz p1, :cond_3e

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    goto :goto_3f

    :cond_3e
    const/4 p1, 0x0

    :goto_3f
    if-nez p1, :cond_42

    return v0

    :cond_42
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result p1

    const/4 v0, 0x2

    const/4 v2, 0x1

    if-eq p1, v0, :cond_50

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4e

    goto :goto_50

    :cond_4e
    const/4 p1, 0x0

    goto :goto_51

    :cond_50
    :goto_50
    move p1, v2

    :goto_51
    invoke-virtual {p0, p1}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->setForceUpdateOrderedTaskList(Z)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_73

    const-string/jumbo p1, "onTaskMovedToFront(), forceUpdateOrderedTaskList="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->getForceUpdateOrderedTaskList()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QuickStep"

    const-string v3, "TopTaskTrackerExtFlipImpl"

    invoke-static {v0, v3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_73
    invoke-virtual {p0}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->getMTopRunningTaskInfo()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return v2

    :cond_7f
    :goto_7f
    return v0
.end method
