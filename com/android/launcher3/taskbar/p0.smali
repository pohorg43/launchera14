.class public final synthetic Lcom/android/launcher3/taskbar/p0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/taskbar/p0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/p0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/ImeStateManage;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/taskbar/p0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/p0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/taskbar/p0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/p0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/taskbar/p0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/p0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/taskbar/p0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/p0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarDragController$1;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/taskbar/p0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/p0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher3/taskbar/p0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/p0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;)V
    .registers 3

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher3/taskbar/p0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/p0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;)V
    .registers 3

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/launcher3/taskbar/p0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/p0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;)V
    .registers 3

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/launcher3/taskbar/p0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/p0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarViewController;)V
    .registers 3

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/launcher3/taskbar/p0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/p0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/taskbar/p0;->a:I

    packed-switch v0, :pswitch_data_5e

    goto :goto_56

    :pswitch_6  #0x9
    iget-object p0, p0, Lcom/android/launcher3/taskbar/p0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->a(Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;)V

    return-void

    :pswitch_e  #0x8
    iget-object p0, p0, Lcom/android/launcher3/taskbar/p0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->a(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;)V

    return-void

    :pswitch_16  #0x7
    iget-object p0, p0, Lcom/android/launcher3/taskbar/p0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->a(Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;)V

    return-void

    :pswitch_1e  #0x6
    iget-object p0, p0, Lcom/android/launcher3/taskbar/p0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->a(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)V

    return-void

    :pswitch_26  #0x5
    iget-object p0, p0, Lcom/android/launcher3/taskbar/p0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->i(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    return-void

    :pswitch_2e  #0x4
    iget-object p0, p0, Lcom/android/launcher3/taskbar/p0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->d(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;)V

    return-void

    :pswitch_36  #0x3
    iget-object p0, p0, Lcom/android/launcher3/taskbar/p0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->d(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)V

    return-void

    :pswitch_3e  #0x2
    iget-object p0, p0, Lcom/android/launcher3/taskbar/p0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->g(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    return-void

    :pswitch_46  #0x1
    iget-object p0, p0, Lcom/android/launcher3/taskbar/p0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/ImeStateManage;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/ImeStateManage;->a(Lcom/android/launcher3/taskbar/ImeStateManage;)V

    return-void

    :pswitch_4e  #0x0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/p0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarDragController$1;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarDragController$1;->a(Lcom/android/launcher3/taskbar/TaskbarDragController$1;)V

    return-void

    :goto_56
    iget-object p0, p0, Lcom/android/launcher3/taskbar/p0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->updateTranslationY()V

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
