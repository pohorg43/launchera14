.class public final Lcom/android/launcher3/pullup/PullUpInfo;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DOMESTIC_BROWSER_PACKAGE:Ljava/lang/String; = "com.heytap.browser"

.field public static final DOMESTIC_NEWS_PAGE:Ljava/lang/String; = "com.heytap.browser.app.news.content.NewsHomeActivity"

.field public static final DOMESTIC_NEWS_PAGE_SCHEME:Ljava/lang/String; = "heytapbrowser://news.browser.com/home"

.field public static final INSTANCE:Lcom/android/launcher3/pullup/PullUpInfo;

.field public static final TAG:Ljava/lang/String; = "PullUpInfo"

.field private static isNewsPage:Z

.field private static realScreenHeight:I

.field private static realScreenWidth:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/pullup/PullUpInfo;

    invoke-direct {v0}, Lcom/android/launcher3/pullup/PullUpInfo;-><init>()V

    sput-object v0, Lcom/android/launcher3/pullup/PullUpInfo;->INSTANCE:Lcom/android/launcher3/pullup/PullUpInfo;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkNewsPageIsExit(Landroid/content/Context;)V
    .registers 4

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/content/Intent;

    const-string v0, "heytapbrowser://news.browser.com/home"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p0, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    sput-boolean p0, Lcom/android/launcher3/pullup/PullUpInfo;->isNewsPage:Z

    const-string p0, "isNewsPage:"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-boolean p1, Lcom/android/launcher3/pullup/PullUpInfo;->isNewsPage:Z

    const-string v0, "PullUpInfo"

    invoke-static {p0, p1, v0}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public final getRealScreenHeight()I
    .registers 1

    sget p0, Lcom/android/launcher3/pullup/PullUpInfo;->realScreenHeight:I

    return p0
.end method

.method public final getRealScreenWidth()I
    .registers 1

    sget p0, Lcom/android/launcher3/pullup/PullUpInfo;->realScreenWidth:I

    return p0
.end method

.method public final getScreenInfo(Lcom/android/launcher/Launcher;)V
    .registers 3

    const-string p0, "launcher"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget p1, p0, Landroid/graphics/Point;->y:I

    iget p0, p0, Landroid/graphics/Point;->x:I

    if-ge p1, p0, :cond_1b

    move v0, p0

    goto :goto_1c

    :cond_1b
    move v0, p1

    :goto_1c
    sput v0, Lcom/android/launcher3/pullup/PullUpInfo;->realScreenHeight:I

    if-le p1, p0, :cond_21

    move p1, p0

    :cond_21
    sput p1, Lcom/android/launcher3/pullup/PullUpInfo;->realScreenWidth:I

    return-void
.end method

.method public final isNewsPage()Z
    .registers 1

    sget-boolean p0, Lcom/android/launcher3/pullup/PullUpInfo;->isNewsPage:Z

    return p0
.end method

.method public final setNewsPage(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/launcher3/pullup/PullUpInfo;->isNewsPage:Z

    return-void
.end method

.method public final setRealScreenHeight(I)V
    .registers 2

    sput p1, Lcom/android/launcher3/pullup/PullUpInfo;->realScreenHeight:I

    return-void
.end method

.method public final setRealScreenWidth(I)V
    .registers 2

    sput p1, Lcom/android/launcher3/pullup/PullUpInfo;->realScreenWidth:I

    return-void
.end method
