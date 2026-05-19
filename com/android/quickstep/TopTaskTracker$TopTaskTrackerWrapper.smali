.class Lcom/android/quickstep/TopTaskTracker$TopTaskTrackerWrapper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/ITopTaskTrackerWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/TopTaskTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TopTaskTrackerWrapper"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/TopTaskTracker;


# direct methods
.method private constructor <init>(Lcom/android/quickstep/TopTaskTracker;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/TopTaskTracker$TopTaskTrackerWrapper;->this$0:Lcom/android/quickstep/TopTaskTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/TopTaskTracker;Lcom/android/quickstep/TopTaskTracker$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/quickstep/TopTaskTracker$TopTaskTrackerWrapper;-><init>(Lcom/android/quickstep/TopTaskTracker;)V

    return-void
.end method


# virtual methods
.method public getOrderedTaskList()Ljava/util/LinkedList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker$TopTaskTrackerWrapper;->this$0:Lcom/android/quickstep/TopTaskTracker;

    invoke-static {p0}, Lcom/android/quickstep/TopTaskTracker;->access$100(Lcom/android/quickstep/TopTaskTracker;)Ljava/util/LinkedList;

    move-result-object p0

    return-object p0
.end method

.method public getStagePosition(Z)Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker$TopTaskTrackerWrapper;->this$0:Lcom/android/quickstep/TopTaskTracker;

    invoke-static {p0}, Lcom/android/quickstep/TopTaskTracker;->access$200(Lcom/android/quickstep/TopTaskTracker;)Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    move-result-object p0

    return-object p0

    :cond_9
    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker$TopTaskTrackerWrapper;->this$0:Lcom/android/quickstep/TopTaskTracker;

    invoke-static {p0}, Lcom/android/quickstep/TopTaskTracker;->access$300(Lcom/android/quickstep/TopTaskTracker;)Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    move-result-object p0

    return-object p0
.end method

.method public setCachedTaskInfoTopTask(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3
    .param p1  # Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->access$402(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method
