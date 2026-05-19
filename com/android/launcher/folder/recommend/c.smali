.class public final synthetic Lcom/android/launcher/folder/recommend/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$OnItemClickListener;
.implements Lcom/coui/appcompat/indicator/COUIPageIndicator$OnIndicatorDotClickListener;
.implements Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$StatusBarClickListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/coui/appcompat/tooltips/COUIToolTips$OnCloseIconClickListener;
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;
.implements Lcom/android/launcher3/icons/BitmapRenderer;
.implements Lcom/android/quickstep/views/RecentsView$OnEmptyMessageUpdatedListener;
.implements Lcom/android/quickstep/AbsSwipeUpHandler$Factory;
.implements Lcom/android/systemui/shared/system/InputConsumerController$InputListener;
.implements Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;
.implements Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;
.implements Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnFetchDataResultListener;
.implements Lcom/oplus/statistics/util/Supplier;
.implements Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$k;
.implements Lcom/oplus/zoom/ui/tips/TipsManager$TipsHideListener;
.implements Lcom/oplus/zoom/zoommenu/ZoomDecorAnimationHelper$AnimationUpdater;
.implements Lcom/oplus/smartsdk/SmartAPICallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/16 v0, 0x11

    iput v0, p0, Lcom/android/launcher/folder/recommend/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher/folder/recommend/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/folder/recommend/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/folder/recommend/FooterController;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/folder/recommend/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/guide/GuidePageManager;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/folder/recommend/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/guide/GuidePanelActivity;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/folder/recommend/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/settings/LauncherSettingsFragment;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/folder/recommend/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher/folder/recommend/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/folder/Folder;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher/folder/recommend/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;)V
    .registers 3

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/launcher/folder/recommend/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/OplusBaseTouchInteractionService;)V
    .registers 3

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/launcher/folder/recommend/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/util/InputConsumerProxy;)V
    .registers 3

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/launcher/folder/recommend/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/TaskView;)V
    .registers 3

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/launcher/folder/recommend/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .registers 3

    const/16 v0, 0xc

    iput v0, p0, Lcom/android/launcher/folder/recommend/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/coui/appcompat/tooltips/COUIToolTips;)V
    .registers 3

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/launcher/folder/recommend/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/dock/DockIconView;)V
    .registers 3

    const/16 v0, 0xd

    iput v0, p0, Lcom/android/launcher/folder/recommend/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;)V
    .registers 3

    const/16 v0, 0xe

    iput v0, p0, Lcom/android/launcher/folder/recommend/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)V
    .registers 3

    const/16 v0, 0x12

    iput v0, p0, Lcom/android/launcher/folder/recommend/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/zoom/ui/tips/TipsController;)V
    .registers 3

    const/16 v0, 0x13

    iput v0, p0, Lcom/android/launcher/folder/recommend/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/zoom/zoommenu/ZoomDecorView;)V
    .registers 3

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/launcher/folder/recommend/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/HashSet;)V
    .registers 3

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/launcher/folder/recommend/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lpantanal/app/app_card/engine/SmartEngine;)V
    .registers 3

    const/16 v0, 0x15

    iput v0, p0, Lcom/android/launcher/folder/recommend/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-static {p0}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->d(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)V

    return-void
.end method

.method public b()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0}, Lcom/android/launcher/settings/BaseSettingsFragment;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public d()V
    .registers 2

    iget v0, p0, Lcom/android/launcher/folder/recommend/c;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x5
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->b(Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;)V

    return-void

    :goto_e
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->a(Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x5
        :pswitch_6  #00000005
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 4

    iget v0, p0, Lcom/android/launcher/folder/recommend/c;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_f

    :pswitch_6  #0x6
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/Folder;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/folder/Folder;->g(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0

    :goto_f
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashSet;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/util/LauncherBindableItemsContainer;->b(Ljava/util/HashSet;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_data_18
    .packed-switch 0x6
        :pswitch_6  #00000006
    .end packed-switch
.end method

.method public get()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/oplus/statistics/record/ServiceRecorder;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public newHandler(Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;
    .registers 4

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->a(Lcom/android/quickstep/OplusBaseTouchInteractionService;Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;

    move-result-object p0

    return-object p0
.end method

.method public onAnimationUpdate()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/zoom/zoommenu/ZoomDecorView;

    invoke-static {p0}, Lcom/oplus/zoom/zoommenu/ZoomDecorView;->c(Lcom/oplus/zoom/zoommenu/ZoomDecorView;)V

    return-void
.end method

.method public onBubbleMetadataFlagChanged(Lcom/android/wm/shell/bubbles/Bubble;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->onBubbleMetadataFlagChanged(Lcom/android/wm/shell/bubbles/Bubble;)V

    return-void
.end method

.method public onCall(Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    check-cast p0, Lpantanal/app/app_card/engine/SmartEngine;

    invoke-static {p0, p1}, Lpantanal/app/app_card/engine/SmartEngine;->f(Lpantanal/app/app_card/engine/SmartEngine;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method public onClick(I)V
    .registers 3

    iget v0, p0, Lcom/android/launcher/folder/recommend/c;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/guide/GuidePageManager;

    invoke-static {p0, p1}, Lcom/android/launcher/guide/GuidePageManager;->c(Lcom/android/launcher/guide/GuidePageManager;I)V

    return-void

    :goto_e
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/guide/GuidePanelActivity;

    invoke-static {p0, p1}, Lcom/android/launcher/guide/GuidePanelActivity;->h(Lcom/android/launcher/guide/GuidePanelActivity;I)V

    return-void

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_6  #00000001
    .end packed-switch
.end method

.method public onEmptyMessageUpdated(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;

    invoke-static {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->e(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;Z)V

    return-void
.end method

.method public onFetchDataResult(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->b(Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/util/InputConsumerProxy;

    invoke-static {p0, p1}, Lcom/android/quickstep/util/InputConsumerProxy;->a(Lcom/android/quickstep/util/InputConsumerProxy;Landroid/view/InputEvent;)Z

    move-result p0

    return p0
.end method

.method public onItemClick(Landroid/view/View;ILjava/lang/Object;)V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/folder/recommend/FooterController;

    check-cast p3, Lcom/android/launcher/folder/recommend/bean/DataBean;

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/folder/recommend/FooterController;->a(Lcom/android/launcher/folder/recommend/FooterController;Landroid/view/View;ILcom/android/launcher/folder/recommend/bean/DataBean;)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/settings/LauncherSettingsFragment;

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->o(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onTipsHide(Lcom/oplus/zoom/common/ZoomPositionInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/zoom/ui/tips/TipsController;

    invoke-static {p0, p1}, Lcom/oplus/zoom/ui/tips/TipsController;->a(Lcom/oplus/zoom/ui/tips/TipsController;Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    return-void
.end method

.method public shouldIncludeView(Landroid/view/View;)Z
    .registers 3

    iget v0, p0, Lcom/android/launcher/folder/recommend/c;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_f

    :pswitch_6  #0xd
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/dock/DockIconView;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dock/DockView;->s(Lcom/oplus/quickstep/dock/DockIconView;Landroid/view/View;)Z

    move-result p0

    return p0

    :goto_f
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/TaskView;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->c(Lcom/android/quickstep/views/TaskView;Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_data_18
    .packed-switch 0xd
        :pswitch_6  #0000000d
    .end packed-switch
.end method
