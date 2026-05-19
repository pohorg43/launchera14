.class public final synthetic Lcom/android/launcher/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;
.implements Lcom/coui/appcompat/preference/COUIRecommendedPreference$OnRecommendedClickListener;
.implements Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;
.implements Lcom/android/launcher3/widget/picker/WidgetsListHeader$OnExpansionChangeListener;
.implements Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$OnSelectedListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/oplus/statistics/util/Supplier;
.implements Lcom/oplus/smartsdk/SmartAPICallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/android/launcher3/OplusCellLayout;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/w;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/w;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;Landroid/content/Intent;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/w;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/OplusInvariantDeviceProfile;Lcom/android/launcher3/InvariantDeviceProfile;)V
    .registers 4

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/w;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/Workspace;Ljava/util/function/Predicate;)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/w;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/card/theme/data/SrcDescription;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 4

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/w;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/folder/Folder;)V
    .registers 4

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/w;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderViewHolderBinder;Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;)V
    .registers 4

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/w;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/compatui/OplusFullscreenSwitchController;Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/launcher/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/w;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/settingsdynamic/SettingsDynamicController;Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/launcher/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/w;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/statistics/data/TrackEvent;Landroid/content/Context;)V
    .registers 4

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/launcher/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/w;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lpantanal/app/app_card/engine/SmartEngine;Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/launcher/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/w;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lpantanal/content/gadget/GadgetDao;Lkotlin/jvm/functions/Function1;)V
    .registers 4

    const/16 v0, 0xc

    iput v0, p0, Lcom/android/launcher/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/w;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/compatui/OplusFullscreenSwitchController;

    iget-object p0, p0, Lcom/android/launcher/w;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->a(Lcom/oplus/compatui/OplusFullscreenSwitchController;Ljava/lang/String;IZ)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;

    iget-object p0, p0, Lcom/android/launcher/w;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    invoke-static {v0, p0, p1}, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->e(Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 4

    iget v0, p0, Lcom/android/launcher/w;->a:I

    packed-switch v0, :pswitch_data_3a

    :pswitch_5  #0x2
    goto :goto_2d

    :pswitch_6  #0x4
    iget-object v0, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/card/theme/data/SrcDescription;

    iget-object p0, p0, Lcom/android/launcher/w;->c:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;->a(Lcom/android/launcher3/card/theme/data/SrcDescription;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_13  #0x3
    iget-object v0, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/Workspace;

    iget-object p0, p0, Lcom/android/launcher/w;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Predicate;

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher3/Workspace;->y(Lcom/android/launcher3/Workspace;Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_20  #0x1
    iget-object v0, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/Launcher;

    iget-object p0, p0, Lcom/android/launcher/w;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher/Launcher;->E0(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0

    :goto_2d
    iget-object v0, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object p0, p0, Lcom/android/launcher/w;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher3/folder/OplusFolderUtil;->b(Lcom/android/launcher3/OplusInvariantDeviceProfile;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_20  #00000001
        :pswitch_5  #00000002
        :pswitch_13  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method

.method public execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object p0, p0, Lcom/android/launcher/w;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/OplusCellLayout;

    invoke-static {v0, p0, p1}, Lcom/android/launcher/Launcher;->l0(Landroid/view/View;Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/statistics/data/TrackEvent;

    iget-object p0, p0, Lcom/android/launcher/w;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/oplus/statistics/agent/AtomAgent;->a(Lcom/oplus/statistics/data/TrackEvent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCall(Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    check-cast v0, Lpantanal/app/app_card/engine/SmartEngine;

    iget-object p0, p0, Lcom/android/launcher/w;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lpantanal/app/app_card/engine/SmartEngine;->d(Lpantanal/app/app_card/engine/SmartEngine;Ljava/lang/String;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method public onExpansionChange(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderViewHolderBinder;

    iget-object p0, p0, Lcom/android/launcher/w;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderViewHolderBinder;->a(Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderViewHolderBinder;Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;Z)V

    return-void
.end method

.method public onFolderStateChanged(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object p0, p0, Lcom/android/launcher/w;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/Folder;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->k(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/folder/Folder;I)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/w;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/settingsdynamic/SettingsDynamicController;

    iget-object p0, p0, Lcom/android/launcher/w;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->e(Lcom/oplus/settingsdynamic/SettingsDynamicController;Ljava/lang/String;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
