.class public final synthetic Lcom/android/wm/shell/windowdecor/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final synthetic b:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

.field public final synthetic c:Landroid/view/MotionEvent;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/MotionEvent;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/f;->a:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/f;->b:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/f;->c:Landroid/view/MotionEvent;

    iput p4, p0, Lcom/android/wm/shell/windowdecor/f;->d:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/f;->a:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/f;->b:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/f;->c:Landroid/view/MotionEvent;

    iget p0, p0, Lcom/android/wm/shell/windowdecor/f;->d:I

    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->d(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/MotionEvent;ILcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    return-void
.end method
