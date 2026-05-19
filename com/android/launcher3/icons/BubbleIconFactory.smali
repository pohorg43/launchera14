.class public Lcom/android/launcher3/icons/BubbleIconFactory;
.super Lcom/android/launcher3/icons/BaseIconFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/BubbleIconFactory$CircularAdaptiveIcon;,
        Lcom/android/launcher3/icons/BubbleIconFactory$CircularRingDrawable;
    }
.end annotation


# instance fields
.field private final mBadgeFactory:Lcom/android/launcher3/icons/BaseIconFactory;

.field private final mRingColor:I

.field private final mRingWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .registers 7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-direct {p0, p1, v0, p2}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(Landroid/content/Context;II)V

    iput p4, p0, Lcom/android/launcher3/icons/BubbleIconFactory;->mRingColor:I

    iput p5, p0, Lcom/android/launcher3/icons/BubbleIconFactory;->mRingWidth:I

    new-instance p2, Lcom/android/launcher3/icons/BaseIconFactory;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    iget p4, p4, Landroid/content/res/Configuration;->densityDpi:I

    invoke-direct {p2, p1, p4, p3}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(Landroid/content/Context;II)V

    iput-object p2, p0, Lcom/android/launcher3/icons/BubbleIconFactory;->mBadgeFactory:Lcom/android/launcher3/icons/BaseIconFactory;

    return-void
.end method

.method public static bridge synthetic b(Lcom/android/launcher3/icons/BubbleIconFactory;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/icons/BubbleIconFactory;->mRingColor:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/android/launcher3/icons/BubbleIconFactory;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/icons/BubbleIconFactory;->mRingWidth:I

    return p0
.end method


# virtual methods
.method public getBadgeBitmap(Landroid/graphics/drawable/Drawable;Z)Lcom/android/launcher3/icons/BitmapInfo;
    .registers 5

    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_14

    check-cast p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v0, Lcom/android/launcher3/icons/BubbleIconFactory$CircularAdaptiveIcon;

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/icons/BubbleIconFactory$CircularAdaptiveIcon;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object p1, v0

    :cond_14
    if-eqz p2, :cond_1c

    new-instance p2, Lcom/android/launcher3/icons/BubbleIconFactory$CircularRingDrawable;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher3/icons/BubbleIconFactory$CircularRingDrawable;-><init>(Lcom/android/launcher3/icons/BubbleIconFactory;Landroid/graphics/drawable/Drawable;)V

    move-object p1, p2

    :cond_1c
    iget-object p2, p0, Lcom/android/launcher3/icons/BubbleIconFactory;->mBadgeFactory:Lcom/android/launcher3/icons/BaseIconFactory;

    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x2

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/icons/BubbleIconFactory;->mBadgeFactory:Lcom/android/launcher3/icons/BaseIconFactory;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public getBubbleBitmap(Landroid/graphics/drawable/Drawable;[F)Landroid/graphics/Bitmap;
    .registers 5
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-nez p2, :cond_5

    new-array p2, v0, [F

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/launcher3/icons/BaseIconFactory;->normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    aget p2, p2, v0

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getBubbleDrawable(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/content/pm/ShortcutInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Landroid/graphics/drawable/Icon;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_19

    const-class p0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_19
    if-eqz p3, :cond_3a

    invoke-virtual {p3}, Landroid/graphics/drawable/Icon;->getType()I

    move-result p0

    const/4 p2, 0x4

    if-eq p0, p2, :cond_29

    invoke-virtual {p3}, Landroid/graphics/drawable/Icon;->getType()I

    move-result p0

    const/4 p2, 0x6

    if-ne p0, p2, :cond_35

    :cond_29
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p0, p2, v0}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    :cond_35
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_3a
    const/4 p0, 0x0

    return-object p0
.end method
