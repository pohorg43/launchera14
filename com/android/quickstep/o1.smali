.class public final synthetic Lcom/android/quickstep/o1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(ILcom/oplus/zoomwindow/OplusZoomTaskInfo;)V
    .registers 4

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/quickstep/o1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/quickstep/o1;->c:I

    iput-object p2, p0, Lcom/android/quickstep/o1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsModel;I)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/o1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/o1;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/quickstep/o1;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/util/StaggeredWorkspaceAnim;I)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/o1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/o1;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/quickstep/o1;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/quickstep/o1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/o1;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/quickstep/o1;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V
    .registers 4

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/quickstep/o1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/o1;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/quickstep/o1;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;I)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/quickstep/o1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/o1;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/quickstep/o1;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/quickstep/o1;->a:I

    packed-switch v0, :pswitch_data_4e

    goto :goto_42

    :pswitch_6  #0x4
    iget-object v0, p0, Lcom/android/quickstep/o1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget p0, p0, Lcom/android/quickstep/o1;->c:I

    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->E(Lcom/android/wm/shell/splitscreen/StageCoordinator;ILcom/android/wm/shell/recents/RecentTasksController;)V

    return-void

    :pswitch_12  #0x3
    iget-object v0, p0, Lcom/android/quickstep/o1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/compatui/CompatUIController;

    iget p0, p0, Lcom/android/quickstep/o1;->c:I

    check-cast p1, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->k(Lcom/android/wm/shell/compatui/CompatUIController;ILcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;)V

    return-void

    :pswitch_1e  #0x2
    iget-object v0, p0, Lcom/android/quickstep/o1;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget p0, p0, Lcom/android/quickstep/o1;->c:I

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->j(Ljava/util/ArrayList;ILcom/android/wm/shell/bubbles/Bubble;)V

    return-void

    :pswitch_2a  #0x1
    iget-object v0, p0, Lcom/android/quickstep/o1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;

    iget p0, p0, Lcom/android/quickstep/o1;->c:I

    check-cast p1, Landroid/view/View;

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->a(Lcom/android/quickstep/util/StaggeredWorkspaceAnim;ILandroid/view/View;)V

    return-void

    :pswitch_36  #0x0
    iget-object v0, p0, Lcom/android/quickstep/o1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/RecentsModel;

    iget p0, p0, Lcom/android/quickstep/o1;->c:I

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/RecentsModel;->f(Lcom/android/quickstep/RecentsModel;ILjava/util/ArrayList;)V

    return-void

    :goto_42
    iget v0, p0, Lcom/android/quickstep/o1;->c:I

    iget-object p0, p0, Lcom/android/quickstep/o1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

    check-cast p1, Lcom/oplus/zoom/ZoomRootTaskManager;

    invoke-static {v0, p0, p1}, Lcom/oplus/zoom/ZoomRootTaskController;->n(ILcom/oplus/zoomwindow/OplusZoomTaskInfo;Lcom/oplus/zoom/ZoomRootTaskManager;)V

    return-void

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_36  #00000000
        :pswitch_2a  #00000001
        :pswitch_1e  #00000002
        :pswitch_12  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method
