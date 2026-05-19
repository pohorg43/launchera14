.class Landroidx/core/graphics/drawable/IconCompat$Api23Impl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/drawable/IconCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;
    .registers 4
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Landroid/graphics/drawable/Icon;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getType(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_28

    const/4 p0, 0x4

    if-eq v0, p0, :cond_1f

    const/4 p0, 0x6

    if-eq v0, p0, :cond_16

    new-instance p0, Landroidx/core/graphics/drawable/IconCompat;

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    iput-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    return-object p0

    :cond_16
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getUri(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithAdaptiveBitmapContentUri(Landroid/net/Uri;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0

    :cond_1f
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getUri(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithContentUri(Landroid/net/Uri;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0

    :cond_28
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getResPackage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :try_start_2c
    invoke-static {p0, v0}, Landroidx/core/graphics/drawable/IconCompat;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getResId(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p0, v0, p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0
    :try_end_38
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2c .. :try_end_38} :catch_39

    return-object p0

    :catch_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Icon resource cannot be found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFromIconInner(Ljava/lang/Object;)Landroidx/core/graphics/drawable/IconCompat;
    .registers 3
    .param p0  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getType(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x4

    if-eq v0, v1, :cond_22

    const/4 v1, 0x6

    if-eq v0, v1, :cond_19

    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    return-object v0

    :cond_19
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getUri(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithAdaptiveBitmapContentUri(Landroid/net/Uri;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0

    :cond_22
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getUri(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithContentUri(Landroid/net/Uri;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0

    :cond_2b
    const/4 v0, 0x0

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getResPackage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getResId(Ljava/lang/Object;)I

    move-result p0

    invoke-static {v0, v1, p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method public static getResId(Ljava/lang/Object;)I
    .registers 1
    .param p0  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api28Impl;->getResId(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static getResPackage(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1
    .param p0  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api28Impl;->getResPackage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getType(Ljava/lang/Object;)I
    .registers 1
    .param p0  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api28Impl;->getType(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static getUri(Ljava/lang/Object;)Landroid/net/Uri;
    .registers 1
    .param p0  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api28Impl;->getUri(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static loadDrawable(Landroid/graphics/drawable/Icon;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static toIcon(Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;)Landroid/graphics/drawable/Icon;
    .registers 4
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    iget p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    packed-switch p1, :pswitch_data_5e

    :pswitch_5  #0x0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_d  #0x6
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$Api30Impl;->createWithAdaptiveBitmapContentUri(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto :goto_48

    :pswitch_16  #0x5
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$Api26Impl;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto :goto_48

    :pswitch_1f  #0x4
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto :goto_48

    :pswitch_28  #0x3
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast p1, [B

    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    invoke-static {p1, v0, v1}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto :goto_48

    :pswitch_35  #0x2
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->getResPackage()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    invoke-static {p1, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto :goto_48

    :pswitch_40  #0x1
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    :goto_48
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_4f

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->setTintList(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Icon;

    :cond_4f
    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v0, Landroidx/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    if-eq p0, v0, :cond_58

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Icon;->setTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Icon;

    :cond_58
    return-object p1

    :pswitch_59  #0xffffffff
    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Icon;

    return-object p0

    :pswitch_data_5e
    .packed-switch -0x1
        :pswitch_59  #ffffffff
        :pswitch_5  #00000000
        :pswitch_40  #00000001
        :pswitch_35  #00000002
        :pswitch_28  #00000003
        :pswitch_1f  #00000004
        :pswitch_16  #00000005
        :pswitch_d  #00000006
    .end packed-switch
.end method
