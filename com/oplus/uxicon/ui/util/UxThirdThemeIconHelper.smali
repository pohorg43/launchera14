.class public Lcom/oplus/uxicon/ui/util/UxThirdThemeIconHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CLIPPED_CACHED:Ljava/lang/String; = "clipped"

.field private static final CUSTOM_THEME_SELECT_KEY:Ljava/lang/String; = "persist.sys.oppo.theme_uuid"

.field private static final TAG:Ljava/lang/String; = "UxThirdThemeIconHelper"

.field private static final UUID_LENGTH:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getClippedThemedIcon(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/uxicon/helper/IconConfig;)Landroid/graphics/drawable/Drawable;
    .registers 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lcom/oplus/uxicon/ui/util/UxThirdThemeIconHelper;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_85

    :try_start_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_85

    if-nez p2, :cond_10

    goto :goto_85

    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "persist.sys.oppo.theme_uuid"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-le v4, v5, :cond_2d

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move v2, v1

    :cond_2d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "clipped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_b3

    if-eqz v4, :cond_46

    monitor-exit v0

    return-object v4

    :cond_46
    :try_start_46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {}, Lcom/oplus/wrapper/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/oplus/theme/OplusConvertIcon;->initConvertIconForUser(Landroid/content/res/Resources;I)V

    invoke-static {}, Lcom/oplus/wrapper/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v4}, Lcom/oplus/theme/OplusAppIconInfo;->parseIconXmlForUser(I)Z

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {p0, p1, p2}, Lcom/oplus/uxicon/ui/util/k;->a(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/uxicon/helper/IconConfig;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p2, p0, v1}, Lcom/oplus/theme/OplusConvertIcon;->convertIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v4, v5, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    if-eqz v2, :cond_83

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "clipped"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4, v3}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    :try_end_83
    .catchall {:try_start_46 .. :try_end_83} :catchall_b3

    :cond_83
    monitor-exit v0

    return-object v4

    :cond_85
    :goto_85
    :try_start_85
    const-string p1, "UxThirdThemeIconHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getClippedThemedIcon: context == null or package is null or iconConfig == null---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_95

    move p0, v1

    goto :goto_96

    :cond_95
    move p0, v2

    :goto_96
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "  "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_a1

    goto :goto_a2

    :cond_a1
    move v1, v2

    :goto_a2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V
    :try_end_b1
    .catchall {:try_start_85 .. :try_end_b1} :catchall_b3

    monitor-exit v0

    return-object p0

    :catchall_b3
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstalledThirdThemeIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/oplus/uxicon/ui/util/UxThirdThemeIconHelper;

    monitor-enter v0

    if-eqz p0, :cond_12

    :try_start_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_12

    :cond_c
    invoke-static {p0, p1}, Lcom/oplus/uxicon/ui/util/k;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_30

    monitor-exit v0

    return-object p0

    :cond_12
    :goto_12
    :try_start_12
    const-string p1, "UxThirdThemeIconHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstalledThirdThemeIcon: context == null or package is null---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_22

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_12 .. :try_end_2d} :catchall_30

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_30
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getThirdThemeIcon(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/uxicon/helper/IconConfig;)Landroid/graphics/drawable/Drawable;
    .registers 10

    const-class p2, Lcom/oplus/uxicon/ui/util/UxThirdThemeIconHelper;

    monitor-enter p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_88

    :try_start_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    goto/16 :goto_88

    :cond_10
    invoke-static {}, Lcom/oplus/wrapper/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Lcom/oplus/theme/OplusAppIconInfo;->parseIconXmlForUser(I)Z

    invoke-static {p1}, Lcom/oplus/theme/OplusAppIconInfo;->indexOfPackageName(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "persist.sys.oppo.theme_uuid"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_38

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x8

    if-le v5, v6, :cond_38

    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_39

    :cond_38
    move v0, v1

    :goto_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getThirdThemeIcon "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", thirdThemeId "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "UxThirdThemeIconHelper"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-le v3, v1, :cond_86

    invoke-static {p1, v4}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_77

    invoke-static {v3}, Lcom/oplus/theme/OplusAppIconInfo;->getIconName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {}, Lcom/oplus/wrapper/os/UserHandle;->myUserId()I

    move-result v3

    const-string v5, "icons"

    invoke-static {p0, v1, v5, v3}, Lcom/oplus/theme/OplusThirdPartUtil;->getDrawableByNameForUser(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v0, :cond_77

    invoke-static {p1, v1, v4}, Lcom/oplus/uxicon/ui/util/g;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    :cond_77
    instance-of p0, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_85

    move-object p0, v1

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_82
    .catchall {:try_start_8 .. :try_end_82} :catchall_a4

    if-nez p0, :cond_85

    goto :goto_86

    :cond_85
    move-object v2, v1

    :cond_86
    :goto_86
    monitor-exit p2

    return-object v2

    :cond_88
    :goto_88
    :try_start_88
    const-string p1, "UxThirdThemeIconHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getThirdThemeIcon: context == null or package is null---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_97

    goto :goto_98

    :cond_97
    move v0, v1

    :goto_98
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catchall {:try_start_88 .. :try_end_a2} :catchall_a4

    monitor-exit p2

    return-object v2

    :catchall_a4
    move-exception p0

    monitor-exit p2

    throw p0
.end method
