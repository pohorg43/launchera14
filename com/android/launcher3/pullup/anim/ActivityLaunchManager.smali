.class public Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final BROWSER_KEY:Ljava/lang/String; = "slide"

.field private static final BROWSER_VALUE:Z = true

.field public static final DOMESTIC_OPEN_PACKAGE:Ljava/lang/String; = "com.heytap.browser"

.field public static final DOMESTIC_OPEN_PAGE:Ljava/lang/String; = "com.android.browser.BrowserActivity"

.field private static final GOOGLE_QUICK_SEARCHBOX_OPEN_PAGE:Ljava/lang/String; = "com.google.android.googlequicksearchbox.SearchActivity"

.field private static final GOOGLE_QUICK_SEARCHBOX_PACKAGE:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static final GOOGLE_SEARCH_ACTION:Ljava/lang/String; = "android.search.action.GLOBAL_SEARCH"

.field private static final TAG:Ljava/lang/String; = "ActivityLaunchManager"


# instance fields
.field private final mActivityLaunchAnimator:Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator;

.field private mIntent:Landroid/content/Intent;

.field private mIsNewsPage:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mLauncherAnimatorController:Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/pullup/view/CommonPullUpView;Lcom/android/launcher3/pullup/controller/CommonAnimController;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;->mIsNewsPage:Z

    iput-object p1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance p1, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator;

    invoke-direct {p1}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;->mActivityLaunchAnimator:Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator;

    new-instance p1, Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator;

    invoke-direct {p1, p2, p3}, Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator;-><init>(Lcom/android/launcher3/pullup/view/CommonPullUpView;Lcom/android/launcher3/pullup/controller/CommonAnimController;)V

    iput-object p1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;->mLauncherAnimatorController:Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;

    invoke-direct {p0}, Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;->initIntent()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;[ILandroid/view/RemoteAnimationAdapter;)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;->lambda$startLauncherActivity$0([ILandroid/view/RemoteAnimationAdapter;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private getDefaultActivityOptions(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;
    .registers 2

    if-eqz p1, :cond_7

    invoke-static {p1}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object p0

    goto :goto_b

    :cond_7
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p0

    :goto_b
    return-object p0
.end method

.method private initIntent()V
    .registers 7

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    const/high16 v1, 0x10000000

    if-eqz v0, :cond_1a

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;->mIntent:Landroid/content/Intent;

    const-string v2, "com.google.android.googlequicksearchbox"

    const-string v3, "com.google.android.googlequicksearchbox.SearchActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_73

    :cond_1a
    sget-object v0, Lcom/android/launcher3/pullup/PullUpInfo;->INSTANCE:Lcom/android/launcher3/pullup/PullUpInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/pullup/PullUpInfo;->isNewsPage()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;->mIsNewsPage:Z

    invoke-virtual {v0}, Lcom/android/launcher3/pullup/PullUpInfo;->isNewsPage()Z

    move-result v0

    const/4 v2, 0x1

    const-string/jumbo v3, "slide"

    if-nez v0, :cond_5a

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;->mIntent:Landroid/content/Intent;

    const-string v4, "com.heytap.browser"

    const-string v5, "com.android.browser.BrowserActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;->mIntent:Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;->mIntent:Landroid/content/Intent;

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;->mIntent:Landroid/content/Intent;

    const/high16 v0, 0x200000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_73

    :cond_5a
    const-string v0, "heytapbrowser://news.browser.com/home"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;->mIntent:Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :goto_73
    return-void
.end method

.method private synthetic lambda$startLauncherActivity$0([ILandroid/view/RemoteAnimationAdapter;)Ljava/lang/Integer;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;->getDefaultActivityOptions(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_9
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Landroid/app/Activity;->getBasePackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Landroid/app/Activity;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;->mIntent:Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x10000000

    const/4 v13, 0x0

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v14

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    invoke-interface/range {v3 .. v15}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    aput v0, p1, v2
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_3c} :catch_3d

    goto :goto_45

    :catch_3d
    move-exception v0

    const-string v1, "ActivityLaunchManager"

    const-string v3, "Unable to start activity"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_45
    aget v0, p1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public startLauncherActivity()V
    .registers 7

    iget-boolean v0, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;->mIsNewsPage:Z

    sget-object v1, Lcom/android/launcher3/pullup/PullUpInfo;->INSTANCE:Lcom/android/launcher3/pullup/PullUpInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/pullup/PullUpInfo;->isNewsPage()Z

    move-result v1

    if-eq v0, v1, :cond_d

    invoke-direct {p0}, Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;->initIntent()V

    :cond_d
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, -0x60

    aput v3, v1, v2

    iget-object v2, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;->mActivityLaunchAnimator:Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator;

    iget-object v3, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;->mLauncherAnimatorController:Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;

    iget-object v4, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/launcher3/pullup/anim/b;

    invoke-direct {v5, p0, v1}, Lcom/android/launcher3/pullup/anim/b;-><init>(Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;[I)V

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator;->startIntentWithAnimation(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;ZLjava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public updateJumpIntent(Landroid/content/Intent;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;->mIntent:Landroid/content/Intent;

    const-string/jumbo p0, "slide"

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method
