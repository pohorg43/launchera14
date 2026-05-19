.class public final synthetic Lcom/android/launcher3/r1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/Animator;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/r1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/r1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/animation/AnimatorSet;)V
    .registers 3

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/launcher3/r1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/r1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher3/r1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/r1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/CheckLongPressHelper;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/r1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/r1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;)V
    .registers 3

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher3/r1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/r1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/PagedView;)V
    .registers 3

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/launcher3/r1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/r1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/aer/ProvisionManager;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/r1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/r1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/card/cache/CardCache;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/r1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/r1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/ModelDelegate;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/r1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/r1;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/r1;->a:I

    packed-switch v0, :pswitch_data_4e

    :pswitch_5  #0x1
    goto :goto_46

    :pswitch_6  #0x8
    iget-object p0, p0, Lcom/android/launcher3/r1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/PagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    return-void

    :pswitch_e  #0x7
    iget-object p0, p0, Lcom/android/launcher3/r1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->resetBaseInfoWhenEnd()V

    return-void

    :pswitch_16  #0x6
    iget-object p0, p0, Lcom/android/launcher3/r1;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/OplusLauncherModel;->o(Landroid/content/Context;)V

    return-void

    :pswitch_1e  #0x5
    iget-object p0, p0, Lcom/android/launcher3/r1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/ModelDelegate;

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelDelegate;->workspaceLoadComplete()V

    return-void

    :pswitch_26  #0x4
    iget-object p0, p0, Lcom/android/launcher3/r1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/card/cache/CardCache;

    invoke-virtual {p0}, Lcom/android/launcher3/card/cache/CardCache;->close()V

    return-void

    :pswitch_2e  #0x3
    iget-object p0, p0, Lcom/android/launcher3/r1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/aer/ProvisionManager;

    invoke-virtual {p0}, Lcom/android/launcher3/aer/ProvisionManager;->onManagedStateChange()V

    return-void

    :pswitch_36  #0x2
    iget-object p0, p0, Lcom/android/launcher3/r1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/CheckLongPressHelper;

    invoke-static {p0}, Lcom/android/launcher3/CheckLongPressHelper;->a(Lcom/android/launcher3/CheckLongPressHelper;)V

    return-void

    :pswitch_3e  #0x0
    iget-object p0, p0, Lcom/android/launcher3/r1;->b:Ljava/lang/Object;

    check-cast p0, Landroid/animation/Animator;

    invoke-static {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$10;->b(Landroid/animation/Animator;)V

    return-void

    :goto_46
    iget-object p0, p0, Lcom/android/launcher3/r1;->b:Ljava/lang/Object;

    check-cast p0, Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    return-void

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_3e  #00000000
        :pswitch_5  #00000001
        :pswitch_36  #00000002
        :pswitch_2e  #00000003
        :pswitch_26  #00000004
        :pswitch_1e  #00000005
        :pswitch_16  #00000006
        :pswitch_e  #00000007
        :pswitch_6  #00000008
    .end packed-switch
.end method
