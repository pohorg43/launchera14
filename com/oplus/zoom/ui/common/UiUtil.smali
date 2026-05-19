.class public Lcom/oplus/zoom/ui/common/UiUtil;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppDrawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getApplicationInfo by userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;)V

    const/16 v0, 0x200

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_1e} :catch_23

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :catch_23
    move-exception p0

    const-string p2, "ApplicationInfo cannot be found for pkg:"

    invoke-static {p2, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getResolveInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-string p0, "getResolveInfo failed, packageName is null"

    invoke-static {p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;)V

    return-object v1

    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_39

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_39

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    return-object p0

    :cond_39
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " getResolveInfo failed, packageName = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;)V

    return-object v1
.end method

.method public static isPackageShowOnFront(Landroid/app/OplusActivityManager;Ljava/lang/String;I)Z
    .registers 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_d
    invoke-virtual {p0}, Landroid/app/OplusActivityManager;->getAllTopAppInfos()Ljava/util/List;

    move-result-object v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_12

    goto :goto_1b

    :catch_12
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v2, " getAllTopAppInfos failed.. "

    invoke-static {v2, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1b
    if-eqz v0, :cond_55

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_24

    goto :goto_55

    :cond_24
    move p0, v1

    :goto_25
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_54

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/app/OplusAppInfo;

    if-eqz v2, :cond_51

    iget-object v2, v2, Lcom/oplus/app/OplusAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_51

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :try_start_39
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3f} :catch_40

    goto :goto_47

    :catch_40
    move-exception v2

    const-string v4, "getUserId failed : UnSupportedApiVersionException"

    invoke-static {v4, v2}, Lcom/oplus/zoom/ui/common/UiLogUtils;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    move v2, p2

    :goto_47
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_51

    if-ne v2, p2, :cond_51

    const/4 p0, 0x1

    return p0

    :cond_51
    add-int/lit8 p0, p0, 0x1

    goto :goto_25

    :cond_54
    return v1

    :cond_55
    :goto_55
    const-string p0, " getAllTopAppInfos failed, appInfos is null"

    invoke-static {p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;)V

    return v1
.end method
