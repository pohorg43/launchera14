.class public final Lcom/android/launcher3/folder/big/BigFolderUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/folder/big/BigFolderUtil;

.field private static final LAUNCHER_FOLDER_BG_PARAMETER:Ljava/lang/String; = "launcher_folder_bg_parameter"

.field private static final OPLUS_FOLDER_BG_TYPE:Ljava/lang/String; = "oplus_folder_bg_type"

.field private static final OPLUS_FOLDER_BG_TYPE_COLOR:I = 0x0

.field private static final OPLUS_FOLDER_PARAMETER:Ljava/lang/String; = "oplus_folder_parameter"

.field private static final TAG:Ljava/lang/String; = "BigFolderUtil"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/folder/big/BigFolderUtil;

    invoke-direct {v0}, Lcom/android/launcher3/folder/big/BigFolderUtil;-><init>()V

    sput-object v0, Lcom/android/launcher3/folder/big/BigFolderUtil;->INSTANCE:Lcom/android/launcher3/folder/big/BigFolderUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final saveBigFolderBgColor(Landroid/content/Context;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    sget-object v0, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0604b0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    goto :goto_4e

    :cond_1b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0604b1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    goto :goto_4e

    :cond_27
    sget-object v0, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result v0

    if-eqz v0, :cond_43

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Lcom/android/launcher/theme/OplusUIEngine;->isDefaultThemeResource(J)Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06075b

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    goto :goto_4e

    :cond_43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06075c

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    :goto_4e
    :try_start_4e
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "oplus_folder_bg_type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "oplus_folder_parameter"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "launcher_folder_bg_parameter"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bgPara.toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/folder/big/BigFolderUtil;->saveToSecureSettingProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catch Lorg/json/JSONException; {:try_start_4e .. :try_end_6e} :catch_6f

    goto :goto_87

    :catch_6f
    move-exception p0

    const-string/jumbo v0, "saveBigFolderBgColor JSONException:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BigFolderUtil"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_87
    return-void
.end method

.method public static final saveBigFolderBgParameter(Landroid/content/Context;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/folder/big/BigFolderUtil;->saveBigFolderBgColor(Landroid/content/Context;)V

    return-void
.end method

.method private static final saveToSecureSettingProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    const-string/jumbo v1, "saveToSecureSettingProvider key:"

    const-string v2, ", value:"

    const-string v3, ", curValue:"

    invoke-static {v1, p1, v2, p2, v3}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BigFolderUtil"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2c
    return-void
.end method
