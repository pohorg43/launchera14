.class Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/taskview/TaskViewTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingTransition"
.end annotation


# instance fields
.field public mClaimed:Landroid/os/IBinder;

.field public final mLaunchCookie:Landroid/os/IBinder;

.field public final mTaskView:Lcom/android/wm/shell/taskview/TaskViewTaskController;

.field public final mType:I

.field public final mWct:Landroid/window/WindowContainerTransaction;


# direct methods
.method public constructor <init>(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/os/IBinder;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mType:I

    iput-object p2, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mWct:Landroid/window/WindowContainerTransaction;

    iput-object p3, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mTaskView:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    iput-object p4, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mLaunchCookie:Landroid/os/IBinder;

    return-void
.end method
