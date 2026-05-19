.class public final synthetic Lcom/android/wm/shell/windowdecor/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;

.field public final synthetic b:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

.field public final synthetic c:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/MotionEvent;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/b;->a:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/b;->b:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/b;->c:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/b;->a:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/b;->b:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/b;->c:Landroid/view/MotionEvent;

    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;->a(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/MotionEvent;Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    return-void
.end method
