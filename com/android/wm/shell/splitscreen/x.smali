.class public final synthetic Lcom/android/wm/shell/splitscreen/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/x;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/x;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/splitscreen/x;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/x;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->b(Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void

    :goto_10
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/x;->b:Ljava/lang/Object;

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->u(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
