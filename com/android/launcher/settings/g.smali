.class public final synthetic Lcom/android/launcher/settings/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;
.implements Lcom/android/launcher3/card/cache/CardCache$OnCacheLoadedCallback;
.implements Lcom/android/launcher3/anim/IconPressAnimManager$PressAnimUpdateListener;
.implements Lcom/android/launcher3/icons/BitmapRenderer;
.implements Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;
.implements Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;
.implements Lcom/oplus/statistics/util/Supplier;
.implements Lcom/oplus/zoom/ui/tips/TipsManager$TipsHideListener;
.implements Lcom/oplus/zoom/zoommenu/ZoomDecorAnimationHelper$AnimationUpdater;
.implements Lcom/oplus/smartsdk/SmartAPICallback;
.implements Lorg/hapjs/card/api/CardCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/PackageInfo;)V
    .registers 3

    const/16 v0, 0xc

    iput v0, p0, Lcom/android/launcher/settings/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/settings/LauncherSettingsFragment;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/settings/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/OplusLauncherModel;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher/settings/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/card/CardModelWrapper;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/settings/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/folder/OplusFolderIcon;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/settings/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/icons/ShadowGenerator$Builder;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/settings/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/OplusUserUnlockedTask;)V
    .registers 3

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/launcher/settings/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 3

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher/settings/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/settings/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/dock/DockView;)V
    .registers 3

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/launcher/settings/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/smartsdk/SmartAPICallback;)V
    .registers 3

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/launcher/settings/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/zoom/ui/tips/TipsController;)V
    .registers 3

    const/16 v0, 0xd

    iput v0, p0, Lcom/android/launcher/settings/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/zoom/zoommenu/ZoomDecorView;)V
    .registers 3

    const/16 v0, 0xe

    iput v0, p0, Lcom/android/launcher/settings/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/launcher/settings/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Collection;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher/settings/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/HashSet;)V
    .registers 3

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/launcher/settings/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lpantanal/app/instant/engine/InstantCardEngine;)V
    .registers 3

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/launcher/settings/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;II)V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/dock/DockView;

    check-cast p1, Lcom/oplus/quickstep/dock/DockView;

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/quickstep/dock/DockView;->u(Lcom/oplus/quickstep/dock/DockView;Lcom/oplus/quickstep/dock/DockView;II)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->drawShadow(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/OplusWorkspace;->L(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher/settings/g;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_1e

    :pswitch_6  #0x8
    iget-object p0, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashSet;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->m(Ljava/util/HashSet;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_e  #0x7
    iget-object p0, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->g(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_16  #0x6
    iget-object p0, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/ModelWriter;->j(Ljava/util/Collection;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :goto_1e
    iget-object p0, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/OplusUserUnlockedTask;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusUserUnlockedTask;->m(Lcom/android/launcher3/model/OplusUserUnlockedTask;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_data_26
    .packed-switch 0x6
        :pswitch_16  #00000006
        :pswitch_e  #00000007
        :pswitch_6  #00000008
    .end packed-switch
.end method

.method public get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/android/launcher/settings/g;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_f

    :pswitch_6  #0xb
    iget-object p0, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/oplus/statistics/agent/PageVisitAgent;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_f
    iget-object p0, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/pm/PackageInfo;

    invoke-static {p0}, Lcom/oplus/statistics/util/ApkInfoUtil;->a(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_18
    .packed-switch 0xb
        :pswitch_6  #0000000b
    .end packed-switch
.end method

.method public onAnimationUpdate()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/zoom/zoommenu/ZoomDecorView;

    invoke-static {p0}, Lcom/oplus/zoom/zoommenu/ZoomDecorView;->b(Lcom/oplus/zoom/zoommenu/ZoomDecorView;)V

    return-void
.end method

.method public onCacheLoaded(Lcom/android/launcher3/card/cache/CachedEntry;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/card/CardModelWrapper;

    invoke-static {p0, p1}, Lcom/android/launcher3/card/CardModelWrapper;->b(Lcom/android/launcher3/card/CardModelWrapper;Lcom/android/launcher3/card/cache/CachedEntry;)V

    return-void
.end method

.method public onCall(Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/smartsdk/SmartAPICallback;

    invoke-static {p0, p1}, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->a(Lcom/oplus/smartsdk/SmartAPICallback;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method public onMessage(ILjava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    check-cast p0, Lpantanal/app/instant/engine/InstantCardEngine;

    invoke-static {p0, p1, p2}, Lpantanal/app/instant/engine/InstantCardEngine;->a(Lpantanal/app/instant/engine/InstantCardEngine;ILjava/lang/String;)V

    return-void
.end method

.method public onPackageIconsUpdated(Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/OplusLauncherModel;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/LauncherModel;->onPackageIconsUpdated(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/settings/LauncherSettingsFragment;

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->e(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onTipsHide(Lcom/oplus/zoom/common/ZoomPositionInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/zoom/ui/tips/TipsController;

    invoke-static {p0, p1}, Lcom/oplus/zoom/ui/tips/TipsController;->d(Lcom/oplus/zoom/ui/tips/TipsController;Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    return-void
.end method

.method public onUpdate(FLandroid/graphics/PorterDuffColorFilter;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/settings/g;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/folder/OplusFolderIcon;->g(Lcom/android/launcher3/folder/OplusFolderIcon;FLandroid/graphics/PorterDuffColorFilter;)V

    return-void
.end method
