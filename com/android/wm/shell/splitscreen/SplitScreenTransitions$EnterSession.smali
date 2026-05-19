.class Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;
.super Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EnterSession"
.end annotation


# instance fields
.field public final mResizeAnim:Z

.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/os/IBinder;Landroid/window/RemoteTransition;IZ)V
    .registers 13

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/os/IBinder;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;Landroid/window/RemoteTransition;I)V

    iput-boolean p5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;->mResizeAnim:Z

    return-void
.end method
