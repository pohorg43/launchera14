.class public final Lcom/android/launcher/touch/ShelfDialog;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShelfDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShelfDialog.kt\ncom/android/launcher/touch/ShelfDialog\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,150:1\n82#2:151\n*S KotlinDebug\n*F\n+ 1 ShelfDialog.kt\ncom/android/launcher/touch/ShelfDialog\n*L\n117#1:151\n*E\n"
    }
.end annotation


# static fields
.field public static final BUBBLE_ANIMATION_JSON:Ljava/lang/String; = "pull_down_shelf.json"

.field public static final EFFECT_ANIMATION_REPEAT_COUNT:I = 0xa

.field public static final EFFECT_DISAPPEAR_DURATION:I = 0xfa

.field public static final INSTANCE:Lcom/android/launcher/touch/ShelfDialog;

.field public static final TAG:Ljava/lang/String; = "ShelfDialog"

.field private static mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

.field private static mCOUIToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

.field private static mGuideAnimationView:Lcom/oplus/anim/EffectiveAnimationView;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/touch/ShelfDialog;

    invoke-direct {v0}, Lcom/android/launcher/touch/ShelfDialog;-><init>()V

    sput-object v0, Lcom/android/launcher/touch/ShelfDialog;->INSTANCE:Lcom/android/launcher/touch/ShelfDialog;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/touch/ShelfDialog;->showDialog$lambda$2(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$bubbleDismissAction(Lcom/android/launcher/touch/ShelfDialog;Lcom/android/launcher/Launcher;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/touch/ShelfDialog;->bubbleDismissAction(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/touch/ShelfDialog;->bubbleDismissAction$lambda$6$lambda$5(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method private final bubbleDismissAction(Lcom/android/launcher/Launcher;)V
    .registers 4

    sget-object p0, Lcom/android/launcher/touch/ShelfDialog;->mGuideAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->cancelAnimation()V

    :cond_7
    sget-object p0, Lcom/android/launcher/touch/ShelfDialog;->mGuideAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz p0, :cond_26

    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p0, :cond_26

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    new-instance v0, Lcom/android/common/util/o0;

    const/4 v1, 0x6

    invoke-direct {v0, p1, v1}, Lcom/android/common/util/o0;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_26
    const/4 p0, 0x0

    sput-object p0, Lcom/android/launcher/touch/ShelfDialog;->mCOUIToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    return-void
.end method

.method private static final bubbleDismissAction$lambda$6$lambda$5(Lcom/android/launcher/Launcher;)V
    .registers 2

    const-string v0, "$launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    sget-object v0, Lcom/android/launcher/touch/ShelfDialog;->mGuideAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusDragLayer;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/Launcher;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/touch/ShelfDialog;->showDialog$lambda$1(Lcom/android/launcher/Launcher;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Landroid/content/DialogInterface;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/touch/ShelfDialog;->showDialog$lambda$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private static final showDialog$lambda$0(Landroid/content/DialogInterface;)V
    .registers 1

    const/4 p0, 0x0

    sput-object p0, Lcom/android/launcher/touch/ShelfDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    return-void
.end method

.method private static final showDialog$lambda$1(Lcom/android/launcher/Launcher;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .registers 3

    const-string p2, "$launcher"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$adapter"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;

    invoke-virtual {p1}, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;->getShelfDialogValueForCheckedItem()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/launcher/settings/SlideDownTypeHelper;->setSlideDownTypeWithCheck(Landroid/content/Context;I)V

    const p1, 0x7f1204c3

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    sget-object p0, Lcom/android/launcher/touch/ShelfDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismiss()V

    :cond_27
    return-void
.end method

.method private static final showDialog$lambda$2(Landroid/view/View;)V
    .registers 1

    sget-object p0, Lcom/android/launcher/touch/ShelfDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismiss()V

    :cond_7
    return-void
.end method


# virtual methods
.method public final cancelBubble(Lcom/android/launcher/Launcher;)V
    .registers 3

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/touch/ShelfDialog;->mCOUIToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-nez v0, :cond_a

    return-void

    :cond_a
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismiss()V

    :cond_f
    invoke-direct {p0, p1}, Lcom/android/launcher/touch/ShelfDialog;->bubbleDismissAction(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public final dismissDialog()V
    .registers 1

    sget-object p0, Lcom/android/launcher/touch/ShelfDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismiss()V

    :cond_7
    return-void
.end method

.method public final getMBottomSheetDialog()Lcom/coui/appcompat/panel/COUIBottomSheetDialog;
    .registers 1

    sget-object p0, Lcom/android/launcher/touch/ShelfDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    return-object p0
.end method

.method public final getMCOUIToolTips()Lcom/coui/appcompat/tooltips/COUIToolTips;
    .registers 1

    sget-object p0, Lcom/android/launcher/touch/ShelfDialog;->mCOUIToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    return-object p0
.end method

.method public final getMGuideAnimationView()Lcom/oplus/anim/EffectiveAnimationView;
    .registers 1

    sget-object p0, Lcom/android/launcher/touch/ShelfDialog;->mGuideAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    return-object p0
.end method

.method public final isShowDialog()Ljava/lang/Boolean;
    .registers 1

    sget-object p0, Lcom/android/launcher/touch/ShelfDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-nez p0, :cond_7

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_12

    :cond_7
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :goto_12
    return-object p0
.end method

.method public final setMBottomSheetDialog(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V
    .registers 2

    sput-object p1, Lcom/android/launcher/touch/ShelfDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    return-void
.end method

.method public final setMCOUIToolTips(Lcom/coui/appcompat/tooltips/COUIToolTips;)V
    .registers 2

    sput-object p1, Lcom/android/launcher/touch/ShelfDialog;->mCOUIToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    return-void
.end method

.method public final setMGuideAnimationView(Lcom/oplus/anim/EffectiveAnimationView;)V
    .registers 2

    sput-object p1, Lcom/android/launcher/touch/ShelfDialog;->mGuideAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    return-void
.end method

.method public final showBubble(Lcom/android/launcher/Launcher;)V
    .registers 4

    const-string p0, "launcher"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher/touch/ShelfDialog;->mCOUIToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-eqz p0, :cond_a

    return-void

    :cond_a
    const-string p0, "ShelfDialog"

    const-string/jumbo v0, "show bubble"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/anim/EffectiveAnimationView;

    invoke-direct {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/android/launcher/touch/ShelfDialog;->mGuideAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    const-string/jumbo v0, "pull_down_shelf.json"

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    sget-object v0, Lcom/android/launcher/touch/ShelfDialog;->mGuideAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    sget-object p0, Lcom/android/launcher/touch/ShelfDialog;->mGuideAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz p0, :cond_31

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    goto :goto_32

    :cond_31
    const/4 p0, 0x0

    :goto_32
    const-string/jumbo v0, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070e01

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070e02

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070e00

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sget-object v0, Lcom/android/launcher/touch/ShelfDialog;->mGuideAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    if-nez v0, :cond_75

    goto :goto_78

    :cond_75
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_78
    sget-object p0, Lcom/android/launcher/touch/ShelfDialog;->mGuideAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz p0, :cond_8a

    new-instance v0, Lcom/android/launcher/touch/ShelfDialog$showBubble$$inlined$doOnPreDraw$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/touch/ShelfDialog$showBubble$$inlined$doOnPreDraw$1;-><init>(Landroid/view/View;Lcom/android/launcher/Launcher;)V

    invoke-static {p0, v0}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    move-result-object p0

    const-string p1, "View.doOnPreDraw(\n    cr…dd(this) { action(this) }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8a
    sget-object p0, Lcom/android/launcher/touch/ShelfDialog;->mGuideAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    if-nez p0, :cond_8f

    goto :goto_94

    :cond_8f
    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatCount(I)V

    :goto_94
    sget-object p0, Lcom/android/launcher/touch/ShelfDialog;->mGuideAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz p0, :cond_9b

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    :cond_9b
    return-void
.end method

.method public final showDialog(Lcom/android/launcher/Launcher;)V
    .registers 11

    const-string p0, "launcher"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher/touch/ShelfDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_a

    return-void

    :cond_a
    const-string p0, "ShelfDialog"

    const-string/jumbo v0, "showDialog: "

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d021e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const v2, 0x7f130336

    invoke-direct {v0, p1, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/android/launcher/touch/ShelfDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setContentView(Landroid/view/View;)V

    sget-object p0, Lcom/android/launcher/touch/ShelfDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_39

    const v0, 0x7f0a052f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/COUIRecyclerView;

    goto :goto_3a

    :cond_39
    move-object p0, v1

    :goto_3a
    new-instance v0, Landroidx/recyclerview/widget/COUIPanelPreferenceLinearLayoutManager;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/COUIPanelPreferenceLinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    if-nez p0, :cond_46

    goto :goto_49

    :cond_46
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :goto_49
    if-nez p0, :cond_4c

    goto :goto_4f

    :cond_4c
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :goto_4f
    sget-object v0, Lcom/android/launcher/touch/ShelfDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_5d

    const v3, 0x7f0a063f

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar;

    goto :goto_5e

    :cond_5d
    move-object v0, v1

    :goto_5e
    if-eqz v0, :cond_66

    const v3, 0x7f1204c9

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(I)V

    :cond_66
    if-eqz v0, :cond_76

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070900

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setMinTitleTextSize(F)V

    :cond_76
    if-nez v0, :cond_79

    goto :goto_7c

    :cond_79
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setIsTitleCenterStyle(Z)V

    :goto_7c
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setIsTitleCenterStyle(Z)V

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v8, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;

    const v4, 0x7f0d0207

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher/touch/BottomSheetChoiceListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;I)V

    iput-object v8, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v2, Lcom/android/launcher/touch/ShelfDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz v2, :cond_b7

    iget-object v2, v2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz v2, :cond_b7

    invoke-virtual {v2}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDragView()Landroid/widget/ImageView;

    move-result-object v2

    goto :goto_b8

    :cond_b7
    move-object v2, v1

    :goto_b8
    if-nez v2, :cond_bb

    goto :goto_bf

    :cond_bb
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_bf
    if-eqz p0, :cond_c8

    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_c8
    sget-object p0, Lcom/android/launcher/touch/ShelfDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_d1

    sget-object v2, Lcom/android/launcher/touch/a;->a:Lcom/android/launcher/touch/a;

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_d1
    sget-object p0, Lcom/android/launcher/touch/ShelfDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_df

    const v2, 0x7f0a01b9

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/button/COUIButton;

    goto :goto_e0

    :cond_df
    move-object p0, v1

    :goto_e0
    if-eqz p0, :cond_ea

    new-instance v2, Lcom/android/launcher/folder/recommend/view/b;

    invoke-direct {v2, p1, v0}, Lcom/android/launcher/folder/recommend/view/b;-><init>(Lcom/android/launcher/Launcher;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_ea
    sget-object p0, Lcom/android/launcher/touch/ShelfDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_f8

    const p1, 0x7f0a0164

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/widget/TextView;

    :cond_f8
    if-eqz v1, :cond_ff

    sget-object p0, Lcom/android/launcher/touch/b;->a:Lcom/android/launcher/touch/b;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_ff
    sget-object p0, Lcom/android/launcher/touch/ShelfDialog;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_106

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_106
    return-void
.end method
