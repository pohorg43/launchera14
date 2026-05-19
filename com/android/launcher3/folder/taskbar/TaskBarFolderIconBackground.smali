.class public final Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;
.super Lcom/android/launcher3/folder/OplusPreviewBackground;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTaskBarFolderIconBackground.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskBarFolderIconBackground.kt\ncom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground\n+ 2 Delegates.kt\nkotlin/properties/Delegates\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,170:1\n33#2,3:171\n42#3:174\n94#3,14:175\n31#3:189\n94#3,14:190\n1#4:204\n*S KotlinDebug\n*F\n+ 1 TaskBarFolderIconBackground.kt\ncom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground\n*L\n37#1:171,3\n67#1:174\n67#1:175,14\n70#1:189\n70#1:190,14\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic $$delegatedProperties:[Lz4/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final ALPHA_MAX:I = 0xff

.field private static final ALPHA_MIN:I = 0x0

.field private static final CLOSE_DURATION:J = 0x1c2L

.field public static final Companion:Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground$Companion;

.field private static final OPEN_DURATION:J = 0x1f4L


# instance fields
.field private final icon:Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;

.field private mArrowAnimator:Landroid/animation/ValueAnimator;

.field private mArrowDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconsRect:Landroid/graphics/RectF;

.field private final needDrawOpeningBg$delegate:Lv4/c;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Lz4/n;

    const-class v1, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;

    const-string/jumbo v2, "needDrawOpeningBg"

    const-string v3, "getNeedDrawOpeningBg()Z"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/common/util/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lz4/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->$$delegatedProperties:[Lz4/n;

    new-instance v0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->Companion:Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;)V
    .registers 3

    const-string v0, "icon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusPreviewBackground;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->icon:Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground$special$$inlined$observable$1;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground$special$$inlined$observable$1;-><init>(Ljava/lang/Object;Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->needDrawOpeningBg$delegate:Lv4/c;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->mIconsRect:Landroid/graphics/RectF;

    return-void
.end method

