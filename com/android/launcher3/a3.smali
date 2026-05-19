.class public final synthetic Lcom/android/launcher3/a3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/launcher3/a3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/a3;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Intent;)V
    .registers 3

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/launcher3/a3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/a3;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/AbstractFloatingView;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/a3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/a3;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/a3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/a3;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;)V
    .registers 3

    const/16 v0, 0xc

    iput v0, p0, Lcom/android/launcher3/a3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/a3;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;)V
    .registers 3

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/launcher3/a3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/a3;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager$19$1;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/a3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/a3;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/icons/IconCache;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher3/a3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/a3;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 3

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher3/a3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/a3;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/ModelWriter;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/a3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/a3;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/util/RunnableList;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/a3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/a3;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/util/SafeCloseable;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/a3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/a3;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V
    .registers 3

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/launcher3/a3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/a3;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/a3;->a:I

    packed-switch v0, :pswitch_data_6e

    goto :goto_66

    :pswitch_6  #0xb
    iget-object p0, p0, Lcom/android/launcher3/a3;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    invoke-static {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->m(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;)V

    return-void

    :pswitch_e  #0xa
    iget-object p0, p0, Lcom/android/launcher3/a3;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/launcher3/OplusLauncherProvider;->j(Landroid/content/Intent;)V

    return-void

    :pswitch_16  #0x9
    iget-object p0, p0, Lcom/android/launcher3/a3;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p0}, Lcom/android/launcher3/OplusDragLayer;->i(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    return-void

    :pswitch_1e  #0x8
    iget-object p0, p0, Lcom/android/launcher3/a3;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/MemoryWatchDog;->a(Landroid/content/Context;)V

    return-void

    :pswitch_26  #0x7
    iget-object p0, p0, Lcom/android/launcher3/a3;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/BgDataModel$Callbacks;

    invoke-interface {p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->clearPendingBinds()V

    return-void

    :pswitch_2e  #0x6
    iget-object p0, p0, Lcom/android/launcher3/a3;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {p0}, Lcom/android/launcher3/icons/IconCache;->close()V

    return-void

    :pswitch_36  #0x5
    iget-object p0, p0, Lcom/android/launcher3/a3;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/SafeCloseable;

    invoke-interface {p0}, Lcom/android/launcher3/util/SafeCloseable;->close()V

    return-void

    :pswitch_3e  #0x4
    iget-object p0, p0, Lcom/android/launcher3/a3;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->p(Lcom/android/launcher3/Launcher;)V

    return-void

    :pswitch_46  #0x3
    iget-object p0, p0, Lcom/android/launcher3/a3;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/AbstractFloatingView;

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->x(Lcom/android/launcher3/AbstractFloatingView;)V

    return-void

    :pswitch_4e  #0x2
    iget-object p0, p0, Lcom/android/launcher3/a3;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/ModelWriter;

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelWriter;->commitDelete()V

    return-void

    :pswitch_56  #0x1
    iget-object p0, p0, Lcom/android/launcher3/a3;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {p0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    return-void

    :pswitch_5e  #0x0
    iget-object p0, p0, Lcom/android/launcher3/a3;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/QuickstepTransitionManager$19$1;

    invoke-static {p0}, Lcom/android/launcher3/QuickstepTransitionManager$19$1;->a(Lcom/android/launcher3/QuickstepTransitionManager$19$1;)V

    return-void

    :goto_66
    iget-object p0, p0, Lcom/android/launcher3/a3;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-static {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->a(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;)V

    return-void

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_5e  #00000000
        :pswitch_56  #00000001
        :pswitch_4e  #00000002
        :pswitch_46  #00000003
        :pswitch_3e  #00000004
        :pswitch_36  #00000005
        :pswitch_2e  #00000006
        :pswitch_26  #00000007
        :pswitch_1e  #00000008
        :pswitch_16  #00000009
        :pswitch_e  #0000000a
        :pswitch_6  #0000000b
    .end packed-switch
.end method
