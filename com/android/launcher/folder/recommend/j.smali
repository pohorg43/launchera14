.class public final synthetic Lcom/android/launcher/folder/recommend/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/folder/recommend/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/j;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/j;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher/folder/recommend/j;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;Landroid/content/Intent;Landroid/widget/PopupWindow;)V
    .registers 5

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/folder/recommend/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/j;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/j;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher/folder/recommend/j;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/coui/appcompat/couiswitch/COUISwitch;Landroid/view/View;Lcom/android/launcher/folder/recommend/SwitchManageHelper;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/folder/recommend/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/j;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/j;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher/folder/recommend/j;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/folder/recommend/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/j;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/j;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher/folder/recommend/j;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Lio/branch/search/ui/BranchEntity;)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/folder/recommend/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/j;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/j;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher/folder/recommend/j;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget v0, p0, Lcom/android/launcher/folder/recommend/j;->a:I

    packed-switch v0, :pswitch_data_56

    goto :goto_46

    :pswitch_6  #0x3
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/j;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/j;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/j;->d:Ljava/lang/Object;

    check-cast p0, Landroid/widget/PopupWindow;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;->d(Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;Landroid/content/Intent;Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void

    :pswitch_16  #0x2
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/j;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/j;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/j;->d:Ljava/lang/Object;

    check-cast p0, Lio/branch/search/ui/BranchEntity;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->b(Ljava/lang/String;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Lio/branch/search/ui/BranchEntity;Landroid/view/View;)V

    return-void

    :pswitch_26  #0x1
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/j;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/j;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/j;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;->b(Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;Landroid/view/View;)V

    return-void

    :pswitch_36  #0x0
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/j;->b:Ljava/lang/Object;

    check-cast v0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/j;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/j;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->b(Lcom/coui/appcompat/couiswitch/COUISwitch;Landroid/view/View;Lcom/android/launcher/folder/recommend/SwitchManageHelper;Landroid/view/View;)V

    return-void

    :goto_46
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/j;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/j;->c:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/j;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->b(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View;)V

    return-void

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_36  #00000000
        :pswitch_26  #00000001
        :pswitch_16  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
