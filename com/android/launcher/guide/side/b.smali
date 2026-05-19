.class public final synthetic Lcom/android/launcher/guide/side/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/guide/side/LearningGesturesActivity;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/guide/side/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/side/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/guide/side/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/side/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/guide/side/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/side/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/settings/BasePreferenceFragment;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/guide/side/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/side/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/guide/side/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/side/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/widget/RemoveWidgetDialog;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher/guide/side/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/side/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/folder/OplusFolder;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher/guide/side/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/side/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/folder/big/BigFolderTouchController;)V
    .registers 3

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher/guide/side/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/side/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;)V
    .registers 3

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/launcher/guide/side/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/side/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .registers 3

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/launcher/guide/side/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/side/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/TaskView;)V
    .registers 3

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/launcher/guide/side/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/side/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipMenuView;)V
    .registers 3

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/launcher/guide/side/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/side/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher/guide/side/b;->a:I

    packed-switch v0, :pswitch_data_66

    goto :goto_5e

    :pswitch_6  #0xa
    iget-object p0, p0, Lcom/android/launcher/guide/side/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/TaskView;

    invoke-static {p0, p1}, Lcom/android/quickstep/views/TaskView;->d(Lcom/android/quickstep/views/TaskView;Landroid/view/View;)V

    return-void

    :pswitch_e  #0x9
    iget-object p0, p0, Lcom/android/launcher/guide/side/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onTaskbarIconClicked(Landroid/view/View;)V

    return-void

    :pswitch_16  #0x8
    iget-object p0, p0, Lcom/android/launcher/guide/side/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->A(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;Landroid/view/View;)V

    return-void

    :pswitch_1e  #0x7
    iget-object p0, p0, Lcom/android/launcher/guide/side/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->b(Lcom/android/launcher3/folder/big/BigFolderTouchController;Landroid/view/View;)V

    return-void

    :pswitch_26  #0x6
    iget-object p0, p0, Lcom/android/launcher/guide/side/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/OplusFolder;

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/OplusFolder;->o(Lcom/android/launcher3/folder/OplusFolder;Landroid/view/View;)V

    return-void

    :pswitch_2e  #0x5
    iget-object p0, p0, Lcom/android/launcher/guide/side/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/widget/RemoveWidgetDialog;

    invoke-static {p0, p1}, Lcom/android/launcher/widget/RemoveWidgetDialog;->a(Lcom/android/launcher/widget/RemoveWidgetDialog;Landroid/view/View;)V

    return-void

    :pswitch_36  #0x4
    iget-object p0, p0, Lcom/android/launcher/guide/side/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;

    invoke-static {p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->a(Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;Landroid/view/View;)V

    return-void

    :pswitch_3e  #0x3
    iget-object p0, p0, Lcom/android/launcher/guide/side/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/settings/BasePreferenceFragment;

    invoke-static {p0, p1}, Lcom/android/launcher/settings/BasePreferenceFragment;->a(Lcom/android/launcher/settings/BasePreferenceFragment;Landroid/view/View;)V

    return-void

    :pswitch_46  #0x2
    iget-object p0, p0, Lcom/android/launcher/guide/side/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;

    invoke-static {p0, p1}, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->a(Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;Landroid/view/View;)V

    return-void

    :pswitch_4e  #0x1
    iget-object p0, p0, Lcom/android/launcher/guide/side/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;

    invoke-static {p0, p1}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->l(Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;Landroid/view/View;)V

    return-void

    :pswitch_56  #0x0
    iget-object p0, p0, Lcom/android/launcher/guide/side/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/guide/side/LearningGesturesActivity;

    invoke-static {p0, p1}, Lcom/android/launcher/guide/side/LearningGesturesActivity;->f(Lcom/android/launcher/guide/side/LearningGesturesActivity;Landroid/view/View;)V

    return-void

    :goto_5e
    iget-object p0, p0, Lcom/android/launcher/guide/side/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->a(Lcom/android/wm/shell/pip/phone/PipMenuView;Landroid/view/View;)V

    return-void

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_56  #00000000
        :pswitch_4e  #00000001
        :pswitch_46  #00000002
        :pswitch_3e  #00000003
        :pswitch_36  #00000004
        :pswitch_2e  #00000005
        :pswitch_26  #00000006
        :pswitch_1e  #00000007
        :pswitch_16  #00000008
        :pswitch_e  #00000009
        :pswitch_6  #0000000a
    .end packed-switch
.end method
