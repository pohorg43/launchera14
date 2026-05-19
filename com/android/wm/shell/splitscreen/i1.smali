.class public final synthetic Lcom/android/wm/shell/splitscreen/i1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final synthetic b:Lcom/android/wm/shell/splitscreen/StageTaskListener;

.field public final synthetic c:I

.field public final synthetic d:Landroid/window/WindowContainerTransaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/splitscreen/StageTaskListener;ILandroid/window/WindowContainerTransaction;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/i1;->a:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/i1;->b:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iput p3, p0, Lcom/android/wm/shell/splitscreen/i1;->c:I

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/i1;->d:Landroid/window/WindowContainerTransaction;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/i1;->a:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/i1;->b:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget v2, p0, Lcom/android/wm/shell/splitscreen/i1;->c:I

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/i1;->d:Landroid/window/WindowContainerTransaction;

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->x(Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/splitscreen/StageTaskListener;ILandroid/window/WindowContainerTransaction;)V

    return-void
.end method
