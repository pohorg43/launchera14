.class public final Lcom/android/launcher3/card/LauncherCardViewDragListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;


# instance fields
.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mTarget:Lcom/android/launcher3/card/LauncherCardView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 3

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/LauncherCardViewDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method


# virtual methods
.method public onDragEnd()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardViewDragListener;->mTarget:Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/launcher3/card/LauncherCardView;->endDrag()V

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardViewDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 4

    const/4 p2, 0x0

    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    goto :goto_7

    :cond_6
    move-object v0, p2

    :goto_7
    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_d

    :cond_b
    instance-of v0, v0, Lcom/android/launcher3/card/LauncherCardView;

    :goto_d
    if-eqz v0, :cond_24

    if-eqz p1, :cond_14

    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    goto :goto_15

    :cond_14
    move-object p1, p2

    :goto_15
    instance-of v0, p1, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v0, :cond_1c

    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/card/LauncherCardView;

    :cond_1c
    iput-object p2, p0, Lcom/android/launcher3/card/LauncherCardViewDragListener;->mTarget:Lcom/android/launcher3/card/LauncherCardView;

    if-eqz p2, :cond_2d

    invoke-virtual {p2}, Lcom/android/launcher3/card/LauncherCardView;->startDrag()V

    goto :goto_2d

    :cond_24
    iget-object p1, p0, Lcom/android/launcher3/card/LauncherCardViewDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    :cond_2d
    :goto_2d
    return-void
.end method
