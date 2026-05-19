.class Lcom/android/launcher3/taskbar/TaskbarDragController$2;
.super Landroid/view/View$DragShadowBuilder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/TaskbarDragController;->startSystemDrag(Lcom/android/launcher3/BubbleTextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarDragController;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .registers 7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarDragController;->access$500()Z

    move-result v0

    if-eqz v0, :cond_e

    const/high16 v0, -0x10000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_e
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->access$600(Lcom/android/launcher3/taskbar/TaskbarDragController;)Lcom/android/launcher3/DropTarget$DragObject;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->access$000(Lcom/android/launcher3/taskbar/TaskbarDragController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarDragController;->access$000(Lcom/android/launcher3/taskbar/TaskbarDragController;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarDragController;->access$000(Lcom/android/launcher3/taskbar/TaskbarDragController;)I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->access$100(Lcom/android/launcher3/taskbar/TaskbarDragController;)Lcom/android/launcher3/DropTarget$DragObject;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->getDragRegionWidth()I

    move-result v0

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->access$000(Lcom/android/launcher3/taskbar/TaskbarDragController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarDragController;->access$200(Lcom/android/launcher3/taskbar/TaskbarDragController;)Lcom/android/launcher3/DropTarget$DragObject;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragView;->getDragRegionHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarDragController;->access$300(Lcom/android/launcher3/taskbar/TaskbarDragController;)I

    move-result v1

    add-int/2addr v1, p1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->access$400(Lcom/android/launcher3/taskbar/TaskbarDragController;)I

    move-result p0

    add-int/2addr p0, v0

    invoke-virtual {p2, v1, p0}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
