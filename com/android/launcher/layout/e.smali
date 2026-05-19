.class public final synthetic Lcom/android/launcher/layout/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/LauncherActivityInfo;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/layout/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/BaseDraggingActivity;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/layout/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/layout/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/testing/TestInformationHandler;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher/layout/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/layout/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher/layout/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/layout/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/e;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/android/launcher/layout/e;->a:I

    packed-switch v0, :pswitch_data_4a

    goto :goto_40

    :pswitch_6  #0x5
    iget-object p0, p0, Lcom/android/launcher/layout/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/testing/TestInformationHandler;

    invoke-virtual {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :pswitch_f  #0x4
    iget-object p0, p0, Lcom/android/launcher/layout/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->c(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_1c  #0x3
    iget-object p0, p0, Lcom/android/launcher/layout/e;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/pm/LauncherActivityInfo;

    invoke-static {p0}, Lcom/android/launcher3/icons/IconCacheExtImplV2;->a(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p0

    return-object p0

    :pswitch_25  #0x2
    iget-object p0, p0, Lcom/android/launcher/layout/e;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->h(Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2e  #0x1
    iget-object p0, p0, Lcom/android/launcher/layout/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-static {p0}, Lcom/android/launcher3/BaseDraggingActivity;->f(Lcom/android/launcher3/BaseDraggingActivity;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_37  #0x0
    iget-object p0, p0, Lcom/android/launcher/layout/e;->b:Ljava/lang/Object;

    check-cast p0, Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->f(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    return-object p0

    :goto_40
    iget-object p0, p0, Lcom/android/launcher/layout/e;->b:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->s0(Lkotlin/jvm/internal/Ref$BooleanRef;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_37  #00000000
        :pswitch_2e  #00000001
        :pswitch_25  #00000002
        :pswitch_1c  #00000003
        :pswitch_f  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method
