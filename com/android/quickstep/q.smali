.class public final synthetic Lcom/android/quickstep/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;IZ)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/q;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/quickstep/q;->c:I

    iput-boolean p3, p0, Lcom/android/quickstep/q;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;IZ)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/q;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/quickstep/q;->c:I

    iput-boolean p3, p0, Lcom/android/quickstep/q;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/common/split/SplitLayout;ZI)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/quickstep/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/q;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/quickstep/q;->d:Z

    iput p3, p0, Lcom/android/quickstep/q;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;IZ)V
    .registers 5

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/quickstep/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/q;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/quickstep/q;->c:I

    iput-boolean p3, p0, Lcom/android/quickstep/q;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;IZ)V
    .registers 5

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/quickstep/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/q;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/quickstep/q;->c:I

    iput-boolean p3, p0, Lcom/android/quickstep/q;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/quickstep/q;->a:I

    packed-switch v0, :pswitch_data_42

    goto :goto_36

    :pswitch_6  #0x3
    iget-object v0, p0, Lcom/android/quickstep/q;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;

    iget v1, p0, Lcom/android/quickstep/q;->c:I

    iget-boolean p0, p0, Lcom/android/quickstep/q;->d:Z

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->a(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;IZ)V

    return-void

    :pswitch_12  #0x2
    iget-object v0, p0, Lcom/android/quickstep/q;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/common/split/SplitLayout;

    iget-boolean v1, p0, Lcom/android/quickstep/q;->d:Z

    iget p0, p0, Lcom/android/quickstep/q;->c:I

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/common/split/SplitLayout;->g(Lcom/android/wm/shell/common/split/SplitLayout;ZI)V

    return-void

    :pswitch_1e  #0x1
    iget-object v0, p0, Lcom/android/quickstep/q;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iget v1, p0, Lcom/android/quickstep/q;->c:I

    iget-boolean p0, p0, Lcom/android/quickstep/q;->d:Z

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->t(Lcom/android/quickstep/TouchInteractionService$TISBinder;IZ)V

    return-void

    :pswitch_2a  #0x0
    iget-object v0, p0, Lcom/android/quickstep/q;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/AbsSwipeUpHandler;

    iget v1, p0, Lcom/android/quickstep/q;->c:I

    iget-boolean p0, p0, Lcom/android/quickstep/q;->d:Z

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->U(Lcom/android/quickstep/AbsSwipeUpHandler;IZ)V

    return-void

    :goto_36
    iget-object v0, p0, Lcom/android/quickstep/q;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget v1, p0, Lcom/android/quickstep/q;->c:I

    iget-boolean p0, p0, Lcom/android/quickstep/q;->d:Z

    invoke-static {v0, v1, p0}, Lcom/oplus/splitscreen/StackDividerService;->d(Lcom/android/wm/shell/splitscreen/SplitScreenController;IZ)V

    return-void

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_2a  #00000000
        :pswitch_1e  #00000001
        :pswitch_12  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
