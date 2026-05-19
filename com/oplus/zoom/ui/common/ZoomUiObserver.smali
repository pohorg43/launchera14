.class public Lcom/oplus/zoom/ui/common/ZoomUiObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/zoom/common/ZoomSettingDispatcher$CallbackListener;


# static fields
.field private static final FLAG_IN_CHILD_MODE:I = 0x1

.field private static final FLAG_IN_SUPERPOWER_MODE:I = 0x1

.field private static final FLAG_IN_ZEN_MODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ZoomUiObserver"

.field private static final USER_HANDLE:I = 0x2710


# instance fields
.field private final mChildModeSetting:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;

.field private final mSuperPowerModeSetting:Landroid/net/Uri;

.field private final mUiManager:Lcom/oplus/zoom/ui/ZoomUiManager;

.field private final mZenModeSetting:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/zoom/ui/ZoomUiManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/ui/common/ZoomUiObserver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/zoom/ui/common/ZoomUiObserver;->mUiManager:Lcom/oplus/zoom/ui/ZoomUiManager;

    const-string p1, "super_powersave_launcher_enter"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/zoom/ui/common/ZoomUiObserver;->mSuperPowerModeSetting:Landroid/net/Uri;

    const-string p1, "children_mode_on"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/zoom/ui/common/ZoomUiObserver;->mChildModeSetting:Landroid/net/Uri;

    const-string p1, "op_breath_mode_status"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/zoom/ui/common/ZoomUiObserver;->mZenModeSetting:Landroid/net/Uri;

    invoke-static {}, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->getInstance()Lcom/oplus/zoom/common/ZoomSettingDispatcher;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->addCallbackListener(Lcom/oplus/zoom/common/ZoomSettingDispatcher$CallbackListener;)V

    return-void
.end method


# virtual methods
.method public onBroadCastReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "oplus.intent.action.MULTI_APP_PACKAGE_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid action : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " will be ignore!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;)V

    goto :goto_64

    :cond_29
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_35

    const-string p0, "ACTION_MULTI_APP_REMOVED uri is null"

    invoke-static {p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;)V

    goto :goto_64

    :cond_35
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_45

    const-string p0, "ACTION_MULTI_APP_REMOVED pkgName is null"

    invoke-static {p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;)V

    goto :goto_64

    :cond_45
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Receive broadcast : ACTION_MULTI_APP_REMOVED "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/oplus/zoom/ui/common/UiLogUtils;->i(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/ui/common/ZoomUiObserver;->mUiManager:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/ZoomUiManager;->getFloatHandleController()Lcom/oplus/zoom/ui/floathandle/FloatHandleController;

    move-result-object p0

    const/16 p2, 0x3e7

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->onPackageRemove(Ljava/lang/String;I)V

    :goto_64
    return-void
.end method

.method public onPackageRemove(Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onPackageRemoved = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/ui/common/ZoomUiObserver;->mUiManager:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/ZoomUiManager;->getFloatHandleController()Lcom/oplus/zoom/ui/floathandle/FloatHandleController;

    move-result-object p0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->onPackageRemove(Ljava/lang/String;I)V

    return-void
.end method

.method public onSettingChanged(ZLandroid/net/Uri;I)V
    .registers 6

    const-string p1, "ZoomUiObserver"

    :try_start_2
    iget-object p3, p0, Lcom/oplus/zoom/ui/common/ZoomUiObserver;->mSuperPowerModeSetting:Landroid/net/Uri;

    invoke-virtual {p2, p3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_45

    iget-object p2, p0, Lcom/oplus/zoom/ui/common/ZoomUiObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "super_powersave_launcher_enter"

    invoke-static {p2, p3, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    iget-object p3, p0, Lcom/oplus/zoom/ui/common/ZoomUiObserver;->mUiManager:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-virtual {p3}, Lcom/oplus/zoom/ui/ZoomUiManager;->getFloatHandleController()Lcom/oplus/zoom/ui/floathandle/FloatHandleController;

    move-result-object p3

    if-ne p2, v0, :cond_21

    move v1, v0

    :cond_21
    invoke-virtual {p3, v1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->updateSupperPowerModeState(Z)V

    if-ne p2, v0, :cond_2f

    iget-object p0, p0, Lcom/oplus/zoom/ui/common/ZoomUiObserver;->mUiManager:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/ZoomUiManager;->getTipsController()Lcom/oplus/zoom/ui/tips/TipsController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/tips/TipsController;->hideAllTipsView()V

    :cond_2f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateSuperPowerModeEnable superPowerMode:"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b7

    :cond_45
    iget-object p3, p0, Lcom/oplus/zoom/ui/common/ZoomUiObserver;->mChildModeSetting:Landroid/net/Uri;

    invoke-virtual {p2, p3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7b

    iget-object p2, p0, Lcom/oplus/zoom/ui/common/ZoomUiObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "children_mode_on"

    invoke-static {p2, p3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    iget-object p0, p0, Lcom/oplus/zoom/ui/common/ZoomUiObserver;->mUiManager:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/ZoomUiManager;->getFloatHandleController()Lcom/oplus/zoom/ui/floathandle/FloatHandleController;

    move-result-object p0

    if-ne p2, v0, :cond_62

    goto :goto_63

    :cond_62
    move v0, v1

    :goto_63
    invoke-virtual {p0, v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->updateChildModeState(Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateChildModeEnable childMode:"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b7

    :cond_7b
    iget-object p3, p0, Lcom/oplus/zoom/ui/common/ZoomUiObserver;->mZenModeSetting:Landroid/net/Uri;

    invoke-virtual {p2, p3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b7

    iget-object p2, p0, Lcom/oplus/zoom/ui/common/ZoomUiObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "op_breath_mode_status"

    invoke-static {p2, p3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    iget-object p0, p0, Lcom/oplus/zoom/ui/common/ZoomUiObserver;->mUiManager:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/ZoomUiManager;->getFloatHandleController()Lcom/oplus/zoom/ui/floathandle/FloatHandleController;

    move-result-object p0

    if-ne p2, v0, :cond_98

    goto :goto_99

    :cond_98
    move v0, v1

    :goto_99
    invoke-virtual {p0, v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->updateZenModeState(Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateZenModeEnable zenMode:"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b0} :catch_b1

    goto :goto_b7

    :catch_b1
    move-exception p0

    const-string p2, "onSettingChanged error, e: "

    invoke-static {p1, p2, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_b7
    :goto_b7
    return-void
.end method

.method public onUserSwitched(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onUserSwitched userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/zoom/ui/common/ZoomUiObserver;->mUiManager:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/ZoomUiManager;->getTipsController()Lcom/oplus/zoom/ui/tips/TipsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/zoom/ui/tips/TipsController;->onUserSwitch(I)V

    iget-object p0, p0, Lcom/oplus/zoom/ui/common/ZoomUiObserver;->mUiManager:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/ZoomUiManager;->getFloatHandleController()Lcom/oplus/zoom/ui/floathandle/FloatHandleController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->onUserSwitched(I)V

    return-void
.end method
