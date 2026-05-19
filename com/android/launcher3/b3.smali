.class public final synthetic Lcom/android/launcher3/b3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/DropTargetBar;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/b3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/b3;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/b3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/b3;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherAnimationRunner;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/b3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/b3;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/OplusWorkspace;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/b3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/b3;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager$4;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/b3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/b3;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/util/RunnableList;)V
    .registers 3

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher3/b3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/b3;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/util/SafeCloseable;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/b3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/b3;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/util/RectFSpringAnim;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher3/b3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/b3;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/b3;->a:I

    packed-switch v0, :pswitch_data_46

    goto :goto_3e

    :pswitch_6  #0x6
    iget-object p0, p0, Lcom/android/launcher3/b3;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/util/RectFSpringAnim;

    invoke-virtual {p0}, Lcom/android/quickstep/util/RectFSpringAnim;->onTargetPositionChanged()V

    return-void

    :pswitch_e  #0x5
    iget-object p0, p0, Lcom/android/launcher3/b3;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/OplusWorkspace;

    invoke-static {p0}, Lcom/android/launcher3/OplusWorkspace;->e0(Lcom/android/launcher3/OplusWorkspace;)V

    return-void

    :pswitch_16  #0x4
    iget-object p0, p0, Lcom/android/launcher3/b3;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/SafeCloseable;

    invoke-interface {p0}, Lcom/android/launcher3/util/SafeCloseable;->close()V

    return-void

    :pswitch_1e  #0x3
    iget-object p0, p0, Lcom/android/launcher3/b3;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/LauncherAnimationRunner;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAnimationRunner;->d(Lcom/android/launcher3/LauncherAnimationRunner;)V

    return-void

    :pswitch_26  #0x2
    iget-object p0, p0, Lcom/android/launcher3/b3;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->u(Lcom/android/launcher3/Launcher;)V

    return-void

    :pswitch_2e  #0x1
    iget-object p0, p0, Lcom/android/launcher3/b3;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/DropTargetBar;

    invoke-static {p0}, Lcom/android/launcher3/DropTargetBar;->b(Lcom/android/launcher3/DropTargetBar;)V

    return-void

    :pswitch_36  #0x0
    iget-object p0, p0, Lcom/android/launcher3/b3;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/QuickstepTransitionManager$4;

    invoke-static {p0}, Lcom/android/launcher3/QuickstepTransitionManager$4;->a(Lcom/android/launcher3/QuickstepTransitionManager$4;)V

    return-void

    :goto_3e
    iget-object p0, p0, Lcom/android/launcher3/b3;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {p0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    return-void

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_36  #00000000
        :pswitch_2e  #00000001
        :pswitch_26  #00000002
        :pswitch_1e  #00000003
        :pswitch_16  #00000004
        :pswitch_e  #00000005
        :pswitch_6  #00000006
    .end packed-switch
.end method
