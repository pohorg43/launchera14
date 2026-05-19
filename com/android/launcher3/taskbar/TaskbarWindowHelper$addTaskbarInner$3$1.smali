.class public final Lcom/android/launcher3/taskbar/TaskbarWindowHelper$addTaskbarInner$3$1;
.super Lcom/oplus/quickstep/utils/SimpleCancellableTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->addTaskbarInner(Lcom/android/launcher3/taskbar/TaskbarDragLayer;Landroid/view/WindowManager$LayoutParams;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $dragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

.field public final synthetic $toWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarWindowHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarWindowHelper;Lcom/android/launcher3/taskbar/TaskbarDragLayer;Landroid/view/WindowManager$LayoutParams;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper$addTaskbarInner$3$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarWindowHelper;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper$addTaskbarInner$3$1;->$dragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper$addTaskbarInner$3$1;->$toWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/SimpleCancellableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doRun()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper$addTaskbarInner$3$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarWindowHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->access$setMAddTaskbarTask$p(Lcom/android/launcher3/taskbar/TaskbarWindowHelper;Lcom/oplus/quickstep/utils/SimpleCancellableTask;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper$addTaskbarInner$3$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarWindowHelper;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->access$getMRetryAddTaskbarCount$p(Lcom/android/launcher3/taskbar/TaskbarWindowHelper;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->access$setMRetryAddTaskbarCount$p(Lcom/android/launcher3/taskbar/TaskbarWindowHelper;I)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper$addTaskbarInner$3$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarWindowHelper;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper$addTaskbarInner$3$1;->$dragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper$addTaskbarInner$3$1;->$toWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->access$addTaskbarInner(Lcom/android/launcher3/taskbar/TaskbarWindowHelper;Lcom/android/launcher3/taskbar/TaskbarDragLayer;Landroid/view/WindowManager$LayoutParams;Z)V

    return-void
.end method
