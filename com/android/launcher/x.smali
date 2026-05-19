.class public final synthetic Lcom/android/launcher/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;
.implements Lcom/android/launcher/guide/SlideSlipGuidePage$GestureGuideListener;
.implements Lcom/coui/appcompat/preference/COUIRecommendedPreference$OnRecommendedClickListener;
.implements Lcom/coui/appcompat/tooltips/COUIToolTips$OnCloseIconClickListener;
.implements Lcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;
.implements Lcom/android/launcher3/widget/picker/WidgetsListHeader$OnExpansionChangeListener;
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;
.implements Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$OnMainLayoutClickListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/oplus/statistics/util/Supplier;
.implements Lcom/oplus/smartsdk/SmartAPICallback;
.implements Lpantanal/app/groupcard/IContentManagerProxy;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/coui/appcompat/tooltips/COUIToolTips;)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/x;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/x;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const/16 v0, 0xd

    iput v0, p0, Lcom/android/launcher/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/x;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/x;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/guide/BaseNavGesturesHelper;Lcom/android/launcher/Launcher;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/x;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/x;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;Landroid/content/Intent;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/x;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/x;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/popup/OplusBaseSystemShortcut$IconDelete;Lcom/android/launcher/Launcher;)V
    .registers 4

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/x;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/x;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarPopupController;Ljava/util/function/Predicate;)V
    .registers 4

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/x;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/x;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;)V
    .registers 4

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/x;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/x;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/flags/FlagManager;Landroid/content/Intent;)V
    .registers 4

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/x;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/x;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/Bubble;)V
    .registers 4

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/launcher/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/x;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/x;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/settingsdynamic/SettingsDynamicController;Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;)V
    .registers 4

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/launcher/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/x;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/x;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/settingsdynamic/SettingsDynamicController;Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/launcher/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/x;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/x;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/launcher/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/x;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/x;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/List;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/x;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/x;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;Landroid/view/View;)V
    .registers 4

    const/16 v0, 0xc

    iput v0, p0, Lcom/android/launcher/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/x;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/x;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lpantanal/app/app_card/engine/SmartEngine;Landroid/view/View;)V
    .registers 4

    const/16 v0, 0xe

    iput v0, p0, Lcom/android/launcher/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/x;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/x;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lu8/b;Landroid/content/Context;)V
    .registers 4

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/launcher/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/x;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/x;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/x;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/settingsdynamic/SettingsDynamicController;

    iget-object p0, p0, Lcom/android/launcher/x;->c:Ljava/lang/Object;

    check-cast p0, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;

    invoke-static {v0, p0}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->m(Lcom/oplus/settingsdynamic/SettingsDynamicController;Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;)V

    return-void
.end method

.method public attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/x;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/flags/FlagManager;

    iget-object p0, p0, Lcom/android/launcher/x;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/flags/FlagManager;->a(Lcom/android/systemui/flags/FlagManager;Landroid/content/Intent;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public b(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/x;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;

    iget-object p0, p0, Lcom/android/launcher/x;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    invoke-static {v0, p0, p1}, Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;->d(Lcom/android/launcher/settings/LauncherTaskbarSettingFragment;Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/x;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher/x;->c:Ljava/lang/Object;

    check-cast p0, Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {v0, p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->e(Landroid/content/Context;Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    return-void
.end method

.method public evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 4

    iget v0, p0, Lcom/android/launcher/x;->a:I

    packed-switch v0, :pswitch_data_20

    goto :goto_13

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher/x;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/launcher/x;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher/Launcher;->h0(Ljava/util/ArrayList;Ljava/util/List;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0

    :goto_13
    iget-object v0, p0, Lcom/android/launcher/x;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/taskbar/TaskbarPopupController;

    iget-object p0, p0, Lcom/android/launcher/x;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Predicate;

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarPopupController;->h(Lcom/android/launcher3/taskbar/TaskbarPopupController;Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

.method public get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/x;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher/x;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oplus/statistics/OplusTrack;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContentManager()Lpantanal/content/ContentManager;
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/x;->b:Ljava/lang/Object;

    check-cast v0, Lu8/b;

    iget-object p0, p0, Lcom/android/launcher/x;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    const-string/jumbo v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lu8/b;->c(Landroid/content/Context;)Lpantanal/content/ContentManager;

    move-result-object p0

    return-object p0
.end method

.method public onAnimationEnd()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/x;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/popup/OplusBaseSystemShortcut$IconDelete;

    iget-object p0, p0, Lcom/android/launcher/x;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-static {v0, p0}, Lcom/android/launcher3/popup/OplusBaseSystemShortcut$IconDelete;->j(Lcom/android/launcher3/popup/OplusBaseSystemShortcut$IconDelete;Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public onBubbleViewsReady(Lcom/android/wm/shell/bubbles/Bubble;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/x;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p0, p0, Lcom/android/launcher/x;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->v(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/Bubble;)V

    return-void
.end method

.method public onCall(Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher/x;->a:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_1e

    :pswitch_6  #0xd
    iget-object v0, p0, Lcom/android/launcher/x;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object p0, p0, Lcom/android/launcher/x;->c:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-static {v0, p0, p1}, Lpantanal/app/app_card/engine/SmartEngine;->a(Landroid/view/View;Landroid/os/Bundle;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void

    :pswitch_12  #0xc
    iget-object v0, p0, Lcom/android/launcher/x;->b:Ljava/lang/Object;

    check-cast v0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;

    iget-object p0, p0, Lcom/android/launcher/x;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {v0, p0, p1}, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;->m(Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;Landroid/view/View;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void

    :goto_1e
    iget-object v0, p0, Lcom/android/launcher/x;->b:Ljava/lang/Object;

    check-cast v0, Lpantanal/app/app_card/engine/SmartEngine;

    iget-object p0, p0, Lcom/android/launcher/x;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {v0, p0, p1}, Lpantanal/app/app_card/engine/SmartEngine;->c(Lpantanal/app/app_card/engine/SmartEngine;Landroid/view/View;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void

    :pswitch_data_2a
    .packed-switch 0xc
        :pswitch_12  #0000000c
        :pswitch_6  #0000000d
    .end packed-switch
.end method

.method public onExpansionChange(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/x;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;

    iget-object p0, p0, Lcom/android/launcher/x;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;->a(Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;Z)V

    return-void
.end method

.method public onGestureGuideFinished()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/x;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/guide/BaseNavGesturesHelper;

    iget-object p0, p0, Lcom/android/launcher/x;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-static {v0, p0}, Lcom/android/launcher/guide/BaseNavGesturesHelper;->a(Lcom/android/launcher/guide/BaseNavGesturesHelper;Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/x;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/settingsdynamic/SettingsDynamicController;

    iget-object p0, p0, Lcom/android/launcher/x;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->l(Lcom/oplus/settingsdynamic/SettingsDynamicController;Ljava/lang/String;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
