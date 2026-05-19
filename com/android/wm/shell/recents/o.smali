.class public final synthetic Lcom/android/wm/shell/recents/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$1;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/recents/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/recents/o;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/recents/o;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/recents/o;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler;Lcom/android/wm/shell/recents/RecentTasksController;Lcom/android/wm/shell/transition/Transitions;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/recents/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/recents/o;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/recents/o;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/recents/o;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/recents/o;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_16

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/recents/o;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$1;

    iget-object v1, p0, Lcom/android/wm/shell/recents/o;->c:Ljava/lang/Object;

    check-cast v1, Landroid/window/TransitionInfo;

    iget-object p0, p0, Lcom/android/wm/shell/recents/o;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$1;->a(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$1;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void

    :goto_16
    iget-object v0, p0, Lcom/android/wm/shell/recents/o;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-object v1, p0, Lcom/android/wm/shell/recents/o;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/wm/shell/recents/RecentTasksController;

    iget-object p0, p0, Lcom/android/wm/shell/recents/o;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/transition/Transitions;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->a(Lcom/android/wm/shell/recents/RecentsTransitionHandler;Lcom/android/wm/shell/recents/RecentTasksController;Lcom/android/wm/shell/transition/Transitions;)V

    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
