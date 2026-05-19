.class public final synthetic Lcom/android/launcher3/taskbar/j1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/taskbar/TaskbarDragController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarDragController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/j1;->a:Lcom/android/launcher3/taskbar/TaskbarDragController;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/j1;->a:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarDragController;->startDragOnLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method
