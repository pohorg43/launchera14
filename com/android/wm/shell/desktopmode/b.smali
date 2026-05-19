.class public final synthetic Lcom/android/wm/shell/desktopmode/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;Ljava/util/concurrent/Executor;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/desktopmode/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/b;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/b;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/desktopmode/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/b;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/b;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;Ljava/util/concurrent/Executor;)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/desktopmode/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/b;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/b;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .registers 5

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/wm/shell/desktopmode/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/b;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/b;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/desktopmode/b;->a:I

    packed-switch v0, :pswitch_data_3e

    goto :goto_30

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/b;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/b;->d:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;->a(Lcom/android/wm/shell/desktopmode/DesktopTasksController;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;Ljava/util/concurrent/Executor;)V

    return-void

    :pswitch_14  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/b;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/b;->d:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;->a(Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void

    :pswitch_22  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/b;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/b;->d:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;->b(Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;Ljava/util/concurrent/Executor;)V

    return-void

    :goto_30
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/b;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/b;->d:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;->b(Lcom/android/wm/shell/desktopmode/DesktopTasksController;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_22  #00000000
        :pswitch_14  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
