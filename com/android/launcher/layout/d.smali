.class public final synthetic Lcom/android/launcher/layout/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/layout/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherProvider;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/layout/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/layout/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher/layout/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/back/BackAnimationController;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher/layout/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .registers 3

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher/layout/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopModeController;)V
    .registers 3

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/launcher/layout/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .registers 3

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/launcher/layout/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;)V
    .registers 3

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/launcher/layout/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;)V
    .registers 3

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/launcher/layout/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/layout/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/layout/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/d;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/android/launcher/layout/d;->a:I

    packed-switch v0, :pswitch_data_72

    goto :goto_69

    :pswitch_6  #0xa
    iget-object p0, p0, Lcom/android/launcher/layout/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;

    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->f(Lcom/android/wm/shell/startingsurface/StartingWindowController;)Lcom/android/wm/shell/common/ExternalInterfaceBinder;

    move-result-object p0

    return-object p0

    :pswitch_f  #0x9
    iget-object p0, p0, Lcom/android/launcher/layout/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    invoke-static {p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->a(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)Lcom/android/wm/shell/common/ExternalInterfaceBinder;

    move-result-object p0

    return-object p0

    :pswitch_18  #0x8
    iget-object p0, p0, Lcom/android/launcher/layout/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;

    invoke-static {p0}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->c(Lcom/android/wm/shell/desktopmode/DesktopModeController;)Lcom/android/wm/shell/common/ExternalInterfaceBinder;

    move-result-object p0

    return-object p0

    :pswitch_21  #0x7
    iget-object p0, p0, Lcom/android/launcher/layout/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->n(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ExternalInterfaceBinder;

    move-result-object p0

    return-object p0

    :pswitch_2a  #0x6
    iget-object p0, p0, Lcom/android/launcher/layout/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {p0}, Lcom/android/wm/shell/back/BackAnimationController;->c(Lcom/android/wm/shell/back/BackAnimationController;)Lcom/android/wm/shell/common/ExternalInterfaceBinder;

    move-result-object p0

    return-object p0

    :pswitch_33  #0x5
    iget-object p0, p0, Lcom/android/launcher/layout/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-static {p0}, Lcom/android/launcher3/icons/IconCache;->m(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher/model/data/PromiseAppInfo;

    move-result-object p0

    return-object p0

    :pswitch_3c  #0x4
    iget-object p0, p0, Lcom/android/launcher/layout/d;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/android/launcher3/icons/IconCache;->e(Ljava/util/List;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p0

    return-object p0

    :pswitch_45  #0x3
    iget-object p0, p0, Lcom/android/launcher/layout/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p0}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->d(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_4e  #0x2
    iget-object p0, p0, Lcom/android/launcher/layout/d;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/folder/FolderNameProvider;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_57  #0x1
    iget-object p0, p0, Lcom/android/launcher/layout/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/LauncherProvider;

    invoke-static {p0}, Lcom/android/launcher3/LauncherProvider;->d(Lcom/android/launcher3/LauncherProvider;)Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    move-result-object p0

    return-object p0

    :pswitch_60  #0x0
    iget-object p0, p0, Lcom/android/launcher/layout/d;->b:Ljava/lang/Object;

    check-cast p0, Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->h(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    return-object p0

    :goto_69
    iget-object p0, p0, Lcom/android/launcher/layout/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;

    invoke-static {p0}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->f(Lcom/android/wm/shell/transition/DefaultTransitionHandler;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_60  #00000000
        :pswitch_57  #00000001
        :pswitch_4e  #00000002
        :pswitch_45  #00000003
        :pswitch_3c  #00000004
        :pswitch_33  #00000005
        :pswitch_2a  #00000006
        :pswitch_21  #00000007
        :pswitch_18  #00000008
        :pswitch_f  #00000009
        :pswitch_6  #0000000a
    .end packed-switch
.end method
