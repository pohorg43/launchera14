.class Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->centerAndMoveToDesktopWithAnimation(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

.field public final synthetic val$ev:Landroid/view/MotionEvent;

.field public final synthetic val$relevantDecor:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/MotionEvent;)V
    .registers 4

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;->val$relevantDecor:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;->val$ev:Landroid/view/MotionEvent;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/MotionEvent;Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;->lambda$onAnimationEnd$0(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/MotionEvent;Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/MotionEvent;Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .registers 5

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result p2

    const v0, 0x3f19999a  # 0.6f

    invoke-static {p0, p2, v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->access$1200(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;IF)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p3, p1, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->onDragPositioningEndThroughStatusBar(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->access$700(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Ljava/util/Optional;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;->val$relevantDecor:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;->val$ev:Landroid/view/MotionEvent;

    new-instance v2, Lcom/android/wm/shell/windowdecor/b;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/wm/shell/windowdecor/b;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
