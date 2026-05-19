.class public final synthetic Lcom/android/launcher3/q1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/q1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/q1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/q1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/q1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/q1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/q1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/q1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/q1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/q1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/q1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher3/q1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/q1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/q1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/q1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 3

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher3/q1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/q1;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/android/launcher3/q1;->a:I

    packed-switch v0, :pswitch_data_52

    goto :goto_49

    :pswitch_6  #0x6
    iget-object p0, p0, Lcom/android/launcher3/q1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-static {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->a(Lcom/android/wm/shell/recents/RecentTasksController;)Lcom/android/wm/shell/common/ExternalInterfaceBinder;

    move-result-object p0

    return-object p0

    :pswitch_f  #0x5
    iget-object p0, p0, Lcom/android/launcher3/q1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->b(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/common/ExternalInterfaceBinder;

    move-result-object p0

    return-object p0

    :pswitch_18  #0x4
    iget-object p0, p0, Lcom/android/launcher3/q1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;

    invoke-static {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->e(Lcom/android/wm/shell/draganddrop/DragAndDropController;)Lcom/android/wm/shell/common/ExternalInterfaceBinder;

    move-result-object p0

    return-object p0

    :pswitch_21  #0x3
    iget-object p0, p0, Lcom/android/launcher3/q1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->b(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_2e  #0x2
    iget-object p0, p0, Lcom/android/launcher3/q1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->h(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_37  #0x1
    iget-object p0, p0, Lcom/android/launcher3/q1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->u(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)[F

    move-result-object p0

    return-object p0

    :pswitch_40  #0x0
    iget-object p0, p0, Lcom/android/launcher3/q1;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->l(Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_49
    iget-object p0, p0, Lcom/android/launcher3/q1;->b:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->m0(Lkotlin/jvm/internal/Ref$BooleanRef;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_40  #00000000
        :pswitch_37  #00000001
        :pswitch_2e  #00000002
        :pswitch_21  #00000003
        :pswitch_18  #00000004
        :pswitch_f  #00000005
        :pswitch_6  #00000006
    .end packed-switch
.end method
