.class public final synthetic Lcom/android/launcher3/dragndrop/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/appwidget/AppWidgetManager;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher3/dragndrop/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/allapps/AllAppsStore;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/dragndrop/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/AddItemActivity;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/dragndrop/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarPopupController;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/dragndrop/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/dragndrop/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)V
    .registers 3

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher3/dragndrop/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/dragndrop/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/dragndrop/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/f;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lcom/android/launcher3/dragndrop/f;->a:I

    packed-switch v0, :pswitch_data_60

    goto :goto_55

    :pswitch_6  #0x6
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/f;->b:Ljava/lang/Object;

    check-cast p0, Landroid/appwidget/AppWidgetManager;

    check-cast p1, Landroid/os/UserHandle;

    invoke-static {p0, p1}, Lcom/android/launcher3/widget/WidgetManagerHelper;->a(Landroid/appwidget/AppWidgetManager;Landroid/os/UserHandle;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    :pswitch_11  #0x5
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-static {p0, p1}, Lcom/android/launcher3/testing/TestInformationHandler;->k(Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;Lcom/android/launcher3/Launcher;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0

    :pswitch_1c  #0x4
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarPopupController;

    check-cast p1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarPopupController;->d(Lcom/android/launcher3/taskbar/TaskbarPopupController;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;)Lcom/android/launcher3/popup/SystemShortcut$Factory;

    move-result-object p0

    return-object p0

    :pswitch_27  #0x3
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/f;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    check-cast p1, Lcom/android/launcher3/util/ComponentKey;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_36  #0x2
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/allapps/AllAppsStore;

    check-cast p1, Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AllAppsStore;->getApp(Lcom/android/launcher3/util/ComponentKey;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object p0

    return-object p0

    :pswitch_41  #0x1
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/f;->b:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->r(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :pswitch_4a  #0x0
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/dragndrop/AddItemActivity;

    check-cast p1, Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-static {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->i(Lcom/android/launcher3/dragndrop/AddItemActivity;Landroid/content/pm/LauncherApps$PinItemRequest;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p0

    return-object p0

    :goto_55
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    check-cast p1, Landroid/graphics/Rect;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->g(Lcom/android/wm/shell/pip/phone/PipTouchHandler;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_4a  #00000000
        :pswitch_41  #00000001
        :pswitch_36  #00000002
        :pswitch_27  #00000003
        :pswitch_1c  #00000004
        :pswitch_11  #00000005
        :pswitch_6  #00000006
    .end packed-switch
.end method
