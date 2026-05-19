.class Lcom/android/wm/shell/pip/PipTaskOrganizer$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/pip/PipTransitionController$PipTransitionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/pip/PipTaskOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$2;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPipTransitionCanceled(I)V
    .registers 2

    return-void
.end method

.method public onPipTransitionFinished(I)V
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1a

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$2;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-static {p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->access$1100(Lcom/android/wm/shell/pip/PipTaskOrganizer;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$2;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-static {p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->access$1100(Lcom/android/wm/shell/pip/PipTaskOrganizer;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$2;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->access$1102(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_1a
    return-void
.end method

.method public onPipTransitionStarted(ILandroid/graphics/Rect;)V
    .registers 3

    return-void
.end method
