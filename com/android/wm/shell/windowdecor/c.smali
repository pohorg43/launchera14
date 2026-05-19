.class public final synthetic Lcom/android/wm/shell/windowdecor/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/windowdecor/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/MotionEvent;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/windowdecor/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/c;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/windowdecor/c;->a:I

    packed-switch v0, :pswitch_data_22

    goto :goto_14

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/c;->b:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/c;->c:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Point;

    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->g(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    return-void

    :goto_14
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/c;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/MotionEvent;

    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->d(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/MotionEvent;Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    return-void

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
