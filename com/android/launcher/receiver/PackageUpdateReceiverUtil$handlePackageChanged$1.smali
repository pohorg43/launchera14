.class final Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/receiver/PackageUpdateReceiverUtil;->handlePackageChanged(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Lcom/android/launcher3/LauncherModel;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lm7/j0;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.android.launcher.receiver.PackageUpdateReceiverUtil$handlePackageChanged$1"
    f = "PackageUpdateReceiverUtil.kt"
    l = {
        0x51,
        0x64,
        0x73
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $intent:Landroid/content/Intent;

.field public final synthetic $isAppRestoring:Z

.field public final synthetic $launcherModel:Lcom/android/launcher3/LauncherModel;

.field public final synthetic $packageName:Ljava/lang/String;

.field public final synthetic $userHandle:Landroid/os/UserHandle;

.field public I$0:I

.field public label:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Landroid/content/Intent;ZLandroid/os/UserHandle;Ll4/d;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/LauncherModel;",
            "Landroid/content/Intent;",
            "Z",
            "Landroid/os/UserHandle;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$launcherModel:Lcom/android/launcher3/LauncherModel;

    iput-object p4, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$intent:Landroid/content/Intent;

    iput-boolean p5, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$isAppRestoring:Z

    iput-object p6, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$userHandle:Landroid/os/UserHandle;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ll4/d<",
            "*>;)",
            "Ll4/d<",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;

    iget-object v1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$launcherModel:Lcom/android/launcher3/LauncherModel;

    iget-object v4, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$intent:Landroid/content/Intent;

    iget-boolean v5, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$isAppRestoring:Z

    iget-object v6, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$userHandle:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Landroid/content/Intent;ZLandroid/os/UserHandle;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/j0;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_2d

    if-eq v1, v6, :cond_27

    if-eq v1, v5, :cond_20

    if-ne v1, v2, :cond_18

    iget v0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->I$0:I

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_e9

    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    iget v1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->I$0:I

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_a0

    :cond_27
    iget v1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->I$0:I

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_45

    :cond_2d
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    sget-object p1, Lm7/y0;->b:Lm7/f0;

    new-instance v1, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$1;

    iget-object v7, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$context:Landroid/content/Context;

    invoke-direct {v1, v7, v3}, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$1;-><init>(Landroid/content/Context;Ll4/d;)V

    iput v4, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->I$0:I

    iput v6, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->label:I

    invoke-static {p1, v1, p0}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_44

    return-object v0

    :cond_44
    move v1, v4

    :goto_45
    sget-object p1, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {p1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->updatePhoneManagerExistState()V

    iget-object p1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$packageName:Ljava/lang/String;

    const v7, 0x7f120481

    invoke-static {v7}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_65

    iget-object p1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/common/config/FeatureOption;->initBranchSearchFeature(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$context:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$launcherModel:Lcom/android/launcher3/LauncherModel;

    invoke-static {p1, v7}, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil;->access$reInitSearchEntryState(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V

    :cond_65
    iget-object p1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$packageName:Ljava/lang/String;

    const v7, 0x7f12047b

    invoke-static {v7}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7b

    iget-object p1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$context:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$launcherModel:Lcom/android/launcher3/LauncherModel;

    invoke-static {p1, v7}, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil;->access$reInitSearchEntryState(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V

    :cond_7b
    iget-object p1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$packageName:Ljava/lang/String;

    const v7, 0x7f120480

    invoke-static {v7}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a0

    sget-object p1, Lm7/y0;->b:Lm7/f0;

    new-instance v7, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$2;

    iget-object v8, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$context:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$launcherModel:Lcom/android/launcher3/LauncherModel;

    invoke-direct {v7, v8, v9, v3}, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$2;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Ll4/d;)V

    iput v1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->I$0:I

    iput v5, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->label:I

    invoke-static {p1, v7, p0}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a0

    return-object v0

    :cond_a0
    :goto_a0
    iget-object p1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$packageName:Ljava/lang/String;

    const v7, 0x7f120478

    invoke-static {v7}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b4

    iget-object p1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/common/config/FeatureOption;->initSupportAssistantSwipeUp(Landroid/content/Context;)V

    :cond_b4
    iget-object p1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$packageName:Ljava/lang/String;

    sget-object v7, Lcom/android/common/config/Constants$Packages;->CONSTANTS_PACKAGE_GLOBAL_SEARCH:Ljava/lang/String;

    invoke-static {p1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c1

    invoke-static {}, Lcom/android/common/config/FeatureOption;->updateSearchRepeatStartSupport()V

    :cond_c1
    iget-object p1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    move-result-object p1

    iget-object v7, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$packageName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->isGamePackageHide(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d2

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_d2
    sget-object p1, Lm7/y0;->b:Lm7/f0;

    new-instance v7, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$appState$1;

    iget-object v8, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$context:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$packageName:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v3}, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$appState$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ll4/d;)V

    iput v1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->I$0:I

    iput v2, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->label:I

    invoke-static {p1, v7, p0}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_e8

    return-object v0

    :cond_e8
    move v0, v1

    :goto_e9
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const-string/jumbo v1, "package changed, name = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", appState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageUpdateReceiverUtil"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$launcherModel:Lcom/android/launcher3/LauncherModel;

    invoke-static {p1, v1, v3}, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil;->access$resolveShelfAppState(ILjava/lang/String;Lcom/android/launcher3/LauncherModel;)V

    iget-object v1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$launcherModel:Lcom/android/launcher3/LauncherModel;

    invoke-static {p1, v1, v3}, Lcom/oplus/leftscreen/OverlayUtils;->resolveHiAssistantState(ILjava/lang/String;Lcom/android/launcher3/LauncherModel;)V

    iget-object v1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v1

    if-ne p1, v5, :cond_191

    iget-object p1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$intent:Landroid/content/Intent;

    const/4 v3, -0x1

    const-string v7, "android.intent.action.TRIGGER_PACKAGE"

    invoke-virtual {p1, v7, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object v3, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$context:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/launcher/receiver/PackageUpdateReceiver;->getProcessNameByPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "package changed, callPid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", callProcessName = "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; isAppRestoring = "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$isAppRestoring:Z

    invoke-static {v7, p1, v2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    sget-object p1, Lcom/android/launcher/receiver/PackageUpdateReceiver;->BACKUPRETORE_PROCESSNAME:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_188

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_188

    iget-boolean p1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$isAppRestoring:Z

    if-nez p1, :cond_188

    sget-object p1, Lcom/android/common/util/PackageCompatUtils;->Companion:Lcom/android/common/util/PackageCompatUtils$Companion;

    invoke-virtual {p1}, Lcom/android/common/util/PackageCompatUtils$Companion;->getMarketPackage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$packageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_189

    invoke-virtual {v1, v4}, Lcom/android/launcher/download/DownloadAppsManager;->setIsSupportDownloadProgress(Z)V

    iget-object p1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$launcherModel:Lcom/android/launcher3/LauncherModel;

    new-instance v0, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$userHandle:Landroid/os/UserHandle;

    new-array v3, v6, [Ljava/lang/String;

    iget-object v7, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$packageName:Ljava/lang/String;

    aput-object v7, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    goto :goto_189

    :cond_188
    move v5, v0

    :cond_189
    :goto_189
    iget-object p1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil;->access$handleDisableGlobalSearch(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1df

    :cond_191
    if-nez p1, :cond_1ce

    iget-object p1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$context:Landroid/content/Context;

    const-string/jumbo v0, "target"

    const-string/jumbo v3, "pkgname"

    invoke-static {p1, v0, v3}, Lcom/android/launcher/operators/GeneralCustomizer;->getReplaceIconFeatureInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1ce

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1ce

    iget-object v0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$packageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1ce

    const-string p1, "enable app packageName = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$packageName:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/android/common/util/w;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher/operators/GeneralCustomizer;->INSTANCE:Lcom/android/launcher/operators/GeneralCustomizer;

    iget-object v0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$launcherModel:Lcom/android/launcher3/LauncherModel;

    iget-object p0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/launcher/operators/GeneralCustomizer;->resetDatabaseAndReload(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_1ce
    sget-object p1, Lcom/android/common/util/PackageCompatUtils;->Companion:Lcom/android/common/util/PackageCompatUtils$Companion;

    invoke-virtual {p1}, Lcom/android/common/util/PackageCompatUtils$Companion;->getMarketPackage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$packageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1df

    invoke-virtual {v1, v6}, Lcom/android/launcher/download/DownloadAppsManager;->setIsSupportDownloadProgress(Z)V

    :cond_1df
    :goto_1df
    if-eqz v5, :cond_1f3

    iget-object p1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$launcherModel:Lcom/android/launcher3/LauncherModel;

    new-instance v0, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    iget-object v1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$userHandle:Landroid/os/UserHandle;

    new-array v2, v6, [Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->$packageName:Ljava/lang/String;

    aput-object p0, v2, v4

    invoke-direct {v0, v5, v1, v2}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    :cond_1f3
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
