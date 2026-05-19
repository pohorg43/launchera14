.class public Lcom/android/common/util/GenericUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "GenericUtils"

.field private static final sTrimPattern:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "(^[\\s|\\p{javaSpaceChar}]*)|([\\s|\\p{javaSpaceChar}]*$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/GenericUtils;->sTrimPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableWindowHomeMenuKey(Landroid/app/Activity;Z)V
    .registers 5

    const-string v0, "GenericUtils"

    if-nez p0, :cond_a

    const-string p0, "enableWindowHomeMenuKey: activity is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_16

    const-string p0, "enableWindowHomeMenuKey: window is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    if-eqz p1, :cond_1b

    sget p1, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->UNSET_ANY_KEY:I

    goto :goto_1d

    :cond_1b
    sget p1, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->IGNORE_HOME_MENU_KEY:I

    :goto_1d
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    :try_start_21
    invoke-static {v1}, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->getHomeAndMenuKeyState(Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    if-eq v2, p1, :cond_34

    invoke-static {v1, p1}, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->setHomeAndMenuKeyState(Landroid/view/WindowManager$LayoutParams;I)V

    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2d} :catch_2e

    goto :goto_34

    :catch_2e
    move-exception p0

    const-string p1, "enableWindowHomeMenuKey e: "

    invoke-static {p1, p0, v0}, Lcom/android/common/util/u;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_34
    :goto_34
    return-void
.end method

.method public static ignoreHomeMenuKey(Landroid/app/Dialog;)V
    .registers 3

    const-string v0, "GenericUtils"

    if-nez p0, :cond_a

    const-string p0, "ignoreHomeMenuKey dialog is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_16

    const-string p0, "enableWindowHomeMenuKey: window is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    sget v1, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->IGNORE_HOME_MENU_KEY:I

    invoke-static {p0, v0, v1}, Lcom/android/common/util/GenericUtils;->setHomeAndMenuKeyStateFlag(Landroid/view/Window;Landroid/view/WindowManager$LayoutParams;I)V

    return-void
.end method

.method public static isEnableUninstallButton(Lcom/android/launcher/Launcher;)Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getSelectedViewList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v3, :cond_11

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-static {v2, p0}, Lcom/android/common/util/PackageUtils;->isCanUninstall(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_31
    invoke-static {v2}, Lcom/android/common/util/PackageUtils;->isCanDeleteIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_3b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_43

    const/4 p0, 0x1

    goto :goto_44

    :cond_43
    const/4 p0, 0x0

    :goto_44
    return p0
.end method

.method public static isInstanceof(Ljava/lang/Object;Ljava/lang/Class;)Z
    .registers 2

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static setHomeAndMenuKeyStateFlag(Landroid/view/Window;Landroid/view/WindowManager$LayoutParams;I)V
    .registers 7

    const-string v0, "GenericUtils"

    :try_start_2
    invoke-static {p1}, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->getHomeAndMenuKeyState(Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    if-eq v1, p2, :cond_14

    if-eqz p0, :cond_11

    invoke-static {p1, p2}, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->setHomeAndMenuKeyState(Landroid/view/WindowManager$LayoutParams;I)V

    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_14

    :cond_11
    invoke-static {p1, p2}, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->setHomeAndMenuKeyState(Landroid/view/WindowManager$LayoutParams;I)V

    :cond_14
    :goto_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setHomeAndMenuKeyStateFlag oldFlag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " flag = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " window = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " params = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " \nCall = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x7

    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4e} :catch_4f

    goto :goto_65

    :catch_4f
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setHomeAndMenuKeyStateFlag setHomeAndMenuKeyState e: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/OplusFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_65
    return-void
.end method

.method public static trim(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sget-object v0, Lcom/android/common/util/GenericUtils;->sTrimPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
