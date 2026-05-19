.class public final Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/pullup/anim/PullUpLauncherManager$Companion;
    }
.end annotation


# static fields
.field private static final BROWSER_KEY:Ljava/lang/String; = "slide"

.field private static final BROWSER_PACKAGE:Ljava/lang/String; = "com.android.chrome"

.field private static final BROWSER_VALUE:Z = true

.field public static final Companion:Lcom/android/launcher3/pullup/anim/PullUpLauncherManager$Companion;

.field public static final DOMESTIC_OPEN_PACKAGE:Ljava/lang/String; = "com.heytap.browser"

.field public static final DOMESTIC_OPEN_PAGE:Ljava/lang/String; = "com.android.browser.BrowserActivity"

.field private static final FINISH_PAGE_DELAY:J = 0x1f4L

.field private static final GOOGLE_QUICK_SEARCHBOX_OPEN_PAGE:Ljava/lang/String; = "com.google.android.googlequicksearchbox.SearchActivity"

.field private static final GOOGLE_QUICK_SEARCHBOX_PACKAGE:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static final GOOGLE_SEARCH_ACTION:Ljava/lang/String; = "android.search.action.GLOBAL_SEARCH"

.field private static final RU_LAUNCHER_BROWSER:Ljava/lang/String; = "heytapbrowser://homepage/index?from=slide"

.field private static final TAG:Ljava/lang/String; = "PullUpLauncherManager"

.field private static final URL:Ljava/lang/String;


# instance fields
.field private mCommonPullUpView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

.field private mGhostViewController:Lcom/android/launcher3/pullup/anim/GhostViewController;

.field private mIntent:Landroid/content/Intent;

.field private mIsNewsPage:Z

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mLauncherOption:Landroid/os/Bundle;

.field private mPullUpTransition:Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->Companion:Lcom/android/launcher3/pullup/anim/PullUpLauncherManager$Companion;

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->getPullUpCseUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/pullup/view/CommonPullUpView;Lcom/android/launcher3/pullup/controller/CommonAnimController;)V
    .registers 5

    const-string/jumbo v0, "mLauncher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mCommonPullUpView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mAnimController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->mLauncher:Lcom/android/launcher/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->mCommonPullUpView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    new-instance p1, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;

    iget-object p2, p0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {p1, p2}, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object p1, p0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->mPullUpTransition:Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;

    new-instance p1, Lcom/android/launcher3/pullup/anim/GhostViewController;

    iget-object p2, p0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->mCommonPullUpView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    invoke-direct {p1, p2, p3}, Lcom/android/launcher3/pullup/anim/GhostViewController;-><init>(Lcom/android/launcher3/pullup/view/CommonPullUpView;Lcom/android/launcher3/pullup/controller/CommonAnimController;)V

    iput-object p1, p0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->mGhostViewController:Lcom/android/launcher3/pullup/anim/GhostViewController;

    invoke-direct {p0}, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->initIntent()V

    return-void
.end method

.method private final initIntent()V
    .registers 8

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    const/high16 v1, 0x200000

    const/high16 v2, 0x10000000

    const-string v3, "android.intent.action.VIEW"

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->getRegionName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "RU"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "heytapbrowser://homepage/index?from=slide"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, p0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->mIntent:Landroid/content/Intent;

    goto/16 :goto_9c

    :cond_27
    sget-object v0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->URL:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, p0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->mIntent:Landroid/content/Intent;

    const-string v0, "com.android.chrome"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_9c

    :cond_3a
    sget-object v0, Lcom/android/launcher3/pullup/PullUpInfo;->INSTANCE:Lcom/android/launcher3/pullup/PullUpInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/pullup/PullUpInfo;->isNewsPage()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->mIsNewsPage:Z

    invoke-virtual {v0}, Lcom/android/launcher3/pullup/PullUpInfo;->isNewsPage()Z

    move-result v0

    const/4 v4, 0x1

    const-string/jumbo v5, "slide"

    if-nez v0, :cond_83

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->mIntent:Landroid/content/Intent;

    const-string v3, "com.heytap.browser"

    const-string v6, "com.android.browser.BrowserActivity"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_5f

    goto :goto_64

    :cond_5f
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_64
    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_6d

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_6d
    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_74

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_74
    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_7b

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_7b
    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_9c

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_9c

    :cond_83
    const-string v0, "heytapbrowser://news.browser.com/home"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v6, p0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_9c

    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_9c
    :goto_9c
    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_a3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_a3
    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->mIntent:Landroid/content/Intent;

    if-eqz p0, :cond_aa

    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_aa
    return-void
.end method


# virtual methods
.method public final startLauncherPage()V
    .registers 4

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->mIsNewsPage:Z

    sget-object v1, Lcom/android/launcher3/pullup/PullUpInfo;->INSTANCE:Lcom/android/launcher3/pullup/PullUpInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/pullup/PullUpInfo;->isNewsPage()Z

    move-result v1

    if-eq v0, v1, :cond_11

    invoke-direct {p0}, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->initIntent()V

    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->mPullUpTransition:Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;

    if-eqz v0, :cond_4f

    iget-object v1, p0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->mLauncherOption:Landroid/os/Bundle;

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->mCommonPullUpView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    iget-object v2, p0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->mGhostViewController:Lcom/android/launcher3/pullup/anim/GhostViewController;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->getActivityLaunchOptionsAsBundle(Landroid/view/View;Lcom/android/launcher3/pullup/anim/GhostViewController;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->mLauncherOption:Landroid/os/Bundle;

    :cond_23
    invoke-virtual {v0}, Lcom/android/launcher3/pullup/anim/PullUpTransitionManager;->postTimeout()V

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->mLauncherOption:Landroid/os/Bundle;

    if-eqz v0, :cond_32

    iget-object v1, p0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_4f

    :cond_32
    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_3f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_11 .. :try_end_3f} :catch_40

    goto :goto_4f

    :catch_40
    const-string v0, "PullUpLauncherManager"

    const-string/jumbo v1, "start activity not found"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/PullUpLauncherManager;->mGhostViewController:Lcom/android/launcher3/pullup/anim/GhostViewController;

    if-eqz p0, :cond_4f

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/anim/GhostViewController;->onLaunchAnimationCancelled()V

    :cond_4f
    :goto_4f
    return-void
.end method
