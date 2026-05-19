.class public final synthetic Lcom/android/wm/shell/taskview/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/taskview/TaskViewTaskController;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/taskview/TaskViewTaskController;II)V
    .registers 5

    iput p3, p0, Lcom/android/wm/shell/taskview/d;->a:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_9

    const/4 v0, 0x2

    if-eq p3, v0, :cond_9

    const/4 v0, 0x3

    :cond_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/taskview/d;->b:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    iput p2, p0, Lcom/android/wm/shell/taskview/d;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/taskview/d;->a:I

    packed-switch v0, :pswitch_data_2e

    goto :goto_26

    :pswitch_6  #0x3
    iget-object v0, p0, Lcom/android/wm/shell/taskview/d;->b:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    iget p0, p0, Lcom/android/wm/shell/taskview/d;->c:I

    invoke-static {v0, p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->g(Lcom/android/wm/shell/taskview/TaskViewTaskController;I)V

    return-void

    :pswitch_e  #0x2
    iget-object v0, p0, Lcom/android/wm/shell/taskview/d;->b:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    iget p0, p0, Lcom/android/wm/shell/taskview/d;->c:I

    invoke-static {v0, p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->c(Lcom/android/wm/shell/taskview/TaskViewTaskController;I)V

    return-void

    :pswitch_16  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/taskview/d;->b:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    iget p0, p0, Lcom/android/wm/shell/taskview/d;->c:I

    invoke-static {v0, p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->j(Lcom/android/wm/shell/taskview/TaskViewTaskController;I)V

    return-void

    :pswitch_1e  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/taskview/d;->b:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    iget p0, p0, Lcom/android/wm/shell/taskview/d;->c:I

    invoke-static {v0, p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->s(Lcom/android/wm/shell/taskview/TaskViewTaskController;I)V

    return-void

    :goto_26
    iget-object v0, p0, Lcom/android/wm/shell/taskview/d;->b:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    iget p0, p0, Lcom/android/wm/shell/taskview/d;->c:I

    invoke-static {v0, p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->p(Lcom/android/wm/shell/taskview/TaskViewTaskController;I)V

    return-void

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_16  #00000001
        :pswitch_e  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
