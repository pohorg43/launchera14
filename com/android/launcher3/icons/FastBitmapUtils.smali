.class public Lcom/android/launcher3/icons/FastBitmapUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newIconFromFancyDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/FastBitmapDrawable;
    .registers 3

    instance-of v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    return-object p0

    :cond_7
    new-instance v0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    sget-object v1, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    invoke-static {p0}, Lcom/android/common/util/BitmapUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static transformHardware2Soft(Lcom/android/launcher3/icons/FastBitmapDrawable;)Lcom/android/launcher3/icons/FastBitmapDrawable;
    .registers 6

    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_4c

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_37

    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-virtual {v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v3, v4, :cond_37

    new-instance v0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-virtual {v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :cond_37
    new-instance v1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, v3, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz v0, :cond_4b

    invoke-virtual {v1, v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setBadge(Landroid/graphics/drawable/Drawable;)V

    :cond_4b
    move-object p0, v1

    :cond_4c
    return-object p0
.end method
