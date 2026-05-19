.class public final synthetic Lcom/android/quickstep/views/d0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/popup/SystemShortcut;Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/quickstep/views/d0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/d0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/quickstep/views/d0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/FloatingWidgetView;Lcom/android/launcher3/dragndrop/DragLayer;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/views/d0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/d0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/quickstep/views/d0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/MotionEvent;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/quickstep/views/d0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/d0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/quickstep/views/d0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView$16;Ljava/lang/Boolean;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/views/d0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/d0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/quickstep/views/d0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/quickstep/views/d0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/d0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/quickstep/views/d0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;)V
    .registers 4

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/quickstep/views/d0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/d0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/quickstep/views/d0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;Ljava/lang/Runnable;)V
    .registers 4

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/quickstep/views/d0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/d0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/quickstep/views/d0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/TaskView;Ljava/util/function/Consumer;)V
    .registers 4

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/quickstep/views/d0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/d0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/quickstep/views/d0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/quickstep/views/d0;->a:I

    packed-switch v0, :pswitch_data_66

    goto :goto_5a

    :pswitch_6  #0x6
    iget-object v0, p0, Lcom/android/quickstep/views/d0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/popup/SystemShortcut;

    iget-object p0, p0, Lcom/android/quickstep/views/d0;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/quickstep/views/TaskMenuView;->b(Lcom/android/launcher3/popup/SystemShortcut;Landroid/view/View;)V

    return-void

    :pswitch_12  #0x5
    iget-object v0, p0, Lcom/android/quickstep/views/d0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    iget-object p0, p0, Lcom/android/quickstep/views/d0;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/android/quickstep/views/RecentsView;->y(Lcom/android/quickstep/views/RecentsView;Ljava/lang/Runnable;)V

    return-void

    :pswitch_1e  #0x4
    iget-object v0, p0, Lcom/android/quickstep/views/d0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    iget-object p0, p0, Lcom/android/quickstep/views/d0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/TaskView;

    invoke-static {v0, p0}, Lcom/android/quickstep/views/RecentsView;->N(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;)V

    return-void

    :pswitch_2a  #0x3
    iget-object v0, p0, Lcom/android/quickstep/views/d0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    iget-object p0, p0, Lcom/android/quickstep/views/d0;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/quickstep/views/RecentsView;->C(Lcom/android/quickstep/views/RecentsView;Landroid/view/View;)V

    return-void

    :pswitch_36  #0x2
    iget-object v0, p0, Lcom/android/quickstep/views/d0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-object p0, p0, Lcom/android/quickstep/views/d0;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/MotionEvent;

    invoke-static {v0, p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->e0(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/MotionEvent;)V

    return-void

    :pswitch_42  #0x1
    iget-object v0, p0, Lcom/android/quickstep/views/d0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/FloatingWidgetView;

    iget-object p0, p0, Lcom/android/quickstep/views/d0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-static {v0, p0}, Lcom/android/quickstep/views/FloatingWidgetView;->a(Lcom/android/quickstep/views/FloatingWidgetView;Lcom/android/launcher3/dragndrop/DragLayer;)V

    return-void

    :pswitch_4e  #0x0
    iget-object v0, p0, Lcom/android/quickstep/views/d0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/RecentsView$16;

    iget-object p0, p0, Lcom/android/quickstep/views/d0;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-static {v0, p0}, Lcom/android/quickstep/views/RecentsView$16;->b(Lcom/android/quickstep/views/RecentsView$16;Ljava/lang/Boolean;)V

    return-void

    :goto_5a
    iget-object v0, p0, Lcom/android/quickstep/views/d0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/TaskView;

    iget-object p0, p0, Lcom/android/quickstep/views/d0;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Consumer;

    invoke-static {v0, p0}, Lcom/android/quickstep/views/TaskView;->g(Lcom/android/quickstep/views/TaskView;Ljava/util/function/Consumer;)V

    return-void

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_4e  #00000000
        :pswitch_42  #00000001
        :pswitch_36  #00000002
        :pswitch_2a  #00000003
        :pswitch_1e  #00000004
        :pswitch_12  #00000005
        :pswitch_6  #00000006
    .end packed-switch
.end method
