.class public final synthetic Lcom/android/launcher/layout/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/ShortcutInfo;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/layout/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/layout/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/testing/TestInformationHandler;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/layout/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher/layout/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/Transitions;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher/layout/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/layout/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/layout/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/f;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/android/launcher/layout/f;->a:I

    packed-switch v0, :pswitch_data_46

    goto :goto_3c

    :pswitch_6  #0x5
    iget-object p0, p0, Lcom/android/launcher/layout/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitLayout()Lcom/android/wm/shell/common/split/SplitLayout;

    move-result-object p0

    return-object p0

    :pswitch_f  #0x4
    iget-object p0, p0, Lcom/android/launcher/layout/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/testing/TestInformationHandler;

    invoke-virtual {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :pswitch_18  #0x3
    iget-object p0, p0, Lcom/android/launcher/layout/f;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/pm/ShortcutInfo;

    invoke-static {p0}, Lcom/android/launcher3/icons/IconCache;->b(Landroid/content/pm/ShortcutInfo;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0

    :pswitch_21  #0x2
    iget-object p0, p0, Lcom/android/launcher/layout/f;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p0}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->a(Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2a  #0x1
    iget-object p0, p0, Lcom/android/launcher/layout/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDefaultOverlay()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object p0

    return-object p0

    :pswitch_33  #0x0
    iget-object p0, p0, Lcom/android/launcher/layout/f;->b:Ljava/lang/Object;

    check-cast p0, Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->e(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    return-object p0

    :goto_3c
    iget-object p0, p0, Lcom/android/launcher/layout/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/transition/Transitions;

    invoke-static {p0}, Lcom/android/wm/shell/transition/Transitions;->h(Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/common/ExternalInterfaceBinder;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_33  #00000000
        :pswitch_2a  #00000001
        :pswitch_21  #00000002
        :pswitch_18  #00000003
        :pswitch_f  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method
