.class public final synthetic Lcom/oplus/zoom/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;

.field public final synthetic b:Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

.field public final synthetic c:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final synthetic d:Landroid/view/SurfaceControl;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/h;->a:Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;

    iput-object p2, p0, Lcom/oplus/zoom/h;->b:Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

    iput-object p3, p0, Lcom/oplus/zoom/h;->c:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p4, p0, Lcom/oplus/zoom/h;->d:Landroid/view/SurfaceControl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/h;->a:Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;

    iget-object v1, p0, Lcom/oplus/zoom/h;->b:Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

    iget-object v2, p0, Lcom/oplus/zoom/h;->c:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Lcom/oplus/zoom/h;->d:Landroid/view/SurfaceControl;

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->a(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    return-void
.end method
