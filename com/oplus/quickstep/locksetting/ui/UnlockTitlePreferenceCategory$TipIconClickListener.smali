.class final Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$TipIconClickListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TipIconClickListener"
.end annotation


# instance fields
.field private toolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Landroidx/lifecycle/LifecycleOwner;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    goto :goto_11

    :cond_10
    move-object p1, v1

    :goto_11
    if-eqz p1, :cond_23

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    if-eqz p1, :cond_23

    new-instance v0, Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$TipIconClickListener$4;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$TipIconClickListener$4;-><init>(Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$TipIconClickListener;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    sget-object v1, Lh4/z;->a:Lh4/z;

    :cond_23
    if-nez v1, :cond_32

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_32

    const-string p0, "UnlockTitlePreferenceCategory"

    const-string p1, "context no LifecycleOwner"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    return-void
.end method

.method public static final synthetic access$getToolTips$p(Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$TipIconClickListener;)Lcom/coui/appcompat/tooltips/COUIToolTips;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$TipIconClickListener;->toolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    return-object p0
.end method

.method public static final synthetic access$setToolTips$p(Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$TipIconClickListener;Lcom/coui/appcompat/tooltips/COUIToolTips;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$TipIconClickListener;->toolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11

    const-string v0, "UnlockTitlePreferenceCategory"

    const-string v1, "click tip icon"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_6a

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_6a

    new-instance v3, Lcom/oplus/quickstep/views/OplusToolTips;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lcom/oplus/quickstep/views/OplusToolTips;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setDismissOnTouchOutside(Z)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v5, :cond_26

    const v1, 0x7f120348

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_26
    if-nez v1, :cond_2b

    const-string v1, ""

    goto :goto_30

    :cond_2b
    const-string v5, "it.resources?.getString(…_lock_setting_page) ?: \"\""

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_30
    invoke-virtual {v3, v1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setContent(Ljava/lang/CharSequence;)V

    iput-object v3, p0, Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$TipIconClickListener;->toolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_42

    const/4 v4, -0x1

    :cond_42
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_51

    const v7, 0x7f0709f8

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    goto :goto_52

    :cond_51
    move p0, v1

    :goto_52
    mul-int v7, v4, p0

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_63

    const v1, 0x7f0709f9

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    move v8, p0

    goto :goto_64

    :cond_63
    move v8, v1

    :goto_64
    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/oplus/quickstep/views/OplusToolTips;->showWithDirection(Landroid/view/View;IZII)V

    sget-object v1, Lh4/z;->a:Lh4/z;

    :cond_6a
    if-nez v1, :cond_77

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_77

    const-string p0, "show tool tips fail"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_77
    return-void
.end method
