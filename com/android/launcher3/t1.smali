.class public final synthetic Lcom/android/launcher3/t1;
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

    iput v0, p0, Lcom/android/launcher3/t1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/t1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/AppWidgetResizeFrame;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/t1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/t1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/BaseQuickstepLauncher;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/t1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/t1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/BubbleTextView;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/t1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/t1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/ExtendedEditText;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/t1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/t1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;)V
    .registers 3

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher3/t1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/t1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/PagedView;)V
    .registers 3

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/launcher3/t1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/t1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher3/t1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/t1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/pm/InstallSessionTracker;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/t1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/t1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/util/RectFSpringAnim;)V
    .registers 3

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/launcher3/t1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/t1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/card/manager/domain/ICardView;)V
    .registers 3

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/launcher3/t1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/t1;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/t1;->a:I

    packed-switch v0, :pswitch_data_5e

    goto :goto_56

    :pswitch_6  #0x9
    iget-object p0, p0, Lcom/android/launcher3/t1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/PagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    return-void

    :pswitch_e  #0x8
    iget-object p0, p0, Lcom/android/launcher3/t1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/card/manager/domain/ICardView;

    invoke-interface {p0}, Lcom/oplus/card/manager/domain/ICardView;->refreshViewScreenshot()V

    return-void

    :pswitch_16  #0x7
    iget-object p0, p0, Lcom/android/launcher3/t1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;

    invoke-static {p0}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->f(Lcom/android/launcher3/OplusBubbleTextViewSubscribe;)V

    return-void

    :pswitch_1e  #0x6
    iget-object p0, p0, Lcom/android/launcher3/t1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/BgDataModel$Callbacks;

    invoke-static {p0}, Lcom/android/launcher3/LauncherModel;->b(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_26  #0x5
    iget-object p0, p0, Lcom/android/launcher3/t1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/pm/InstallSessionTracker;

    invoke-virtual {p0}, Lcom/android/launcher3/pm/InstallSessionTracker;->unregister()V

    return-void

    :pswitch_2e  #0x4
    iget-object p0, p0, Lcom/android/launcher3/t1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/BubbleTextView;

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->i(Lcom/android/launcher3/BubbleTextView;)V

    return-void

    :pswitch_36  #0x3
    iget-object p0, p0, Lcom/android/launcher3/t1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/ExtendedEditText;

    invoke-static {p0}, Lcom/android/launcher3/ExtendedEditText;->a(Lcom/android/launcher3/ExtendedEditText;)V

    return-void

    :pswitch_3e  #0x2
    iget-object p0, p0, Lcom/android/launcher3/t1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->H(Lcom/android/launcher3/BaseQuickstepLauncher;)V

    return-void

    :pswitch_46  #0x1
    iget-object p0, p0, Lcom/android/launcher3/t1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/AppWidgetResizeFrame;

    invoke-static {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->a(Lcom/android/launcher3/AppWidgetResizeFrame;)V

    return-void

    :pswitch_4e  #0x0
    iget-object p0, p0, Lcom/android/launcher3/t1;->b:Ljava/lang/Object;

    check-cast p0, Landroid/animation/Animator;

    invoke-static {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$10;->e(Landroid/animation/Animator;)V

    return-void

    :goto_56
    iget-object p0, p0, Lcom/android/launcher3/t1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/util/RectFSpringAnim;

    invoke-virtual {p0}, Lcom/android/quickstep/util/RectFSpringAnim;->onTargetPositionChanged()V

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
