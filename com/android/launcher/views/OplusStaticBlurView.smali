.class public final Lcom/android/launcher/views/OplusStaticBlurView;
.super Landroid/view/View;
.source ""

# interfaces
.implements Lcom/android/launcher/wallpaper/BlurCache$OnBlurCacheChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/views/OplusStaticBlurView$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusStaticBlurView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusStaticBlurView.kt\ncom/android/launcher/views/OplusStaticBlurView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,77:1\n1#2:78\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/views/OplusStaticBlurView$Companion;

.field private static final DEBUG_CALLERS:I = 0x12

.field private static final TAG:Ljava/lang/String; = "OplusStaticBlurView"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/views/OplusStaticBlurView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/views/OplusStaticBlurView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/views/OplusStaticBlurView;->Companion:Lcom/android/launcher/views/OplusStaticBlurView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/views/OplusStaticBlurView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/views/OplusStaticBlurView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/android/launcher/views/OplusStaticBlurView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/views/OplusStaticBlurView;Landroid/graphics/Bitmap;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/views/OplusStaticBlurView;->onBlurBitmapChanged$lambda$1(Lcom/android/launcher/views/OplusStaticBlurView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private final init(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher/views/OplusStaticBlurView;->setAlpha(F)V

    invoke-static {p1}, Lcom/android/common/util/PlatformLevelUtils;->isBlurUnavailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, 0x7f06078f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_19
    return-void
.end method

.method private static final onBlurBitmapChanged$lambda$1(Lcom/android/launcher/views/OplusStaticBlurView;Landroid/graphics/Bitmap;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_16

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public onBlurBitmapChanged(Landroid/graphics/Bitmap;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBlurBitmapChanged, bitmap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusStaticBlurView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroidx/constraintlayout/motion/widget/c;

    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/motion/widget/c;-><init>(Lcom/android/launcher/views/OplusStaticBlurView;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAlpha(F)V
    .registers 6

    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_c

    move v3, v1

    goto :goto_d

    :cond_c
    move v3, v2

    :goto_d
    if-eqz v3, :cond_15

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1e

    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1e
    :goto_1e
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p0

    if-eqz p0, :cond_4f

    if-nez v0, :cond_28

    move p0, v1

    goto :goto_29

    :cond_28
    move p0, v2

    :goto_29
    if-nez p0, :cond_35

    const/high16 p0, 0x3f800000  # 1.0f

    cmpg-float p0, p1, p0

    if-nez p0, :cond_32

    goto :goto_33

    :cond_32
    move v1, v2

    :goto_33
    if-eqz v1, :cond_4f

    :cond_35
    const-string p0, "blur view setAlpha, "

    const-string v0, ", Callers = "

    invoke-static {p0, p1, v0}, Lc0/a;->a(Ljava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0x12

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusStaticBlurView"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    return-void
.end method
