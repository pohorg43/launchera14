.class public final Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf4/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->loadEntityImage(Lio/branch/search/ui/ImageLoadingStrategy;Landroid/widget/ImageView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBranchUIManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BranchUIManagerImpl.kt\ncom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1503:1\n766#2:1504\n857#2,2:1505\n*S KotlinDebug\n*F\n+ 1 BranchUIManagerImpl.kt\ncom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1\n*L\n924#1:1504\n924#1:1505,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $iconIV:Landroid/widget/ImageView;

.field public final synthetic $position:I

.field public final synthetic this$0:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/widget/ImageView;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1;->this$0:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    iput-object p2, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1;->$iconIV:Landroid/widget/ImageView;

    iput p3, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1;->$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppIcon(Lio/branch/search/ui/ImageLoadingStrategy$AppIcon;)V
    .registers 12

    const-string v0, "appIconImage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAppIcon "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BranchUIManagerImpl"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->rusSupportBubble()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d2

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1;->this$0:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    invoke-static {v0}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->access$getMContext$p(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    const-string v2, "mContext"

    if-nez v0, :cond_31

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_31
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v0

    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher3.allapps.OplusAlphabeticalAppsList<@[FlexibleNullability] com.android.launcher3.Launcher?>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d2

    iget-object v3, p1, Lio/branch/search/ui/ImageLoadingStrategy$AppIcon;->a:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_52
    :goto_52
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_8a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/android/launcher3/model/data/AppInfo;

    iget v9, v8, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v9, :cond_83

    iget-object v9, v8, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_83

    iget-object v8, v8, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    if-eqz v8, :cond_7f

    iget-object v9, p1, Lio/branch/search/ui/ImageLoadingStrategy$AppIcon;->b:Landroid/os/UserHandle;

    invoke-virtual {v8, v9}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-ne v8, v6, :cond_7f

    move v8, v6

    goto :goto_80

    :cond_7f
    move v8, v7

    :goto_80
    if-eqz v8, :cond_83

    goto :goto_84

    :cond_83
    move v6, v7

    :goto_84
    if-eqz v6, :cond_52

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_52

    :cond_8a
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v6

    if-eqz v0, :cond_d2

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v6, :cond_b4

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchPkgHack;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchPkgHack;

    iget-object v5, p1, Lio/branch/search/ui/ImageLoadingStrategy$AppIcon;->b:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1;->this$0:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    invoke-static {v6}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->access$getMLauncherApp$p(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;)Landroid/content/pm/LauncherApps;

    move-result-object v6

    if-nez v6, :cond_b0

    const-string/jumbo v6, "mLauncherApp"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v1

    :cond_b0
    invoke-virtual {v0, v3, v5, v6, v4}, Lcom/android/launcher3/allapps/branch/BranchPkgHack;->filterHackPkg(Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/pm/LauncherApps;Ljava/util/List;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v0

    :cond_b4
    if-eqz v0, :cond_d2

    iget-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1;->this$0:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    invoke-static {p1}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->access$getMContext$p(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    if-nez p1, :cond_c2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_c3

    :cond_c2
    move-object v1, p1

    :goto_c3
    invoke-virtual {v0, v1, v7}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p1

    const-string v0, "filterHackPkg.newIcon(mContext, 0)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1;->$iconIV:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_d2
    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1;->$iconIV:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lio/branch/search/R$id;->branch_url_id:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    sget-object v0, Lio/branch/search/h5;->Companion:Lio/branch/search/h5$a;

    iget-object v1, p1, Lio/branch/search/ui/ImageLoadingStrategy$AppIcon;->a:Ljava/lang/String;

    iget-object p1, p1, Lio/branch/search/ui/ImageLoadingStrategy$AppIcon;->b:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "v.context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1, v2}, Lio/branch/search/h5$a;->a(Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onFromCache(Lio/branch/search/ui/ImageLoadingStrategy$FromCache;)V
    .registers 6

    const-string v0, "fromCache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onFromCache "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BranchUIManagerImpl"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lio/branch/search/ui/ImageLoadingStrategy$FromCache;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_47

    sget-object v1, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    iget-object v3, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1;->this$0:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    invoke-static {v3}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->access$getMContext$p(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    if-nez v3, :cond_3a

    const-string v3, "mContext"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_3a
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/android/common/util/BitmapUtils;->convertToThemeStyle(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_48

    :cond_47
    move-object v0, v2

    :goto_48
    if-eqz v0, :cond_50

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1;->$iconIV:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_66

    :cond_50
    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1;->$iconIV:Landroid/widget/ImageView;

    const-string/jumbo v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lio/branch/search/R$id;->branch_url_id:I

    invoke-virtual {p0, v0, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    invoke-static {}, Lio/branch/search/y0;->b()Lio/branch/search/y0;

    move-result-object v0

    iget-object p1, p1, Lio/branch/search/ui/ImageLoadingStrategy$FromCache;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Lio/branch/search/y0;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_66
    return-void
.end method

.method public onShortcut(Lio/branch/search/ui/ImageLoadingStrategy$Shortcut;)V
    .registers 12

    const-string v0, "mContext"

    const-string/jumbo v1, "shortcutImage"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onShortcut "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BranchUIManagerImpl"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_20
    iget-object v3, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1;->this$0:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    invoke-static {v3}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->access$getMContext$p(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    if-nez v3, :cond_2c

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_2c
    const-class v4, Landroid/content/pm/LauncherApps;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherApps;

    new-instance v4, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v4}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    iget-object v5, p1, Lio/branch/search/ui/ImageLoadingStrategy$Shortcut;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    iget-object v5, p1, Lio/branch/search/ui/ImageLoadingStrategy$Shortcut;->c:Ljava/lang/String;

    invoke-static {v5}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    iget-object v5, p1, Lio/branch/search/ui/ImageLoadingStrategy$Shortcut;->b:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_6e

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_6e

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/LauncherApps;->getShortcutBadgedIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_67} :catch_68

    goto :goto_6f

    :catch_68
    move-exception v3

    const-string v4, "e "

    invoke-static {v4, v3, v2}, Lcom/android/common/c;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_6e
    move-object v3, v1

    :goto_6f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drawable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_b4

    iget-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1;->this$0:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    invoke-static {p1}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->access$getMContext$p(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    if-nez p1, :cond_91

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_91
    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    iget-object v2, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1;->$iconIV:Landroid/widget/ImageView;

    sget-object v4, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1;->this$0:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->access$getMContext$p(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    if-nez p0, :cond_a7

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_a8

    :cond_a7
    move-object v1, p0

    :goto_a8
    invoke-static {v3, p1, p1}, Lcom/android/launcher3/allapps/branch/BranchUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v4, v1, p0}, Lcom/android/common/util/BitmapUtils;->convertToThemeStyle(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_e1

    :cond_b4
    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1;->$iconIV:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lio/branch/search/R$id;->branch_url_id:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    sget-object v2, Lio/branch/search/h5;->Companion:Lio/branch/search/h5$a;

    iget-object v3, p1, Lio/branch/search/ui/ImageLoadingStrategy$Shortcut;->a:Ljava/lang/String;

    iget-object v4, p1, Lio/branch/search/ui/ImageLoadingStrategy$Shortcut;->b:Landroid/os/UserHandle;

    iget-object v5, p1, Lio/branch/search/ui/ImageLoadingStrategy$Shortcut;->c:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo p1, "v.context"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lio/branch/search/h5$a;->a(Lio/branch/search/h5$a;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/Context;Lio/branch/search/IBranchShortcutHandler;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_e1
    return-void
.end method

.method public onUrl(Lio/branch/search/ui/ImageLoadingStrategy$Url;)V
    .registers 5

    const-string/jumbo v0, "urlImage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1;->$iconIV:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v0

    iget-object p1, p1, Lio/branch/search/ui/ImageLoadingStrategy$Url;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bumptech/glide/h;->b()Lcom/bumptech/glide/g;

    move-result-object v0

    iput-object p1, v0, Lcom/bumptech/glide/g;->F:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/bumptech/glide/g;->N:Z

    new-instance v1, Lcom/android/launcher3/allapps/branch/BranchTransformation;

    iget-object v2, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1;->this$0:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    invoke-static {v2}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->access$getMContext$p(Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    if-nez v2, :cond_2b

    const-string v2, "mContext"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_2b
    invoke-direct {v1, v2}, Lcom/android/launcher3/allapps/branch/BranchTransformation;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, p1}, Lp1/a;->r(Lw0/g;Z)Lp1/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    new-instance v0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1$onUrl$1;

    iget-object v1, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1;->$iconIV:Landroid/widget/ImageView;

    iget p0, p0, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1;->$position:I

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$loadEntityImage$1$onUrl$1;-><init>(Landroid/widget/ImageView;I)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->v(Lq1/h;)Lq1/h;

    return-void
.end method