.method public static final synthetic access$startArrowAnimation(Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->startArrowAnimation(Z)V

    return-void
.end method

.method public static synthetic c(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->startArrowAnimation$lambda$4$lambda$3(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final startArrowAnimation(Z)V
    .registers 6

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->mArrowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_a

    return-void

    :cond_a
    if-eqz v1, :cond_8a

    iget-object v2, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->mArrowAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_13
    const/4 v2, 0x2

    if-eqz p1, :cond_2c

    new-array p1, v2, [I

    fill-array-data p1, :array_8c

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroid/animation/ValueAnimator;

    if-nez p1, :cond_26

    goto :goto_48

    :cond_26
    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_48

    :cond_2c
    new-array p1, v2, [I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    const/4 v3, 0x0

    aput v2, p1, v3

    const/4 v2, 0x1

    aput v3, p1, v2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroid/animation/ValueAnimator;

    if-nez p1, :cond_43

    goto :goto_48

    :cond_43
    const-wide/16 v2, 0x1c2

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_48
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroid/animation/ValueAnimator;

    if-nez p1, :cond_4f

    goto :goto_57

    :cond_4f
    new-instance v2, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v2}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_57
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_65

    new-instance v2, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground$startArrowAnimation$lambda$4$$inlined$doOnStart$1;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground$startArrowAnimation$lambda$4$$inlined$doOnStart$1;-><init>(Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_65
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_73

    new-instance v2, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground$startArrowAnimation$lambda$4$$inlined$doOnEnd$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground$startArrowAnimation$lambda$4$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;)V

    invoke-virtual {p1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_73
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_81

    new-instance v2, Lcom/android/keyguardservice/c;

    invoke-direct {v2, v1, p0}, Lcom/android/keyguardservice/c;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_81
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_8a

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_8a
    return-void

    nop

    :array_8c
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private static final startArrowAnimation$lambda$4$lambda$3(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string v0, "$drawable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p0, p1, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->icon:Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public drawBackground(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->isArrowBgDrawing()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->mArrowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_b

    goto :goto_12

    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusPreviewBackground;->getBackgroundRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_12
    iget-object v0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->mArrowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_19

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_19
    iget-object v0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1e

    goto :goto_2c

    :cond_1e
    iget-object v1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->mArrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    rsub-int v1, v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2c
    :goto_2c
    invoke-super {p0, p1}, Lcom/android/launcher3/folder/OplusPreviewBackground;->drawBackground(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .registers 2

    const-string/jumbo p0, "outBounds"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final getIcon()Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->icon:Lcom/android/launcher3/folder/taskbar/TaskBarFolderIcon;

    return-object p0
.end method

.method public final getMArrowAnimator()Landroid/animation/ValueAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->mArrowAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public final getMArrowDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->mArrowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getMIconsRect()Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->mIconsRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getNeedDrawOpeningBg()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->needDrawOpeningBg$delegate:Lv4/c;

    sget-object v1, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->$$delegatedProperties:[Lz4/n;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isArrowBgDrawing()Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->getNeedDrawOpeningBg()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->mArrowAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    if-eqz v0, :cond_1c

    :cond_17
    iget-object p0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->mArrowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    return v1
.end method

.method public final isArrowBgShown()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->getNeedDrawOpeningBg()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->mArrowAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-nez v0, :cond_1c

    iget-object p0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->mArrowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method public final setMArrowAnimator(Landroid/animation/ValueAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->mArrowAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final setMArrowDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->mArrowDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setMIconsRect(Landroid/graphics/RectF;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->mIconsRect:Landroid/graphics/RectF;

    return-void
.end method

.method public final setNeedDrawOpeningBg(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->needDrawOpeningBg$delegate:Lv4/c;

    sget-object v1, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->$$delegatedProperties:[Lz4/n;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lv4/c;->setValue(Ljava/lang/Object;Lz4/n;Ljava/lang/Object;)V

    return-void
.end method

.method public setup(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;Landroid/view/View;II)V
    .registers 6

    const-string p4, "context"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "activity"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "invalidateDelegate"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mContext:Landroid/content/Context;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mIsDefaultFolderIcon:Z

    iget-object p2, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_31

    sget-object p2, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {p2}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result p2

    if-eqz p2, :cond_28

    const p2, 0x7f08099a

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_2f

    :cond_28
    const p2, 0x7f08099b

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_2f
    iput-object p2, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    :cond_31
    iget-object p2, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->mArrowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_4e

    sget-object p2, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {p2}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result p2

    if-eqz p2, :cond_45

    const p2, 0x7f080783

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_4c

    :cond_45
    const p2, 0x7f080784

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_4c
    iput-object p2, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->mArrowDrawable:Landroid/graphics/drawable/Drawable;

    :cond_4e
    iget-object p2, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    instance-of p2, p2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p2, :cond_71

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f070f99

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mRadius:F

    iget-object p2, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    const-string/jumbo p4, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    iget p4, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mRadius:F

    invoke-virtual {p2, p4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_71
    iput-object p3, p0, Lcom/android/launcher3/folder/PreviewBackground;->mInvalidateDelegate:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result p4

    invoke-virtual {p3}, Landroid/view/View;->getPaddingRight()I

    move-result p5

    add-int/2addr p5, p4

    sub-int/2addr p2, p5

    iput p2, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    const/high16 p2, 0x3f800000  # 1.0f

    iput p2, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mStyleBoundFactor:F

    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    iget-object p3, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mTmpRect:Landroid/graphics/Rect;

    iget p4, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    iput p4, p3, Landroid/graphics/Rect;->left:I

    iput p2, p3, Landroid/graphics/Rect;->top:I

    iget p5, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    add-int/2addr p4, p5

    iput p4, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p5

    iput p2, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeWidth:F

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusPreviewBackground;->invalidate()V

    return-void
.end method

.method public updateBgColorFilter()V
    .registers 3

    sget-object v0, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08099a

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080783

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->mArrowDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_3d

    :cond_23
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08099b

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080784

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->mArrowDrawable:Landroid/graphics/drawable/Drawable;

    :goto_3d
    return-void
.end method
