.class public final synthetic Lcom/android/wm/shell/splitscreen/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 4

    iput p2, p0, Lcom/android/wm/shell/splitscreen/o;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p2, v0, :cond_18

    const/4 v0, 0x3

    if-eq p2, v0, :cond_12

    const/4 v0, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/splitscreen/o;->b:I

    return-void

    :cond_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/splitscreen/o;->b:I

    return-void

    :cond_18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/splitscreen/o;->b:I

    return-void

    :cond_1e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/splitscreen/o;->b:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/splitscreen/o;->a:I

    packed-switch v0, :pswitch_data_2e

    goto :goto_26

    :pswitch_6  #0x3
    iget p0, p0, Lcom/android/wm/shell/splitscreen/o;->b:I

    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->x(ILcom/android/wm/shell/recents/RecentTasksController;)V

    return-void

    :pswitch_e  #0x2
    iget p0, p0, Lcom/android/wm/shell/splitscreen/o;->b:I

    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->D(ILcom/android/wm/shell/recents/RecentTasksController;)V

    return-void

    :pswitch_16  #0x1
    iget p0, p0, Lcom/android/wm/shell/splitscreen/o;->b:I

    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->e(ILcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void

    :pswitch_1e  #0x0
    iget p0, p0, Lcom/android/wm/shell/splitscreen/o;->b:I

    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->s(ILcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void

    :goto_26
    iget p0, p0, Lcom/android/wm/shell/splitscreen/o;->b:I

    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->t(ILcom/android/wm/shell/recents/RecentTasksController;)V

    return-void

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_16  #00000001
        :pswitch_e  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
