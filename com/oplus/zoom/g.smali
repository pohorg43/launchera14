.class public final synthetic Lcom/oplus/zoom/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;

.field public final synthetic b:Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

.field public final synthetic c:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/g;->a:Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;

    iput-object p2, p0, Lcom/oplus/zoom/g;->b:Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

    iput-object p3, p0, Lcom/oplus/zoom/g;->c:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/g;->a:Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;

    iget-object v1, p0, Lcom/oplus/zoom/g;->b:Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

    iget-object p0, p0, Lcom/oplus/zoom/g;->c:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0, v1, p0}, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->j(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method
