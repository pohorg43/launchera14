.class public final synthetic Lcom/android/wm/shell/splitscreen/x1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

.field public final synthetic b:Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

.field public final synthetic c:Landroid/graphics/Rect;

.field public final synthetic d:Landroid/graphics/Rect;

.field public final synthetic e:Ljava/lang/Runnable;

.field public final synthetic f:Landroid/view/SurfaceControl;

.field public final synthetic g:Landroid/graphics/Rect;

.field public final synthetic h:Ljava/lang/Runnable;

.field public final synthetic i:Landroid/window/WindowContainerTransaction;

.field public final synthetic j:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ljava/lang/Runnable;Landroid/window/WindowContainerTransaction;Ljava/lang/Boolean;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/x1;->a:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/x1;->b:Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/x1;->c:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/x1;->d:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/x1;->e:Ljava/lang/Runnable;

    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/x1;->f:Landroid/view/SurfaceControl;

    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/x1;->g:Landroid/graphics/Rect;

    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/x1;->h:Ljava/lang/Runnable;

    iput-object p9, p0, Lcom/android/wm/shell/splitscreen/x1;->i:Landroid/window/WindowContainerTransaction;

    iput-object p10, p0, Lcom/android/wm/shell/splitscreen/x1;->j:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 13

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/x1;->a:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/x1;->b:Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/x1;->c:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/x1;->d:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/x1;->e:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/x1;->f:Landroid/view/SurfaceControl;

    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/x1;->g:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/x1;->h:Ljava/lang/Runnable;

    iget-object v8, p0, Lcom/android/wm/shell/splitscreen/x1;->i:Landroid/window/WindowContainerTransaction;

    iget-object v9, p0, Lcom/android/wm/shell/splitscreen/x1;->j:Ljava/lang/Boolean;

    move-object v10, p1

    check-cast v10, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    invoke-static/range {v0 .. v10}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->c(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ljava/lang/Runnable;Landroid/window/WindowContainerTransaction;Ljava/lang/Boolean;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V

    return-void
.end method
