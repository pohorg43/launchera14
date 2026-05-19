.class public final Lcom/android/common/util/ToolbarUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/common/util/ToolbarUtils;

.field private static final TAG:Ljava/lang/String; = "ToolbarUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/ToolbarUtils;

    invoke-direct {v0}, Lcom/android/common/util/ToolbarUtils;-><init>()V

    sput-object v0, Lcom/android/common/util/ToolbarUtils;->INSTANCE:Lcom/android/common/util/ToolbarUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final setAnimToolbarActivityWindowStyle(Landroid/app/Activity;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x400

    invoke-static {v0, v1}, Lcom/android/common/util/ToolbarUtils;->setSystemUiVisibility(Landroid/view/View;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x2000

    invoke-static {p0, v0}, Lcom/android/common/util/ToolbarUtils;->setSystemUiVisibility(Landroid/view/View;I)V

    return-void
.end method

.method public static final setStatusBarTransparentAndBlackFont(Landroid/app/Activity;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "mActivity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x400

    invoke-static {v1, v2}, Lcom/android/common/util/ToolbarUtils;->setSystemUiVisibility(Landroid/view/View;I)V

    const v2, 0x7f06052b

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    const v2, 0x7f06052a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    const v4, 0x7f0807d2

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 p0, -0x80000000

    invoke-virtual {v0, p0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    if-nez v2, :cond_54

    or-int/lit16 p0, p0, 0x2000

    goto :goto_56

    :cond_54
    or-int/lit16 p0, p0, 0x100

    :goto_56
    if-eqz v3, :cond_5b

    and-int/lit8 p0, p0, -0x11

    goto :goto_5d

    :cond_5b
    or-int/lit8 p0, p0, 0x10

    :goto_5d
    invoke-static {v1, p0}, Lcom/android/common/util/ToolbarUtils;->setSystemUiVisibility(Landroid/view/View;I)V

    return-void
.end method

.method public static final setStatusBarTransparentAndBlackFontOS12(Landroid/app/Activity;)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "mActivity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x400

    invoke-static {v1, v2}, Lcom/android/common/util/ToolbarUtils;->setSystemUiVisibility(Landroid/view/View;I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06026d

    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-static {}, Lcom/coui/appcompat/version/COUIVersionUtil;->a()I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v4

    const/4 v5, 0x6

    if-ge v2, v5, :cond_40

    if-nez v2, :cond_5a

    :cond_40
    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-static {p0}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_50

    and-int/lit16 p0, v4, -0x2001

    and-int/lit8 p0, p0, -0x11

    goto :goto_57

    :cond_50
    if-nez v3, :cond_55

    or-int/lit16 p0, v4, 0x2000

    goto :goto_57

    :cond_55
    or-int/lit16 p0, v4, 0x100

    :goto_57
    invoke-static {v1, p0}, Lcom/android/common/util/ToolbarUtils;->setSystemUiVisibility(Landroid/view/View;I)V

    :cond_5a
    return-void
.end method

.method public static final setSystemUiVisibility(Landroid/view/View;I)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_30

    const-string/jumbo v0, "setSystemUiVisibility: View.getSystemUiVisibility() = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". flag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". call = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    const-string v2, "ToolbarUtils"

    invoke-static {v1, v0, v2}, Lcom/android/common/util/k;->a(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_30
    if-nez p0, :cond_33

    goto :goto_36

    :cond_33
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_36
    return-void
.end method

.method public static final setupToolBar(Landroidx/appcompat/app/AppCompatActivity;Lcom/google/android/material/appbar/AppBarLayout;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appBarLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0a063f

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "appBarLayout.findViewById(R.id.toolbar)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {v0, p0}, Lcom/android/common/config/ScreenInfo$Companion;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method private final setupToolBar(Landroidx/appcompat/app/AppCompatActivity;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/ViewGroup;)V
    .registers 6

    instance-of p0, p3, Landroid/widget/ListView;

    if-nez p0, :cond_24

    instance-of p0, p3, Landroid/widget/GridView;

    if-nez p0, :cond_24

    instance-of p0, p3, Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_24

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setupToolbarForActivity: Not supported for view: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ToolbarUtils"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_24
    const p0, 0x7f0a063f

    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string v0, "appBarLayout.findViewById(R.id.toolbar)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/coui/appcompat/toolbar/COUIToolbar;

    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {v0, p1}, Lcom/android/common/config/ScreenInfo$Companion;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->setNestedScrollingEnabled(Z)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0709cd

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-virtual {p3, v1, p0, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method

.method public static final setupToolbarForActivity(Landroidx/appcompat/app/AppCompatActivity;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/ViewGroup;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appBarLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blurView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/ToolbarUtils;->INSTANCE:Lcom/android/common/util/ToolbarUtils;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/common/util/ToolbarUtils;->setupToolBar(Landroidx/appcompat/app/AppCompatActivity;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static final setupToolbarForFragment(Landroidx/appcompat/app/AppCompatActivity;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/ViewGroup;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appBarLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blurView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/ToolbarUtils;->INSTANCE:Lcom/android/common/util/ToolbarUtils;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/common/util/ToolbarUtils;->setupToolBar(Landroidx/appcompat/app/AppCompatActivity;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/ViewGroup;)V

    return-void
.end method
