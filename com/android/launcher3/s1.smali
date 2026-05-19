.class public final synthetic Lcom/android/launcher3/s1;
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

    iput v0, p0, Lcom/android/launcher3/s1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/s1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/s1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/s1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/s1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/s1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/BaseQuickstepLauncher;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/s1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/s1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherModel;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/s1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/s1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/PagedView;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher3/s1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/s1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/s1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/s1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/util/RectFSpringAnim;)V
    .registers 3

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher3/s1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/s1;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/s1;->a:I

    packed-switch v0, :pswitch_data_46

    goto :goto_3e

    :pswitch_6  #0x6
    iget-object p0, p0, Lcom/android/launcher3/s1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/PagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onNotSnappingToPageInFreeScroll()V

    return-void

    :pswitch_e  #0x5
    iget-object p0, p0, Lcom/android/launcher3/s1;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/OplusLauncherModel;->p(Landroid/content/Context;)V

    return-void

    :pswitch_16  #0x4
    iget-object p0, p0, Lcom/android/launcher3/s1;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lcom/android/launcher3/OplusDragLayer;->h(Landroid/view/View;)V

    return-void

    :pswitch_1e  #0x3
    iget-object p0, p0, Lcom/android/launcher3/s1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/LauncherModel;

    invoke-static {p0}, Lcom/android/launcher3/LauncherModel;->d(Lcom/android/launcher3/LauncherModel;)V

    return-void

    :pswitch_26  #0x2
    iget-object p0, p0, Lcom/android/launcher3/s1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->F(Lcom/android/launcher3/BaseQuickstepLauncher;)V

    return-void

    :pswitch_2e  #0x1
    iget-object p0, p0, Lcom/android/launcher3/s1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;

    invoke-virtual {p0}, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->onLauncherResume()V

    return-void

    :pswitch_36  #0x0
    iget-object p0, p0, Lcom/android/launcher3/s1;->b:Ljava/lang/Object;

    check-cast p0, Landroid/animation/Animator;

    invoke-static {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$10;->d(Landroid/animation/Animator;)V

    return-void

    :goto_3e
    iget-object p0, p0, Lcom/android/launcher3/s1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/util/RectFSpringAnim;

    invoke-virtual {p0}, Lcom/android/quickstep/util/RectFSpringAnim;->end()V

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
