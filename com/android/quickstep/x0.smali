.class public final synthetic Lcom/android/quickstep/x0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/statemanager/StateManager;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/quickstep/x0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/x0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/OplusBaseRecentsModel;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/quickstep/x0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/x0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/x0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/x0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsActivity$2;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/x0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/x0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsActivity;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/quickstep/x0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/x0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationController;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/quickstep/x0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/x0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationDeviceState;)V
    .registers 3

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/quickstep/x0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/x0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/SwipeUpAnimationLogic;)V
    .registers 3

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/quickstep/x0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/x0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/TaskAnimationManager;)V
    .registers 3

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/quickstep/x0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/x0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/TouchInteractionService;)V
    .registers 3

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/quickstep/x0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/x0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/util/RectFSpringAnim;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/quickstep/x0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/x0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/quickstep/x0;->a:I

    packed-switch v0, :pswitch_data_5e

    goto :goto_56

    :pswitch_6  #0x9
    iget-object p0, p0, Lcom/android/quickstep/x0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {p0}, Lcom/android/quickstep/TaskAnimationManager;->g(Lcom/android/quickstep/TaskAnimationManager;)V

    return-void

    :pswitch_e  #0x8
    iget-object p0, p0, Lcom/android/quickstep/x0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/SwipeUpAnimationLogic;

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->updateFinalShift()V

    return-void

    :pswitch_16  #0x7
    iget-object p0, p0, Lcom/android/quickstep/x0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-static {p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->j(Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    return-void

    :pswitch_1e  #0x6
    iget-object p0, p0, Lcom/android/quickstep/x0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/RecentsAnimationController;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsAnimationController;->finishAnimationToApp()V

    return-void

    :pswitch_26  #0x5
    iget-object p0, p0, Lcom/android/quickstep/x0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/OplusBaseRecentsModel;

    invoke-static {p0}, Lcom/android/quickstep/OplusBaseRecentsModel$2;->c(Lcom/android/quickstep/OplusBaseRecentsModel;)V

    return-void

    :pswitch_2e  #0x4
    iget-object p0, p0, Lcom/android/quickstep/x0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/util/RectFSpringAnim;

    invoke-virtual {p0}, Lcom/android/quickstep/util/RectFSpringAnim;->onTargetPositionChanged()V

    return-void

    :pswitch_36  #0x3
    iget-object p0, p0, Lcom/android/quickstep/x0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/RecentsActivity;

    invoke-static {p0}, Lcom/android/quickstep/FallbackActivityInterface;->b(Lcom/android/quickstep/RecentsActivity;)V

    return-void

    :pswitch_3e  #0x2
    iget-object p0, p0, Lcom/android/quickstep/x0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/statemanager/StateManager;

    invoke-static {p0}, Lcom/android/quickstep/TaskViewUtils$12;->a(Lcom/android/launcher3/statemanager/StateManager;)V

    return-void

    :pswitch_46  #0x1
    iget-object p0, p0, Lcom/android/quickstep/x0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/RecentsActivity$2;

    invoke-static {p0}, Lcom/android/quickstep/RecentsActivity$2;->a(Lcom/android/quickstep/RecentsActivity$2;)V

    return-void

    :pswitch_4e  #0x0
    iget-object p0, p0, Lcom/android/quickstep/x0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    invoke-static {p0}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl$ShowRecentsNextFocusTask;->a(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;)V

    return-void

    :goto_56
    iget-object p0, p0, Lcom/android/quickstep/x0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/TouchInteractionService;

    invoke-static {p0}, Lcom/android/quickstep/TouchInteractionService;->j(Lcom/android/quickstep/TouchInteractionService;)V

    return-void

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_4e  #00000000
        :pswitch_46  #00000001
        :pswitch_3e  #00000002
        :pswitch_36  #00000003
        :pswitch_2e  #00000004
        :pswitch_26  #00000005
        :pswitch_1e  #00000006
        :pswitch_16  #00000007
        :pswitch_e  #00000008
        :pswitch_6  #00000009
    .end packed-switch
.end method
