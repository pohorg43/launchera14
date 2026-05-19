.class public final Lcom/android/launcher/togglebar/controller/ToggleBarEffectUIController;
.super Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/togglebar/controller/ToggleBarEffectUIController$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/togglebar/controller/ToggleBarEffectUIController$Companion;

.field private static final TAG:Ljava/lang/String; = "ToggleBarEffectUIController"


# instance fields
.field private isApply:Z

.field private mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;

.field private mContentView:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/togglebar/controller/ToggleBarEffectUIController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/togglebar/controller/ToggleBarEffectUIController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/togglebar/controller/ToggleBarEffectUIController;->Companion:Lcom/android/launcher/togglebar/controller/ToggleBarEffectUIController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 3

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;-><init>(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/togglebar/controller/ToggleBarEffectUIController;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarEffectUIController;->createView$lambda$0(Lcom/android/launcher/togglebar/controller/ToggleBarEffectUIController;Landroid/view/View;)V

    return-void
.end method

.method private static final createView$lambda$0(Lcom/android/launcher/togglebar/controller/ToggleBarEffectUIController;Landroid/view/View;)V
    .registers 5

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarEffectUIController;->isApply:Z

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarEffectUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;->getSelectedItem()Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher/effect/EffectSetting;->getWpEffectClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    iget-object v1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher/effect/EffectSetting;->saveEffectToPref(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher/effect/EffectSetting;->setWorkspaceEffectClassName(Ljava/lang/String;)V

    :cond_3a
    iget-object v1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher/togglebar/ToggleBarManager;->onBackPressed(Z)Z

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    sget-object p1, Lcom/android/statistics/LauncherStatistics$DetailspageBtnClickEnum;->APPLY:Lcom/android/statistics/LauncherStatistics$DetailspageBtnClickEnum;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher/togglebar/ToggleBarManager;->stateToggleBarEffectClickEvent(Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;I)V

    return-void
.end method


# virtual methods
.method public canScrollVerticallyDown(II)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public createView(I)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->createView(I)V

    const p1, 0x7f0a0522

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarEffectUIController;->mContentView:Landroid/view/View;

    new-instance p1, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    const-string v1, "mLauncher"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarEffectUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->setIAdditionAnim(Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$IAdditionalAnim;)V

    const p1, 0x7f0a04d3

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07106e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Lcom/android/launcher/togglebar/RvItemDecoration;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/launcher/togglebar/RvItemDecoration;-><init>(II)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarEffectUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const v0, 0x7f0a00bb

    invoke-virtual {p0, v0}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;->initLayoutAnimation(Landroid/view/View;Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/views/PressFeedbackButton;

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {v1}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceEditModeBright()Z

    move-result v1

    if-eqz v1, :cond_62

    const v1, 0x7f060836

    goto :goto_65

    :cond_62
    const v1, 0x7f060835

    :goto_65
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher/views/PressFeedbackButton;->setDrawableColor(I)V

    invoke-virtual {p1}, Landroid/widget/Button;->invalidate()V

    new-instance v0, Lcom/android/launcher/guide/g;

    invoke-direct {v0, p0}, Lcom/android/launcher/guide/g;-><init>(Lcom/android/launcher/togglebar/controller/ToggleBarEffectUIController;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public destroy(Z)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroy, animate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToggleBarEffectUIController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher/effect/EffectSetting;->setToggleBarPreviewEffectClzName(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarEffectUIController;->isApply:Z

    if-nez v0, :cond_39

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarEffectUIController;->isApply:Z

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarEffectUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;->getSelectedItem()Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;

    move-result-object v1

    sget-object v2, Lcom/android/statistics/LauncherStatistics$DetailspageBtnClickEnum;->EXIT:Lcom/android/statistics/LauncherStatistics$DetailspageBtnClickEnum;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->stateToggleBarEffectClickEvent(Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;I)V

    :cond_39
    if-eqz p1, :cond_3f

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->animForDestroyUI()V

    goto :goto_42

    :cond_3f
    invoke-super {p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->destroy(Z)V

    :goto_42
    invoke-virtual {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarEffectUIController;->updateIndicatorBg()V

    return-void
.end method

.method public getAdapter()Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarEffectUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;

    return-object p0
.end method

.method public getContentLayoutId()I
    .registers 1

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p0

    if-eqz p0, :cond_a

    const p0, 0x7f0d027a

    goto :goto_d

    :cond_a
    const p0, 0x7f0d0279

    :goto_d
    return p0
.end method

.method public getContentView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarEffectUIController;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public getContentViewHeight()I
    .registers 2

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f071074

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_21

    :cond_14
    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f071073

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_21
    return p0
.end method

.method public resume(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->resume(Z)V

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarEffectUIController;->updateIndicatorBg()V

    return-void
.end method

.method public final updateIndicatorBg()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_15
    return-void
.end method
