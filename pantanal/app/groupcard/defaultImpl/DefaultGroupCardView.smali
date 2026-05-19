.class public final Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDefaultGroupCardView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultGroupCardView.kt\npantanal/app/groupcard/defaultImpl/DefaultGroupCardView\n+ 2 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,136:1\n35#2:137\n169#3,2:138\n*S KotlinDebug\n*F\n+ 1 DefaultGroupCardView.kt\npantanal/app/groupcard/defaultImpl/DefaultGroupCardView\n*L\n88#1:137\n106#1:138,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView$Companion;

.field private static final TAG:Ljava/lang/String; = "DefaultGroupCardView"


# instance fields
.field private bgPaint:Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;

.field private margin:I

.field private outerRadius:F

.field private final pocketCardIntentManager$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;->Companion:Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object p1, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView$pocketCardIntentManager$2;->INSTANCE:Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView$pocketCardIntentManager$2;

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;->pocketCardIntentManager$delegate:Lh4/f;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_b

    move p3, v0

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    move p4, v0

    :cond_10
    invoke-direct {p0, p1, p2, p3, p4}, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic a(Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;->setTitleCenterPosition$lambda$1(Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getPocketCardIntentManager(Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;)Lpantanal/app/groupcard/utils/PocketCardIntentManager;
    .registers 1

    invoke-direct {p0}, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;->getPocketCardIntentManager()Lpantanal/app/groupcard/utils/PocketCardIntentManager;

    move-result-object p0

    return-object p0
.end method

.method private final getPocketCardIntentManager()Lpantanal/app/groupcard/utils/PocketCardIntentManager;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;->pocketCardIntentManager$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpantanal/app/groupcard/utils/PocketCardIntentManager;

    return-object p0
.end method

.method private final setOuterRadius(F)V
    .registers 3

    iput p1, p0, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;->outerRadius:F

    iget-object v0, p0, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;->bgPaint:Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;

    if-eqz v0, :cond_d

    iget p0, p0, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;->margin:I

    int-to-float p0, p0

    add-float/2addr p1, p0

    invoke-virtual {v0, p1}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->setRadius(F)V

    :cond_d
    return-void
.end method

.method private final setTitleCenterPosition(Landroid/view/View;)V
    .registers 5

    sget v0, Lpantanal/app/groupcard/R$id;->empty_card_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v2, 0x0

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sget v0, Lpantanal/app/groupcard/R$id;->empty_card_subtitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    new-instance v0, Lcom/android/launcher/guide/g;

    invoke-direct {v0, p0}, Lcom/android/launcher/guide/g;-><init>(Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final setTitleCenterPosition$lambda$1(Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;Landroid/view/View;)V
    .registers 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;->getPocketCardIntentManager()Lpantanal/app/groupcard/utils/PocketCardIntentManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView$setTitleCenterPosition$1$1;

    invoke-direct {v1, p0}, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView$setTitleCenterPosition$1$1;-><init>(Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;)V

    invoke-virtual {p1, v0, v1}, Lpantanal/app/groupcard/utils/PocketCardIntentManager;->getIntroduceIntentList(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;->bgPaint:Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->drawBackground(Landroid/graphics/Canvas;)V

    :cond_7
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final initView(Lpantanal/app/groupcard/GroupCardConfig;)V
    .registers 8

    const-string v0, "groupCardConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;

    new-instance v1, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lpantanal/app/groupcard/R$color;->group_card_container_bg_color:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    iget v3, p0, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;->outerRadius:F

    iget v4, p0, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;->margin:I

    invoke-direct {v1, v2, v3, v4}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;-><init>(IFI)V

    invoke-direct {v0, v1, p0}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;-><init>(Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;Landroid/view/View;)V

    iput-object v0, p0, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;->bgPaint:Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;

    invoke-virtual {p1}, Lpantanal/app/groupcard/GroupCardConfig;->getMargin()I

    move-result v0

    invoke-virtual {p0, v0}, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;->setMargin(I)V

    invoke-virtual {p1}, Lpantanal/app/groupcard/GroupCardConfig;->getOuterRadius()F

    move-result v0

    invoke-direct {p0, v0}, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;->setOuterRadius(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lpantanal/app/groupcard/R$layout;->group_card_empty_view:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;->setTitleCenterPosition(Landroid/view/View;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_5a

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    :cond_5a
    const/4 v5, 0x1

    if-eqz v2, :cond_6f

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    new-instance v1, Lpantanal/app/groupcard/defaultImpl/ClipSmoothOutlineProvider;

    invoke-virtual {p1}, Lpantanal/app/groupcard/GroupCardConfig;->getOuterRadius()F

    move-result p1

    invoke-direct {v1, p1}, Lpantanal/app/groupcard/defaultImpl/ClipSmoothOutlineProvider;-><init>(F)V

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_6f
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-eq p1, v4, :cond_76

    move v3, v5

    :cond_76
    if-nez v3, :cond_7b

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_7b
    return-void
.end method

.method public onMeasure(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object p1, p0, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;->bgPaint:Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->setSize(II)V

    :cond_12
    return-void
.end method

.method public final playAnimation(Lpantanal/app/groupcard/plugininterface/AnimAction;)V
    .registers 14

    const-string v0, "animAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playAnimation,animAction:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "DefaultGroupCardView"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {p1}, Lpantanal/app/groupcard/plugininterface/AnimAction;->getTarget()Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

    move-result-object v0

    sget-object v1, Lpantanal/app/groupcard/plugininterface/AnimAction$Target;->BACKGROUND:Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

    if-ne v0, v1, :cond_4d

    invoke-virtual {p1}, Lpantanal/app/groupcard/plugininterface/AnimAction;->getAction()Lpantanal/app/groupcard/plugininterface/AnimAction$Action;

    move-result-object v0

    sget-object v1, Lpantanal/app/groupcard/plugininterface/AnimAction$Action;->IN:Lpantanal/app/groupcard/plugininterface/AnimAction$Action;

    if-ne v0, v1, :cond_3e

    iget-object p0, p0, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;->bgPaint:Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;

    if-eqz p0, :cond_4d

    invoke-virtual {p0}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->animIn()V

    goto :goto_4d

    :cond_3e
    invoke-virtual {p1}, Lpantanal/app/groupcard/plugininterface/AnimAction;->getAction()Lpantanal/app/groupcard/plugininterface/AnimAction$Action;

    move-result-object p1

    sget-object v0, Lpantanal/app/groupcard/plugininterface/AnimAction$Action;->OUT:Lpantanal/app/groupcard/plugininterface/AnimAction$Action;

    if-ne p1, v0, :cond_4d

    iget-object p0, p0, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;->bgPaint:Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;

    if-eqz p0, :cond_4d

    invoke-virtual {p0}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->animOut()V

    :cond_4d
    :goto_4d
    return-void
.end method

.method public final setMargin(I)V
    .registers 3

    iput p1, p0, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;->margin:I

    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;->bgPaint:Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;

    if-eqz p1, :cond_e

    iget v0, p0, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;->margin:I

    invoke-virtual {p1, v0}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->setBgMargin(I)V

    :cond_e
    iget-object p1, p0, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;->bgPaint:Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;

    if-eqz p1, :cond_1b

    iget v0, p0, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;->outerRadius:F

    iget p0, p0, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardView;->margin:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    invoke-virtual {p1, v0}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->setRadius(F)V

    :cond_1b
    return-void
.end method
