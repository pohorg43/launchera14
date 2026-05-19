.class public final Lcom/oplus/quickstep/views/OplusToolTips;
.super Lcom/coui/appcompat/tooltips/COUIToolTips;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/views/OplusToolTips$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusToolTips.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusToolTips.kt\ncom/oplus/quickstep/views/OplusToolTips\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,132:1\n342#2:133\n360#2:134\n1#3:135\n*S KotlinDebug\n*F\n+ 1 OplusToolTips.kt\ncom/oplus/quickstep/views/OplusToolTips\n*L\n74#1:133\n74#1:134\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/views/OplusToolTips$Companion;

.field private static final EXPECTED_ANCHOR_PARAM_INDEX:I = 0x0

.field private static final EXPECTED_DIRECTION_PARAM_INDEX:I = 0x1

.field private static final EXPECTED_HAS_INDICATOR_PARAM_INDEX:I = 0x2

.field private static final EXPECTED_OFFSET_X_PARAM_INDEX:I = 0x3

.field private static final EXPECTED_OFFSET_Y_PARAM_INDEX:I = 0x4

.field private static final EXPECTED_PARAM_NUM:I = 0x5

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final expectedParams:[Ljava/lang/Object;

.field private isResetShowing:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/views/OplusToolTips$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/views/OplusToolTips$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/views/OplusToolTips;->Companion:Lcom/oplus/quickstep/views/OplusToolTips$Companion;

    const-class v0, Lcom/oplus/quickstep/views/OplusToolTips;

    const-string v0, "OplusToolTips"

    sput-object v0, Lcom/oplus/quickstep/views/OplusToolTips;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/tooltips/COUIToolTips;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x5

    new-array p2, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_7
    if-ge v0, p1, :cond_13

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_13
    iput-object p2, p0, Lcom/oplus/quickstep/views/OplusToolTips;->expectedParams:[Ljava/lang/Object;

    return-void
.end method

.method private final getRestShowParams(II)[Ljava/lang/Object;
    .registers 7

    iget-boolean p1, p0, Lcom/oplus/quickstep/views/OplusToolTips;->isResetShowing:Z

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusToolTips;->expectedParams:[Ljava/lang/Object;

    return-object p0

    :cond_7
    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusToolTips;->expectedParams:[Ljava/lang/Object;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusToolTips;->expectedParams:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    instance-of v2, p1, Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v2, :cond_24

    check-cast p1, Landroid/view/View;

    goto :goto_25

    :cond_24
    move-object p1, v3

    :goto_25
    const/4 v2, 0x2

    new-array v2, v2, [I

    if-eqz p1, :cond_2d

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    :cond_2d
    aget p1, v2, v0

    if-ge p1, p2, :cond_5e

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusToolTips;->expectedParams:[Ljava/lang/Object;

    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "copyOf(this, size)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x80

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusToolTips;->expectedParams:[Ljava/lang/Object;

    aget-object p0, p0, v1

    instance-of p2, p0, Ljava/lang/Integer;

    if-eqz p2, :cond_50

    move-object v3, p0

    check-cast v3, Ljava/lang/Integer;

    :cond_50
    if-eqz v3, :cond_5d

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result p0

    neg-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v1

    :cond_5d
    return-object p1

    :cond_5e
    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusToolTips;->expectedParams:[Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public showAtLocation(Landroid/view/View;III)V
    .registers 15

    invoke-direct {p0, p3, p4}, Lcom/oplus/quickstep/views/OplusToolTips;->getRestShowParams(II)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/views/OplusToolTips;->expectedParams:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_ab

    const/4 v1, 0x0

    aget-object v1, v0, v1

    instance-of v4, v1, Landroid/view/View;

    if-eqz v4, :cond_19

    check-cast v1, Landroid/view/View;

    move-object v5, v1

    goto :goto_1a

    :cond_19
    move-object v5, v3

    :goto_1a
    aget-object v1, v0, v2

    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_23

    check-cast v1, Ljava/lang/Integer;

    goto :goto_24

    :cond_23
    move-object v1, v3

    :goto_24
    const/4 v4, 0x2

    aget-object v4, v0, v4

    instance-of v6, v4, Ljava/lang/Boolean;

    if-eqz v6, :cond_2e

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_2f

    :cond_2e
    move-object v4, v3

    :goto_2f
    const/4 v6, 0x3

    aget-object v6, v0, v6

    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_39

    check-cast v6, Ljava/lang/Integer;

    goto :goto_3a

    :cond_39
    move-object v6, v3

    :goto_3a
    const/4 v7, 0x4

    aget-object v7, v0, v7

    instance-of v8, v7, Ljava/lang/Integer;

    if-eqz v8, :cond_44

    check-cast v7, Ljava/lang/Integer;

    goto :goto_45

    :cond_44
    move-object v7, v3

    :goto_45
    if-eqz v5, :cond_9e

    if-eqz v1, :cond_9e

    if-eqz v4, :cond_9e

    if-eqz v6, :cond_9e

    if-eqz v7, :cond_9e

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_85

    sget-object p1, Lcom/oplus/quickstep/views/OplusToolTips;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rest show("

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x2d

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "), expectedParams: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oplus/quickstep/views/OplusToolTips;->expectedParams:[Ljava/lang/Object;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "; restShowParams:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_85
    iput-boolean v2, p0, Lcom/oplus/quickstep/views/OplusToolTips;->isResetShowing:Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object v4, p0

    move v6, p1

    move v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/oplus/quickstep/views/OplusToolTips;->showWithDirection(Landroid/view/View;IZII)V

    return-void

    :cond_9e
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_ab

    sget-object v0, Lcom/oplus/quickstep/views/OplusToolTips;->TAG:Ljava/lang/String;

    const-string v1, "try rest show, params exception"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ab
    const-class v0, Lcom/coui/appcompat/tooltips/COUIToolTips;

    const-string v1, "mMainPanel"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_c3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_c3

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_c4

    :cond_c3
    move-object v0, v3

    :goto_c4
    const-class v1, Lcom/coui/appcompat/tooltips/COUIToolTips;

    const-string v4, "mArrowView"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_dc

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_dc

    check-cast v1, Landroid/widget/ImageView;

    move-object v3, v1

    :cond_dc
    if-eqz v3, :cond_ea

    if-eqz v0, :cond_ea

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getElevation()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    add-float/2addr v0, v1

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setElevation(F)V

    :cond_ea
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public showWithDirection(Landroid/view/View;IZII)V
    .registers 13

    const-string v0, "anchor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/views/OplusToolTips;->isResetShowing:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusToolTips;->expectedParams:[Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusToolTips;->expectedParams:[Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v3

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusToolTips;->expectedParams:[Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusToolTips;->expectedParams:[Ljava/lang/Object;

    const/4 v3, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    :cond_30
    invoke-virtual {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->getContentTv()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutDirection(I)V

    :try_start_3f
    const-class v0, Lcom/coui/appcompat/tooltips/COUIToolTips;

    const-string v3, "mMainPanel"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_5d

    const-string v4, "getDeclaredField(\"mMainPanel\")"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_5d

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_5e

    :cond_5d
    move-object v0, v3

    :goto_5e
    const-class v4, Lcom/coui/appcompat/tooltips/COUIToolTips;

    const-string v5, "mScrollView"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    if-eqz v4, :cond_7b

    const-string v5, "getDeclaredField(\"mScrollView\")"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroid/widget/ScrollView;

    if-eqz v5, :cond_7b

    check-cast v4, Landroid/widget/ScrollView;

    goto :goto_7c

    :cond_7b
    move-object v4, v3

    :goto_7c
    if-eqz v0, :cond_93

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v5, :cond_8c

    const v6, 0x7f06043e

    invoke-virtual {v5, v6, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    goto :goto_90

    :cond_8c
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOutlineSpotShadowColor()I

    move-result v5

    :goto_90
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setOutlineSpotShadowColor(I)V

    :cond_93
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v5, :cond_101

    const v6, 0x7f070c50

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    if-eqz v0, :cond_a7

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    goto :goto_a8

    :cond_a7
    move v6, v2

    :goto_a8
    sub-int/2addr v5, v6

    if-eqz v0, :cond_b0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    goto :goto_b1

    :cond_b0
    move v0, v2

    :goto_b1
    sub-int/2addr v5, v0

    if-eqz v4, :cond_c5

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_bf

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_c0

    :cond_bf
    move-object v0, v3

    :goto_c0
    if-eqz v0, :cond_c5

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_c6

    :cond_c5
    move v0, v2

    :goto_c6
    sub-int/2addr v5, v0

    if-eqz v4, :cond_da

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_d4

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_d5

    :cond_d4
    move-object v0, v3

    :goto_d5
    if-eqz v0, :cond_da

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_db

    :cond_da
    move v0, v2

    :goto_db
    sub-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-lez v4, :cond_e7

    goto :goto_e8

    :cond_e7
    move v1, v2

    :goto_e8
    if-eqz v1, :cond_eb

    goto :goto_ec

    :cond_eb
    move-object v0, v3

    :goto_ec
    if-eqz v0, :cond_101

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->getContentTv()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxHeight(I)V

    sget-object v3, Lh4/z;->a:Lh4/z;
    :try_end_fb
    .catchall {:try_start_3f .. :try_end_fb} :catchall_fc

    goto :goto_101

    :catchall_fc
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    :cond_101
    :goto_101
    invoke-static {v3}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_10e

    sget-object v1, Lcom/oplus/quickstep/views/OplusToolTips;->TAG:Ljava/lang/String;

    const-string v2, "restore oplusToolTips view attr fail"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10e
    invoke-super/range {p0 .. p5}, Lcom/coui/appcompat/tooltips/COUIToolTips;->showWithDirection(Landroid/view/View;IZII)V

    return-void
.end method
