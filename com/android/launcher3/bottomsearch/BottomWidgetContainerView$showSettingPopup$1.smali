.class final Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;->showSettingPopup(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "Lcom/android/launcher/bottomsearch/DynamicMenuBean;",
        ">;",
        "Lh4/z;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBottomWidgetContainerView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BottomWidgetContainerView.kt\ncom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,225:1\n1864#2,3:226\n*S KotlinDebug\n*F\n+ 1 BottomWidgetContainerView.kt\ncom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1\n*L\n82#1:226,3\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $v:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1;->this$0:Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;

    iput-object p2, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1;->$v:Landroid/view/View;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/bottomsearch/PopupStateListener;Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/launcher3/OplusDragLayer;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1;->invoke$lambda$4(Lcom/android/launcher3/bottomsearch/PopupStateListener;Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/launcher3/OplusDragLayer;)V

    return-void
.end method

.method private static final invoke$lambda$4(Lcom/android/launcher3/bottomsearch/PopupStateListener;Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/launcher3/OplusDragLayer;)V
    .registers 5

    const-string v0, "$popupStateListener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$blurView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->INSTANCE:Lcom/android/launcher3/bottomsearch/BottomSearchImpl;

    invoke-virtual {v0}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->getMutableList$OplusLauncher_RealmePallExportAallRelease()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;->access$setSettingPopup$p(Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;Landroid/widget/PopupWindow;)V

    iget-object p0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/popup/PopupBlurView;

    if-eqz p0, :cond_35

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/PopupBlurView;->createBlurAnim(Z)Landroid/animation/ObjectAnimator;

    move-result-object p0

    if-eqz p0, :cond_35

    new-instance p1, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1$3$1$1;

    invoke-direct {p1, p2, p3}, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1$3$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/launcher3/OplusDragLayer;)V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_35
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1;->invoke(Ljava/util/List;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke(Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher/bottomsearch/DynamicMenuBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1;->this$0:Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;

    invoke-static {v0}, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;->access$getMContext$p$s1008912023(Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1;->this$0:Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;

    invoke-static {v0}, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;->access$getMContext$p$s1008912023(Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.Launcher"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_24

    return-void

    :cond_24
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4d

    new-instance v0, Lcom/android/launcher/bottomsearch/DynamicMenuBean;

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1;->this$0:Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120144

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "context.resources.getStr…ng.bottom_search_setting)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher/bottomsearch/DynamicMenuBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const-string/jumbo v1, "showSettingPopup count = "

    const-string v2, "BOTTOM.WIDGET - WIDGET_VIEW"

    invoke-static {v1, v0, v2}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1;->this$0:Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070e06

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1;->this$0:Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070712

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1;->this$0:Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;

    invoke-static {v4}, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;->access$getSettingPopup$p(Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;)Landroid/widget/PopupWindow;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v4, :cond_121

    iget-object v4, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1;->this$0:Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;

    invoke-static {v4}, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;->access$getMContext$p$s1008912023(Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v7, 0x7f0d0054

    iget-object v8, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1;->this$0:Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;

    invoke-virtual {v4, v7, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const-string/jumbo v7, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1;->this$0:Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v8, v6

    :goto_9f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_116

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v8, 0x1

    if-ltz v8, :cond_112

    check-cast v9, Lcom/android/launcher/bottomsearch/DynamicMenuBean;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "showSettingPopup add "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;->access$getMContext$p$s1008912023(Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f0d01ed

    invoke-virtual {v11, v12, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    const-string/jumbo v12, "null cannot be cast to non-null type com.android.launcher3.bottomsearch.SettingsShortcutView"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Lcom/android/launcher3/bottomsearch/SettingsShortcutView;

    if-nez v8, :cond_e9

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    add-int v13, v3, v1

    iput v13, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v11, v6, v1, v6, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_f8

    :cond_e9
    add-int/lit8 v12, v0, -0x1

    if-ne v8, v12, :cond_f8

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    add-int v13, v3, v1

    iput v13, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v11, v6, v6, v6, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_f8
    :goto_f8
    if-nez v8, :cond_10a

    add-int/lit8 v12, v0, -0x1

    if-ne v8, v12, :cond_10a

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    mul-int/lit8 v12, v1, 0x2

    add-int/2addr v12, v3

    iput v12, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v11, v6, v1, v6, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_10a
    invoke-virtual {v11, v9}, Lcom/android/launcher3/bottomsearch/SettingsShortcutView;->applyInfo(Lcom/android/launcher/bottomsearch/DynamicMenuBean;)V

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v8, v10

    goto :goto_9f

    :cond_112
    invoke-static {}, Li4/o;->k()V

    throw v5

    :cond_116
    iget-object p1, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1;->this$0:Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;

    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    invoke-static {p1, v2}, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;->access$setSettingPopup$p(Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;Landroid/widget/PopupWindow;)V

    goto :goto_131

    :cond_121
    iget-object p1, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1;->this$0:Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;

    invoke-static {p1}, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;->access$getSettingPopup$p(Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_131

    return-void

    :cond_131
    :goto_131
    iget-object p1, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1;->this$0:Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;

    invoke-static {p1}, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;->access$getMContext$p$s1008912023(Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f070715

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/2addr v3, v0

    mul-int/lit8 v0, v1, 0x2

    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1;->this$0:Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;

    invoke-static {v2}, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;->access$getSettingPopup$p(Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;)Landroid/widget/PopupWindow;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_162

    invoke-virtual {v3, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const v5, 0x7f1306ef

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    move-object v5, v3

    :cond_162
    invoke-static {v2, v5}, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;->access$setSettingPopup$p(Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;Landroid/widget/PopupWindow;)V

    const/4 v2, 0x2

    new-array v3, v2, [I

    iget-object v5, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1;->$v:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v5, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1;->this$0:Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;

    invoke-static {v5}, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;->access$getMContext$p$s1008912023(Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/Launcher;

    sget-object v7, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v7, v5}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v7}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v7

    iget-object v7, v7, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    div-int/2addr v7, v2

    div-int/2addr p1, v2

    sub-int/2addr v7, p1

    aget p1, v3, v4

    sub-int/2addr p1, v0

    sub-int/2addr p1, v1

    new-instance v0, Lcom/android/launcher3/bottomsearch/PopupStateListener;

    invoke-direct {v0}, Lcom/android/launcher3/bottomsearch/PopupStateListener;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1;->this$0:Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;

    invoke-static {v1}, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;->access$getSettingPopup$p(Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/bottomsearch/PopupStateListener;->setPopup(Landroid/widget/PopupWindow;)V

    sget-object v1, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->INSTANCE:Lcom/android/launcher3/bottomsearch/BottomSearchImpl;

    invoke-virtual {v1}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->getMutableList$OplusLauncher_RealmePallExportAallRelease()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v3, Lcom/android/launcher3/popup/PopupBlurView;->Companion:Lcom/android/launcher3/popup/PopupBlurView$Companion;

    const-string v8, "launcher"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "contentView"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5, v1}, Lcom/android/launcher3/popup/PopupBlurView$Companion;->getPopBlurView(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/launcher3/popup/PopupBlurView;

    move-result-object v3

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1;->this$0:Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;

    invoke-static {v3}, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;->access$getSettingPopup$p(Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;)Landroid/widget/PopupWindow;

    move-result-object v3

    if-eqz v3, :cond_1d4

    iget-object v8, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1;->this$0:Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;

    new-instance v9, Lcom/android/launcher3/bottomsearch/d;

    invoke-direct {v9, v0, v8, v2, v1}, Lcom/android/launcher3/bottomsearch/d;-><init>(Lcom/android/launcher3/bottomsearch/PopupStateListener;Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/launcher3/OplusDragLayer;)V

    invoke-virtual {v3, v9}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_1d4
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/popup/PopupBlurView;

    if-eqz v0, :cond_1e3

    invoke-virtual {v0, v4}, Lcom/android/launcher3/popup/PopupBlurView;->createBlurAnim(Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_1e3

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1e3
    sget-object v0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {v0, v5}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->addOrDeleteBottomWidget(Lcom/android/launcher3/Launcher;)V

    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1;->this$0:Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;

    invoke-static {v0}, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;->access$getSettingPopup$p(Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1f5

    iget-object p0, p0, Lcom/android/launcher3/bottomsearch/BottomWidgetContainerView$showSettingPopup$1;->$v:Landroid/view/View;

    invoke-virtual {v0, p0, v6, v7, p1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_1f5
    return-void
.end method
